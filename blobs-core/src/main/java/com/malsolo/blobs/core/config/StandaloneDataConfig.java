package com.malsolo.blobs.core.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ImportResource("classpath:/META-INF/spring/applicationContext*.xml")
//@Profile("local")
public class StandaloneDataConfig {

}
