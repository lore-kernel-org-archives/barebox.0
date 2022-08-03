Delivery-date: Wed, 03 Aug 2022 11:33:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJAkp-009skz-Mj
	for lore@lore.pengutronix.de; Wed, 03 Aug 2022 11:33:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJAkq-0001xS-FK
	for lore@pengutronix.de; Wed, 03 Aug 2022 11:33:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Vz7vh9c5dGNXPko4uNP3tdqMPGWN6kZujFYtybI3ovE=; b=djs5x/OM3cv1DS33eAUOX1JCnJ
	XsTSX9EabBY3nVrn7x7s1RYppXHEKi+mILW1oP9idwLPwrY7R4JmAJyWhEMUF/7p8jQh9FdTCHLa7
	6sCCNi2mNwIUJVb1kVywqGU2IYMJYT8z86lt0srV2Rrp8GEXMZS17NT5ZxAXO6wtW0cCeNebcbMTR
	QowcObC1SriDmdsZR5AeQm/ab+ANRAOoADavLUF8688k6lEjZkshQxOt6XgJ2M3F1QAjiSbK43y6T
	3OhZEHQwI6vafZza2WA8L67lQw2uvMxUDjcOwx8qhEvR+Hn+D/jHkvHSTjEsF5swhOlaWFhewjtei
	Jr9PKMNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJAiq-004LG7-N4; Wed, 03 Aug 2022 09:31:24 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJAik-004LDe-LI
	for barebox@lists.infradead.org; Wed, 03 Aug 2022 09:31:20 +0000
Received: by mail-ej1-x631.google.com with SMTP id ss3so30341762ejc.11
        for <barebox@lists.infradead.org>; Wed, 03 Aug 2022 02:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=message-id:date:subject:cc:to:from:from:to:cc;
        bh=Vz7vh9c5dGNXPko4uNP3tdqMPGWN6kZujFYtybI3ovE=;
        b=mBjIxzxtDyAROdUKvipfsObNOATjStuzCWaAeulbPrr8eFbMG2LpNtHwxLuxsh58Nt
         P4XJFP5xsmsUss/XKkDKaEN72gCuYaD8Qeq5YAcOpQJ1c0ug0f+dJ0P4meVWChj9KdpD
         7cfiLcC+lZ0J+Xz++l3zt9p1B8tF+PeV1f8XGggyYoHiVa+PVOa38ZMQrZZO3krLOo+P
         ybr/aKqe5N9+k9788E74dkdVPPrHjxk9cmPUyBX2KzItyMjuqI4iCCVTBPj+OLFn/t0W
         +CkxQJtJ4wHIKfRf6SgPKcpHa9g562i0YjFAzgoajLBL3XLaldN+i/kdFEc6aPda17fB
         Jjkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=Vz7vh9c5dGNXPko4uNP3tdqMPGWN6kZujFYtybI3ovE=;
        b=bHje2o6k4zYak0cgzoDLeXDlXGxndGgkha1sXL6TOmdMBU7leLdoaETBS4PxhpbKWa
         LPql6+IEi5S+JedlW/laaM9S+KXVj0tVKG03oX2Mn43ngSGfPja8F+9rD01iiMFLth1y
         VX7OL7vInt57XsIU9ulXgU/ZsucUrJVOkFQxeMUnkp2SlRk4i3iVvB/Y0/I27xiQILna
         BwVTC5yY7FN42I96yPcTI/nshdlcyMwK2pLIu37eZtwt1dePqBNYkeTWHxCFD24IDDJM
         vx/Hc8QLcFLfcLD826So0wMQBLY1D6znk9Kr51UyvRavWpCRTFhJdzkSVGFO6F/RHJP0
         L/Wg==
X-Gm-Message-State: ACgBeo2vrX7payezshVTafSs/1Asv+SPcTHKi6r0obVXEuqF78NY/qwh
	d8LnEa09qIhS1rHqSDOsmzr41ZNVt6w=
X-Google-Smtp-Source: AA6agR5x8uoGCxA7QBl695yCH0ZI9D9DQP/vXTNYUpQIOCUe/so5ZX3hrv8iVtBMpnzgFejq5cq4oA==
X-Received: by 2002:a17:907:28c9:b0:730:ac50:e34d with SMTP id en9-20020a17090728c900b00730ac50e34dmr2641669ejc.265.1659519075023;
        Wed, 03 Aug 2022 02:31:15 -0700 (PDT)
Received: from development1.visionsystems.de (mail.visionsystems.de. [213.209.99.202])
        by smtp.gmail.com with ESMTPSA id yk9-20020a17090770c900b007307c4c8a5dsm3451610ejb.58.2022.08.03.02.31.14
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Aug 2022 02:31:14 -0700 (PDT)
From: yegorslists@googlemail.com
To: barebox@lists.infradead.org
Date: Wed,  3 Aug 2022 11:31:09 +0200
Message-Id: <20220803093110.20915-1-yegorslists@googlemail.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220803_023118_745270_06E6CAD4 
X-CRM114-Status: GOOD (  10.80  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: baltos: use GPIO names for DIP switches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Yegor Yefremov <yegorslists@googlemail.com>

Switch to gpio_find_by_name() method to get the required input lines.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/arm/boards/vscom-baltos/board.c   |  25 ++++--
 arch/arm/dts/am335x-baltos-minimal.dts | 120 +++++++++++++++++++++++++
 2 files changed, 137 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/vscom-baltos/board.c b/arch/arm/boards/vscom-baltos/board.c
index 9229df09d4..30553d1838 100644
--- a/arch/arm/boards/vscom-baltos/board.c
+++ b/arch/arm/boards/vscom-baltos/board.c
@@ -49,6 +49,7 @@ static uint8_t get_dip_switch(uint16_t id, uint32_t rev)
 {
 	uint16_t maj, min;
 	uint8_t dip = 0;
+	int inputs[4];
 
 	maj = rev >> 16;
 	min = rev & 0xffff;
@@ -59,10 +60,14 @@ static uint8_t get_dip_switch(uint16_t id, uint32_t rev)
 	switch(id) {
 		case 214:
 		case 215:
-			dip = !gpio_get_value(44);
-			dip += !gpio_get_value(45) << 1;
-			dip += !gpio_get_value(46) << 2;
-			dip += !gpio_get_value(47) << 3;
+			inputs[0] = gpio_find_by_name("SW2_0_alt");
+			inputs[1] = gpio_find_by_name("SW2_1_alt");
+			inputs[2] = gpio_find_by_name("SW2_2_alt");
+			inputs[3] = gpio_find_by_name("SW2_3_alt");
+			dip = !gpio_get_value(inputs[0]);
+			dip += !gpio_get_value(inputs[1]) << 1;
+			dip += !gpio_get_value(inputs[2]) << 2;
+			dip += !gpio_get_value(inputs[3]) << 3;
 			break;
 		case 212:
 		case 221:
@@ -72,10 +77,14 @@ static uint8_t get_dip_switch(uint16_t id, uint32_t rev)
 		case 226:
 		case 227:
 		case 230:
-			dip = !gpio_get_value(82);
-			dip += !gpio_get_value(83) << 1;
-			dip += !gpio_get_value(105) << 2;
-			dip += !gpio_get_value(106) << 3;
+			inputs[0] = gpio_find_by_name("SW2_0");
+			inputs[1] = gpio_find_by_name("SW2_1");
+			inputs[2] = gpio_find_by_name("SW2_2");
+			inputs[3] = gpio_find_by_name("SW2_3");
+			dip = !gpio_get_value(inputs[0]);
+			dip += !gpio_get_value(inputs[1]) << 1;
+			dip += !gpio_get_value(inputs[2]) << 2;
+			dip += !gpio_get_value(inputs[3]) << 3;
 			break;
 	}
 
diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
index 1544e2cc29..e9d57696d1 100644
--- a/arch/arm/dts/am335x-baltos-minimal.dts
+++ b/arch/arm/dts/am335x-baltos-minimal.dts
@@ -45,6 +45,18 @@
 };
 
 &am33xx_pinmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&dip_switch_pins>;
+
+	dip_switch_pins: pinmux_dip_switch_pins {
+		pinctrl-single,pins = <
+			AM33XX_PADCONF(AM335X_PIN_GPMC_AD12, PIN_INPUT_PULLUP, MUX_MODE7)
+			AM33XX_PADCONF(AM335X_PIN_GPMC_AD13, PIN_INPUT_PULLUP, MUX_MODE7)
+			AM33XX_PADCONF(AM335X_PIN_GPMC_AD14, PIN_INPUT_PULLUP, MUX_MODE7)
+			AM33XX_PADCONF(AM335X_PIN_GPMC_AD15, PIN_INPUT_PULLUP, MUX_MODE7)
+		>;
+	};
+
 	mmc1_pins: pinmux_mmc1_pins {
 		pinctrl-single,pins = <
 			0xf0 (INPUT_EN | PULL_UP) MUX_MODE0	/* mmc0_dat3.mmc0_dat3 */
@@ -449,3 +461,111 @@
 &gpio0 {
 	ti,no-reset-on-init;
 };
+
+&gpio1 {
+	gpio-line-names =
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"SW2_0_alt",
+		"SW2_1_alt",
+		"SW2_2_alt",
+		"SW2_3_alt",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC";
+};
+
+&gpio2 {
+	gpio-line-names =
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"SW2_0",
+		"SW2_1",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC";
+};
+
+&gpio3 {
+	gpio-line-names =
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"SW2_2",
+		"SW2_3",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"NC";
+};
-- 
2.17.0



