Delivery-date: Tue, 10 Feb 2026 23:14:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpw0B-000JW4-0d
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 23:14:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpw0B-0007QF-0P
	for lore@pengutronix.de; Tue, 10 Feb 2026 23:14:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dv/65QPpw7hPLus+vOwhcpfcu6XliFFffeUt+e5vNZ8=; b=ZXxl/e9+1UhFveIeV/I7X3z1Sz
	w0aZ3JUoYpk8VyY8S5CGc+geBotEQxs1QS7MyOCYZ1Of4DoN5GcxTXfEpUD/LSub+B1lUtjQUriVF
	SC8wSCNGK/vhtIVqlZNEZspuweNz7XYTUjI3eKSGz857VX7IFv1pOLnqfTWjpQDAH6QsXbjJDq5Q7
	eTSomSKBPE1gBxDurEWTH53q9oHXBxFl7/WiMqxRDgsdqUA51Gbb9Ep570FRfKMhRmKIIXJvYXzJy
	LxzrRdHmp41xC/PDuXX1AaXfu97d1kViDrg7lR9JcytNHqyxPNEyEzwtpJ1wRg7xc+0IjvfCJnSqV
	R8ziYAKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpvzW-0000000HYOS-4BHb;
	Tue, 10 Feb 2026 22:13:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpvzU-0000000HYN3-3Hsl
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 22:13:54 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vpvzQ-0007K0-6X
	for barebox@lists.infradead.org; Tue, 10 Feb 2026 23:13:48 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Feb 2026 23:13:40 +0100
Message-ID: <20260210221343.3431882-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_141352_820056_F2330D98 
X-CRM114-Status: GOOD (  10.76  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [RFC PATCH] ARM: dts: i.MX8MP: remove barebox environment handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While specifying the barebox environment within the barebox dts is very
helpful for standalone barebox development it's difficult for BSPs which
use this development platform and want to use the GPT mechanism.
As a result BSPs had to manually delete the nodes via a external
provided dts, because we wanted to keep the comfort for the standalone
development flow.

Lucky commit 86531d4bf7aa ("commands: create createnv command")
introduced a convenient helper to create a barebox environemnt on
demand exactly for this purpose:

| "We want to move away from describing the barebox environment explicitly
| in the device tree and instead motivate usage of GPT partitions.."

So start with the i.MX8MP-EVK to encourage the use of GPT partitions and
to make the BSP integration for these development platforms easier.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx8mp-evk.dts | 43 -------------------------------------
 1 file changed, 43 deletions(-)

diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
index e6f8c2d1b482..37798fa99efa 100644
--- a/arch/arm/dts/imx8mp-evk.dts
+++ b/arch/arm/dts/imx8mp-evk.dts
@@ -12,19 +12,6 @@
 / {
 	barebox,deep-probe;
 
-	chosen {
-		environment-sd {
-			compatible = "barebox,environment";
-			device-path = &env_sd2;
-			status = "disabled";
-		};
-		environment-emmc {
-			compatible = "barebox,environment";
-			device-path = &env_sd3;
-			status = "disabled";
-		};
-	};
-
 	gpio-leds {
 		status {
 			barebox,default-trigger = "heartbeat";
@@ -78,33 +65,3 @@ &usb_dwc3_0 {
 	usb-role-switch;
 	status = "okay";
 };
-
-&usdhc2 {
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0xe0000>;
-	};
-
-	env_sd2: partition@e0000 {
-		label = "barebox-environment";
-		reg = <0xe0000 0x20000>;
-	};
-};
-
-&usdhc3 {
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0xe0000>;
-	};
-
-	env_sd3: partition@e0000 {
-		label = "barebox-environment";
-		reg = <0xe0000 0x20000>;
-	};
-};
-- 
2.47.3



