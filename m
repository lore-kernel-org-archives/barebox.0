Delivery-date: Mon, 12 Sep 2022 10:47:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf67-00226M-O4
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 10:47:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf66-0005vZ-2l
	for lore@pengutronix.de; Mon, 12 Sep 2022 10:47:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IpNbSfHwf0iekNdKGjhlOVdQIgQK1+IKvs6xuncWhDo=; b=F+oYHQm8rVkBLE
	FNZaPQR6U9Mngl+U4myrDa3dLAwvXU4La8SbIo/gjwx7X7iK/w8kwyG0t3AXHkqHUno0nXwRvJa4m
	kTTUjBztQtLcIfiNtOg61G7nvll4aJfOQJaZAP2qkGVwV0hSJD8MfZlqvn8gN0ApLdsxP5p5z7MrK
	3OZ3X/0OQ3XagnGTrJT9lW93ErXPJ9iFuKIcqUA0aJyWMGHHYXCknhxicZWXMIpDqjyl6XxNdzQrG
	4xZlJuJHIEqlIXI6xDjRhUywpEmYr9m+dk5b5iOAB/PIGeFnNfM/mWy8nFIBFwGSwrt1EYIIWrsb0
	saJpKnKB29P0dmB3fGwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf4N-007v76-OF; Mon, 12 Sep 2022 08:45:31 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf3V-007ugK-7R
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 08:44:45 +0000
Received: by mail-lf1-x12f.google.com with SMTP id u18so13648107lfo.8
        for <barebox@lists.infradead.org>; Mon, 12 Sep 2022 01:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=IpNbSfHwf0iekNdKGjhlOVdQIgQK1+IKvs6xuncWhDo=;
        b=P/OyiCc41VKM2T+i1hc/VWo2lrVyLwPclCRnbpP+XlXtlZoA5bfWMEDi7/BD9cvmgq
         zalTwV79Rd72bSwUR6RSUnh6djo3t4CMnYXX4CAJU+xJMkYn4j3PmDvwNdY09NoV+raT
         CMNJDVilkaMzJQkGqG5NE5dWTH5OQPigqr7QY27Ucyh5HHoWDqNJnkkzoHNIvl9SWXWx
         l8vZCpSQNmjNqm2OOw5pG7z1bgZf+S+1IPPPh9+ZsWPnWXdqflijrblljM+ARp5hXAH1
         5x2lq0JLkoFK8aHp9xToyygjAAm7bipgRJVZbp0XWWrdyt+kuOsD3daV99J3HfGQJtN+
         elEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=IpNbSfHwf0iekNdKGjhlOVdQIgQK1+IKvs6xuncWhDo=;
        b=bCdgjUSFMeOUnCvxhB5wpse8p+e3qH2PGTwoMrWZjg9eP6lmZ0IcjqQmG/bsci33zh
         g1sGTVOjvxptLDnczx5b0g4gPbzOdFgQRhRTvf3stmYCroMY8z6Y+hQjrddrMU0NxciZ
         1KalHzC864hEPVcG3ZT9zqN8JzJyT4Nl5BWO1uLritD/RCr3Ym0TGTFhlzDPMOYN40kg
         jRFwUt0VwArR6ZOxqg8KP3agD6WCoQvcNH53Ksbq0FZi63h8TV5FgX9Cdhs+iL0GeaqO
         L21xvd4ZP41BKfnrfUQDr6u6XRZS4dOJgkMDDCB/4nmH56yOFTULCGwmHHR0FWC8u8k7
         UTDg==
X-Gm-Message-State: ACgBeo21K6+mv8holaE10iAIt8WPIUES0F9bcykwigfEpWhbrOcUBMHx
	SUWXT1I0+/nxnBv+cdOJYxRYWUWIT14=
X-Google-Smtp-Source: AA6agR62R2N6lpFYMaUum2bfz43Zz1Lieaa7marORKT56gqj0p5qDC2KseX8HK5yVsl96cyjnDcsLA==
X-Received: by 2002:a05:6512:2207:b0:496:db23:c2a3 with SMTP id h7-20020a056512220700b00496db23c2a3mr7946115lfu.447.1662972272894;
        Mon, 12 Sep 2022 01:44:32 -0700 (PDT)
Received: from localhost.localdomain (109-252-10-171.nat.spd-mgts.ru. [109.252.10.171])
        by smtp.gmail.com with ESMTPSA id n17-20020a05651203f100b0049a4862966fsm555472lfq.146.2022.09.12.01.44.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 01:44:32 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 12 Sep 2022 11:44:23 +0300
Message-Id: <20220912084430.84451-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_014441_054202_0EF01CE1 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] Documentation misc fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Antony Pavlov (7):
  Documentation: OKUD Max9331: fix sphinx warning
  Documentation: Altera SOCFPGA FPGA Manager: fix sphinx error
  Documentation: Altera FPGAs in passive-serial mode: fix sphinx issues
  Documentation: barebox DT aliases: fix sphinx issues
  Documentation: barebox environment: fix list rendering
  Documentation: Common leds properties: fix 'panic-indicator' list
    entry rendering
  Documentation: Voltage/Current Regulators: fix sphinx error

 Documentation/boards/mips/max9331.rst                       | 2 +-
 Documentation/devicetree/bindings/barebox/aliases.rst       | 3 ++-
 .../devicetree/bindings/barebox/barebox,environment.rst     | 1 +
 .../devicetree/bindings/firmware/altr,passive-serial.rst    | 1 +
 .../devicetree/bindings/firmware/altr,socfpga-fpga-mgr.rst  | 6 ++++--
 Documentation/devicetree/bindings/leds/common.rst           | 2 +-
 Documentation/devicetree/bindings/regulator/regulator.rst   | 1 +
 7 files changed, 11 insertions(+), 5 deletions(-)

-- 
2.37.2



