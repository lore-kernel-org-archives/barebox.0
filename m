Delivery-date: Thu, 02 Mar 2023 11:41:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNR-006TPj-1R
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 11:41:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNQ-0003E4-LJ
	for lore@pengutronix.de; Thu, 02 Mar 2023 11:41:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aXadRWNEifBIDdFdB9qqPnN4vguT69yjegeoiTuvy7Y=; b=LLQsyfsXqamYCUgjsE7zQzQ2En
	MJUCSeZ3R8WY5q7CyG3zbvFQcOaAGOh6UmI2Y+lN4ldSTF35X4/44+wVWYN33YVSqwe5feqOfP++K
	h867AK/83nEHNGlUT89oY+h6k7qf3YGCT4mXHmwT3RaaHeWcsKLKjjjuhinnZpWAJBmcp9XdHanDT
	C8pES9oia21uBBZzoTSB86OKOZJRzoPhKnaL35yMzS0bYwIUKKR/q1wGFZjI64J5rqJtDuVFsuFKY
	612m8CNhbd53w3iJWGUrYHN9NB0pRJWPi3BTJz3pEtNEyUxJAYVJN/0MqPnRmNgdp2kVjmL1I3VvA
	MTdf+QNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgM9-001hJa-AW; Thu, 02 Mar 2023 10:40:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgLt-001hF7-Ii
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 10:39:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLk-0002W3-9H; Thu, 02 Mar 2023 11:39:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLi-001J5O-2x; Thu, 02 Mar 2023 11:39:46 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLg-003wZF-JP; Thu, 02 Mar 2023 11:39:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 11:39:42 +0100
Message-Id: <20230302103943.939422-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302103943.939422-1-s.hauer@pengutronix.de>
References: <20230302103943.939422-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_023957_689886_B79B61D2 
X-CRM114-Status: GOOD (  10.39  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/8] ARM: dts: imx7d-peb-eval-02: Fix dtc warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some nodes have a unit name, but no reg property. Drop the unit name
to avoid dtc warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx7d-peb-eval-02.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/dts/imx7d-peb-eval-02.dtsi b/arch/arm/dts/imx7d-peb-eval-02.dtsi
index 8bde5b13e7..5c2c302d54 100644
--- a/arch/arm/dts/imx7d-peb-eval-02.dtsi
+++ b/arch/arm/dts/imx7d-peb-eval-02.dtsi
@@ -13,21 +13,21 @@
 		pinctrl-0 = <&pinctrl_leds_eval>;
 		status = "disabled";
 
-		led@0 {
+		led0 {
 			label = "eval_led_1";
 			gpios = <&gpio2 8 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "gpio";
 			default-state = "on";
 		};
 
-		led@1 {
+		led1 {
 			label = "eval_led_2";
 			gpios = <&gpio4 4 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "gpio";
 			default-state = "on";
 		};
 
-		led@2 {
+		led2 {
 			label = "eval_led_3";
 			gpios = <&gpio2 15 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "gpio";
@@ -41,18 +41,18 @@
 		pinctrl-0 = <&pinctrl_btns_eval>;
 		status = "disabled";
 
-		userbtn@0 {
+		userbtn0 {
 			label = "eval_button_1";
 			gpios = <&gpio2 9 GPIO_ACTIVE_HIGH>;
 			linux,code = <0x100>;	/* BTN_MISC */
 		};
-		userbtn@1 {
+		userbtn1 {
 			label = "eval_button_2";
 			gpios = <&gpio4 5 GPIO_ACTIVE_HIGH>;
 			linux,code = <0x100>;   /* BTN_MISC */
 		};
 
-		userbtn@2 {
+		userbtn2 {
 			label = "eval_button_3";
 			gpios = <&gpio5 2 GPIO_ACTIVE_HIGH>;
 			linux,code = <0x100>;	/* BTN_MISC */
-- 
2.30.2



