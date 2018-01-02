package com.zomu.t.herbu.frontend.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * SpringBootアプリケーションクラス.
 */
@SpringBootApplication
public class FrontendApiApplication {

    /**
     * メイン処理.
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication application =
                new SpringApplication(FrontendApiApplication.class);
        application.run(args);
    }
}
