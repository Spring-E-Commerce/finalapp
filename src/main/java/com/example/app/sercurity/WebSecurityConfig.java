package com.example.app.sercurity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    private static final String USER_ROLE = "USER";
    private static final String ADMIN_ROLE = "ADMIN" ;

    @Autowired
    private DataSource dataSource ;

    @Autowired
    AuthenticationSuccessHandlerCustom authenticationSuccessHandlerCustom ;

    @Autowired
    public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception{
        auth.jdbcAuthentication()
                .passwordEncoder(NoOpPasswordEncoder.getInstance())
                .dataSource(dataSource)
                .usersByUsernameQuery("SELECT username , password, enable From user Where username= ?")
                .authoritiesByUsernameQuery("SELECT u.username , r.name FROM user_role ur " +
                        " INNER JOIN user u ON u.id = ur.user_id" +
                        " INNER JOIN role r ON r.id = ur.role_id" +
                        " WHERE u.username= ?");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/login").authenticated()
                .antMatchers("/admin").hasAuthority(ADMIN_ROLE)
                .antMatchers("/customer").hasAuthority(USER_ROLE)
                .and()
                .formLogin()
                .loginProcessingUrl("/doLogin")
                .loginPage("/login")
                .usernameParameter("username")
                .passwordParameter("password")
                .permitAll()
                .successHandler(authenticationSuccessHandlerCustom)
                .and()
                .logout().logoutUrl("/logout").logoutSuccessUrl("/login?message=logout");
    }
}
