Delivery-date: Thu, 08 Jun 2023 08:59:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q79c5-00FPf2-GW
	for lore@lore.pengutronix.de; Thu, 08 Jun 2023 08:59:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q79c3-0007LY-0S
	for lore@pengutronix.de; Thu, 08 Jun 2023 08:59:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=khYD7UztJ3pWF9g3vjlwtB7Ct2a+W2/b5qVsepGVPNI=; b=b/nJ+fAYggpdrz7LaYhhKdIZKG
	ExM94UySqoOV/AnjBKpn0g4hZnV/yuPWyg908s5LsXmfu05Y5YMIYFqJFYcmCBIz462HfdDtU8JPX
	yPd80ZpKFcAZVHx3JsQUtMJJHH+ASg3kbES70lktrxXUcQiGreVf1zmQnGZfr73jgqMcqQa9tM1Tv
	RoAvz22u8d36+hJNEeej+clVTa5XLy3fhCZnVLbjM1ev6GCQ1Fuo8zZgc3sGs17Nd4JIbpQx+1IsQ
	xDo6O1Lvwc/wbqU3r6r/22RicA/lE6eF/qsNI72N+2oIqA4gZ8QScxBvG7CkV3Vv5Z5QWFfco28C9
	kDUajFXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q79b2-008KWN-1S;
	Thu, 08 Jun 2023 06:58:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q79az-008KVf-2y
	for barebox@lists.infradead.org;
	Thu, 08 Jun 2023 06:58:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q79ax-0007I2-L0; Thu, 08 Jun 2023 08:58:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q79ax-005ue3-0I; Thu, 08 Jun 2023 08:58:07 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q79aw-00CzBN-9U; Thu, 08 Jun 2023 08:58:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  8 Jun 2023 08:58:05 +0200
Message-Id: <20230608065805.3095109-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_235809_959650_16C59F90 
X-CRM114-Status: GOOD (  14.52  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: dts: state-example: fix use with Phytec phyFLEX i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The state-example.dtsi was added 5 years ago and while the binding is
still applicable, the imx6q-phytec-pbab01.dts device tree that it
extends when USE_STATE_EXAMPLE is defined has changed in a way that
breaks use of the state nodes.

Do the necessary to restore the examples to working order:

  - Reference the NOR partition inside of the fixed-partition container
    it's inside now

  - Resize the NAND, so the last 1M of the barebox 16M partition can
    be used for state. Also use the fixed-partition container that
    has been added in the meantime.

  - Use phandles or label-relative paths, so we get build errors
    if the path changes again in future

There's still a WARNING: state_nor: Failed to initialize desired amount
of buckets, only 2 of 3 succeeded, but that can be fixed separately.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
I don't know how to fix the warning. Setting backend-stridesize = <64>
didn't help. I've CONFIG_MTD_SPI_NOR_USE_4K_SECTORS=y
---
 arch/arm/dts/state-example.dtsi | 41 +++++++++++++++++----------------
 1 file changed, 21 insertions(+), 20 deletions(-)

diff --git a/arch/arm/dts/state-example.dtsi b/arch/arm/dts/state-example.dtsi
index 490ee7840b24..4572168336ae 100644
--- a/arch/arm/dts/state-example.dtsi
+++ b/arch/arm/dts/state-example.dtsi
@@ -89,28 +89,29 @@ state_eeprom: state_eeprom {
 
 };
 
-&ecspi3 {
-	flash@0 {
-		backend_state_nor: partition@120000 {
-		};
+backend_state_nor: &{ecspi3/flash@0/partitions/partition@120000} {
+};
+
+/* Reduce barebox partition size from 16M to 15M */
+&{gpmi/partitions/partition@0} {
+	reg = <0x0 0xf00000>;
+};
+
+&{gpmi/partitions} {
+	backend_state_nand: partition@f00000 {
+		label = "barebox-state";
+		reg = <0xf00000 0x100000>;
 	};
 };
 
-&gpmi {
-	backend_state_nand: partition@500000 {
-	};
-};
-
-&i2c1 {
-	eeprom@50 {
-		partitions {
-			compatible = "fixed-partitions";
-			#size-cells = <1>;
-			#address-cells = <1>;
-			backend_state_eeprom: state@400 {
-				reg = <0x400 0x400>;
-				label = "state-eeprom";
-			};
+&som_eeprom { /* On I2C1 */
+	partitions {
+		compatible = "fixed-partitions";
+		#size-cells = <1>;
+		#address-cells = <1>;
+		backend_state_eeprom: state@400 {
+			reg = <0x400 0x400>;
+			label = "state-eeprom";
 		};
 	};
 };
@@ -125,4 +126,4 @@ backend_state_usdhc: state@0x80000 {
 			label = "state-sd";
 		};
 	};
-};
\ No newline at end of file
+};
-- 
2.39.2



