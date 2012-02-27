package com.malsolo.blobs.core.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Controller;

@Configuration
@ImportResource("classpath:/META-INF/spring/applicationContext*.xml")
@ComponentScan(basePackages={"com.malsolo.blobs.my","com.malsolo.blobs.pg"}, excludeFilters={@Filter(Controller.class)})
@Profile("server")
public class JndiDataConfig {

}
