Delivery-date: Mon, 17 Feb 2025 19:23:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m7-003aQW-0J
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 19:23:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m2-0003W9-Q2
	for lore@pengutronix.de; Mon, 17 Feb 2025 19:23:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xc8rLd5kqdHmuoao4flqKgEbH9r/olFwm/eiOVW4jFA=; b=KX2C6XHNPjWrwLDiEE0HnI8kX3
	t/r0s9WbQA1s3hyixKXWAY0Fdkwtrbn0UJ95gCjYxTou3N3F8NUf6kAIDp78S6w4WxdCnM1T6pn1g
	4LzRnXfpFiKqrSQDDlFJSQxWabWHIrU9u/PCv7XEpjEye5XUzH2roJFds9v+QofXYJLIVuaS7LOCu
	L9v/Xc8jgW78rjG/4usMHVU/LgCk5yAyBMltbVk+3LVDwr8og4fAZCyrfMvJD8UNNERlCOR+fmoJv
	eHwI8eAV4841BagqUz93eP8Hdmzn+t+e1jAJoIEo9eeFivlrlGIgrQGAq41AjTTiAR8ip8U+6MeTJ
	vVAhWYaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5lL-00000005abs-2twN;
	Mon, 17 Feb 2025 18:22:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Xq-00000005YxM-07Xw
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 18:08:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-00011I-CG; Mon, 17 Feb 2025 19:08:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-001S7h-0Y;
	Mon, 17 Feb 2025 19:08:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-00Gc9q-0G;
	Mon, 17 Feb 2025 19:08:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 19:08:31 +0100
Message-Id: <20250217180833.3955657-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
References: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_100838_383884_01F79956 
X-CRM114-Status: GOOD (  14.05  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] ARM: dts: prefix all non-MTD fixed-partitions with barebox,
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While it's generally advisable to boot Linux with a Linux device tree
from the same release, barebox device trees should nevertheless be
usable to boot Linux.

For many barebox device trees, this was no longer the case since Linux
v6.13-rc1 with CONFIG_OF_PARTITION enabled, as Linux commit 2e3a191e89f9
("block: add support for partition table defined in OF") will result
in Linux ignoring the GPT/MBR if fixed-partitions are specified.

To resolve this, replace all fixed-partitions we have for SD/MMC and
EEPROMs devices with barebox,fixed-partitions instead.

Changes to the EEPROM nodes could've been omitted, but they are included
anyway as partitioning EEPROMs isn't supported by Linux upstream and to
anticipate any breakage that may result if a different binding goes
upstream first.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/state.rst                      | 4 ++--
 arch/arm/dts/am335x-phytec-state.dtsi             | 2 +-
 arch/arm/dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts | 2 +-
 arch/arm/dts/imx50-kindle-common.dtsi             | 2 +-
 arch/arm/dts/imx51-zii-rdu1.dts                   | 2 +-
 arch/arm/dts/imx6dl-colibri-iris.dts              | 2 +-
 arch/arm/dts/imx6qdl-phytec-mira.dtsi             | 2 +-
 arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi      | 2 +-
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi      | 2 +-
 arch/arm/dts/imx6qdl-phytec-state.dtsi            | 2 +-
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi                | 2 +-
 arch/arm/dts/imx6ul-liteboard.dts                 | 4 ++--
 arch/arm/dts/imx6ul-phytec-state.dtsi             | 2 +-
 arch/arm/dts/imx6ul-tqma6ul-common.dtsi           | 4 ++--
 arch/arm/dts/imx6ul-webasto-ccbv2.dts             | 2 +-
 arch/arm/dts/imx6ul-webasto-marvel.dts            | 2 +-
 arch/arm/dts/imx7d-ac-sxb.dtsi                    | 4 ++--
 arch/arm/dts/imx7d-flex-concentrator-mfg.dts      | 2 +-
 arch/arm/dts/imx7d-gome-e143_01.dts               | 2 +-
 arch/arm/dts/imx7d-phyboard-zeta.dts              | 2 +-
 arch/arm/dts/imx7s-warp.dts                       | 2 +-
 arch/arm/dts/imx8mm-innocomm-wb15-evk.dts         | 4 ++--
 arch/arm/dts/imx8mm-phyboard-polis-rdk.dts        | 4 ++--
 arch/arm/dts/imx8mp-debix-model-a.dts             | 4 ++--
 arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts        | 4 ++--
 arch/arm/dts/imx8mp-karo-qsxp-ml81.dtsi           | 2 +-
 arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts  | 2 +-
 arch/arm/dts/rk3566-cm3-io.dts                    | 4 ++--
 arch/arm/dts/rk3566-pinetab2.dtsi                 | 4 ++--
 arch/arm/dts/rk3568-bpi-r2-pro.dts                | 4 ++--
 arch/arm/dts/rk3568-evb1-v10.dts                  | 4 ++--
 arch/arm/dts/rk3568-mecsbc.dts                    | 4 ++--
 arch/arm/dts/rk3568-rock-3a.dts                   | 4 ++--
 arch/arm/dts/rk3568-wolfvision-pf5.dts            | 2 +-
 arch/arm/dts/rk3588-orangepi-5-plus.dts           | 4 ++--
 arch/arm/dts/rk3588-rock-5b.dts                   | 4 ++--
 arch/arm/dts/socfpga_arria10_achilles.dts         | 2 +-
 arch/arm/dts/socfpga_arria10_mercury_aa1.dts      | 2 +-
 arch/arm/dts/state-example.dtsi                   | 4 ++--
 39 files changed, 56 insertions(+), 56 deletions(-)

diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index 75352302c7ff..d97ba4e9f157 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -639,7 +639,7 @@ above:
 
 	&mmc1 {
 		partitions {
-			compatible = "fixed-partitions";
+			compatible = "barebox,fixed-partitions";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			[…]
@@ -723,7 +723,7 @@ within the EEPROM.
 
 	eeprom@50 {
 		partitions {
-			compatible = "fixed-partitions";
+			compatible = "barebox,fixed-partitions";
 			#size-cells = <1>;
 			#address-cells = <1>;
 			backend_state_eeprom: eeprom_state_memory@400 {
diff --git a/arch/arm/dts/am335x-phytec-state.dtsi b/arch/arm/dts/am335x-phytec-state.dtsi
index af4da4ea6469..b6ae82b6b24a 100644
--- a/arch/arm/dts/am335x-phytec-state.dtsi
+++ b/arch/arm/dts/am335x-phytec-state.dtsi
@@ -93,7 +93,7 @@ priority {
 &eeprom {
 	status = "okay";
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#size-cells = <1>;
 		#address-cells = <1>;
 		backend_state_mac_eeprom: state@0 {
diff --git a/arch/arm/dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts b/arch/arm/dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts
index 787a85394c8a..61ac294c0a36 100644
--- a/arch/arm/dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts
+++ b/arch/arm/dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts
@@ -29,7 +29,7 @@ partitions {
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 
 		partition@1000 {
 			label = "barebox";
diff --git a/arch/arm/dts/imx50-kindle-common.dtsi b/arch/arm/dts/imx50-kindle-common.dtsi
index c286dcb2e91f..2ef32da80fa6 100644
--- a/arch/arm/dts/imx50-kindle-common.dtsi
+++ b/arch/arm/dts/imx50-kindle-common.dtsi
@@ -138,7 +138,7 @@ &esdhc3 {
 	status = "okay";
 
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
index 6bb491ec3b0a..99da52858f4f 100644
--- a/arch/arm/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/dts/imx51-zii-rdu1.dts
@@ -83,7 +83,7 @@ env_spinor: partition@e0000 {
 
 &esdhc1 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
diff --git a/arch/arm/dts/imx6dl-colibri-iris.dts b/arch/arm/dts/imx6dl-colibri-iris.dts
index 0e10b34cf71c..0986aa6067a5 100644
--- a/arch/arm/dts/imx6dl-colibri-iris.dts
+++ b/arch/arm/dts/imx6dl-colibri-iris.dts
@@ -17,7 +17,7 @@ barebox-environment {
 
 &usdhc3 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/imx6qdl-phytec-mira.dtsi b/arch/arm/dts/imx6qdl-phytec-mira.dtsi
index bcda7dd82a9c..d1fd7dfaf080 100644
--- a/arch/arm/dts/imx6qdl-phytec-mira.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-mira.dtsi
@@ -27,7 +27,7 @@ &pwm1 {
 
 &usdhc1 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
                 #address-cells = <1>;
                 #size-cells = <1>;
 
diff --git a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
index 6cdf82e2cdbf..361c106034cb 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
@@ -157,7 +157,7 @@ &usdhc3 {
         status = "disabled";
 
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index f244a82270f0..7b77a22ec31e 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -109,7 +109,7 @@ partition@140000 {
 
 &usdhc4 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
diff --git a/arch/arm/dts/imx6qdl-phytec-state.dtsi b/arch/arm/dts/imx6qdl-phytec-state.dtsi
index 1522b92be15b..5423c3d4f20f 100644
--- a/arch/arm/dts/imx6qdl-phytec-state.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-state.dtsi
@@ -71,7 +71,7 @@ ok {
 &eeprom {
 	status = "okay";
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#size-cells = <1>;
 		#address-cells = <1>;
 		backend_update_eeprom: state@0 {
diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index a01962d0e689..402d2f8b9d2d 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -247,7 +247,7 @@ &usbotg {
 
 &usdhc4 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
diff --git a/arch/arm/dts/imx6ul-liteboard.dts b/arch/arm/dts/imx6ul-liteboard.dts
index f9ea9fc0234d..2b9a817a955c 100644
--- a/arch/arm/dts/imx6ul-liteboard.dts
+++ b/arch/arm/dts/imx6ul-liteboard.dts
@@ -62,7 +62,7 @@ environment-emmc {
 
 &usdhc1 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
@@ -80,7 +80,7 @@ environment_sd: partition@e0000 {
 
 &usdhc2 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
diff --git a/arch/arm/dts/imx6ul-phytec-state.dtsi b/arch/arm/dts/imx6ul-phytec-state.dtsi
index d0cad1b5166a..bdaf88082517 100644
--- a/arch/arm/dts/imx6ul-phytec-state.dtsi
+++ b/arch/arm/dts/imx6ul-phytec-state.dtsi
@@ -69,7 +69,7 @@ ok@18 {
 
 &eeprom {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#size-cells = <1>;
 		#address-cells = <1>;
 		backend_update_eeprom: state@0 {
diff --git a/arch/arm/dts/imx6ul-tqma6ul-common.dtsi b/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
index 5ff318fcfc58..a22b842a2881 100644
--- a/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
+++ b/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
@@ -23,7 +23,7 @@ environment-emmc {
 
 &usdhc2 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
@@ -36,7 +36,7 @@ environment_emmc: partition@e0000 {
 
 &usdhc1 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
diff --git a/arch/arm/dts/imx6ul-webasto-ccbv2.dts b/arch/arm/dts/imx6ul-webasto-ccbv2.dts
index 198088bd44b0..517d1a343b51 100644
--- a/arch/arm/dts/imx6ul-webasto-ccbv2.dts
+++ b/arch/arm/dts/imx6ul-webasto-ccbv2.dts
@@ -86,7 +86,7 @@ last_chosen@10 {
 
 &usdhc2 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
diff --git a/arch/arm/dts/imx6ul-webasto-marvel.dts b/arch/arm/dts/imx6ul-webasto-marvel.dts
index 7b5641afbc94..7571923b5551 100644
--- a/arch/arm/dts/imx6ul-webasto-marvel.dts
+++ b/arch/arm/dts/imx6ul-webasto-marvel.dts
@@ -550,7 +550,7 @@ &usdhc2 {
 	status = "okay";
 	/* bootloader specific */
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
diff --git a/arch/arm/dts/imx7d-ac-sxb.dtsi b/arch/arm/dts/imx7d-ac-sxb.dtsi
index 7154508d071d..5483dbe11c13 100644
--- a/arch/arm/dts/imx7d-ac-sxb.dtsi
+++ b/arch/arm/dts/imx7d-ac-sxb.dtsi
@@ -42,7 +42,7 @@ &usdhc1 {
 	status = "okay";
 
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
@@ -63,7 +63,7 @@ &usdhc3 {
 	status = "okay";
 
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/imx7d-flex-concentrator-mfg.dts b/arch/arm/dts/imx7d-flex-concentrator-mfg.dts
index 4b150ba48cd0..3b176587ee5f 100644
--- a/arch/arm/dts/imx7d-flex-concentrator-mfg.dts
+++ b/arch/arm/dts/imx7d-flex-concentrator-mfg.dts
@@ -79,7 +79,7 @@ last_chosen@10 {
 /* eMMC */
 &usdhc3 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
diff --git a/arch/arm/dts/imx7d-gome-e143_01.dts b/arch/arm/dts/imx7d-gome-e143_01.dts
index ed7f3cfa216b..88034609e4e3 100644
--- a/arch/arm/dts/imx7d-gome-e143_01.dts
+++ b/arch/arm/dts/imx7d-gome-e143_01.dts
@@ -83,7 +83,7 @@ &usdhc3 {
 	partitions {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 
 		/** original storage layout:
 		offset     size  label
diff --git a/arch/arm/dts/imx7d-phyboard-zeta.dts b/arch/arm/dts/imx7d-phyboard-zeta.dts
index 211c72604edb..0725a186ec6b 100644
--- a/arch/arm/dts/imx7d-phyboard-zeta.dts
+++ b/arch/arm/dts/imx7d-phyboard-zeta.dts
@@ -38,7 +38,7 @@ &usdhc3 {
 	status = "okay";
 
 	partitions-boot1 {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
diff --git a/arch/arm/dts/imx7s-warp.dts b/arch/arm/dts/imx7s-warp.dts
index d84b9ed4342b..e6a99cae4f95 100644
--- a/arch/arm/dts/imx7s-warp.dts
+++ b/arch/arm/dts/imx7s-warp.dts
@@ -22,7 +22,7 @@ environment {
 
 &usdhc3 {
 	partitions-boot1 {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
diff --git a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
index ac7e5a1cb193..85f346884280 100644
--- a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
+++ b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
@@ -25,7 +25,7 @@ &ocotp {
 
 &usdhc1 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
@@ -43,7 +43,7 @@ env_sd1: partition@100000 {
 
 &usdhc2 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/imx8mm-phyboard-polis-rdk.dts b/arch/arm/dts/imx8mm-phyboard-polis-rdk.dts
index 0a6183f092dc..3d1c74562ea8 100644
--- a/arch/arm/dts/imx8mm-phyboard-polis-rdk.dts
+++ b/arch/arm/dts/imx8mm-phyboard-polis-rdk.dts
@@ -96,7 +96,7 @@ &ocotp {
 
 &usdhc2 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
@@ -114,7 +114,7 @@ env_sd2: partition@100000 {
 
 &usdhc3 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/imx8mp-debix-model-a.dts b/arch/arm/dts/imx8mp-debix-model-a.dts
index a58b40ec8652..4bb5ebf106dd 100644
--- a/arch/arm/dts/imx8mp-debix-model-a.dts
+++ b/arch/arm/dts/imx8mp-debix-model-a.dts
@@ -33,7 +33,7 @@ environment-emmc {
 
 &usdhc2 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
@@ -51,7 +51,7 @@ env_sd: partition@100000 {
 
 &usdhc3 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts b/arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts
index 88ad897f3429..5f1c76d435b9 100644
--- a/arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts
+++ b/arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts
@@ -28,7 +28,7 @@ &usb_hub_2_x {
 
 &usdhc2 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
@@ -46,7 +46,7 @@ env_sd: partition@100000 {
 
 &usdhc3 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/imx8mp-karo-qsxp-ml81.dtsi b/arch/arm/dts/imx8mp-karo-qsxp-ml81.dtsi
index e47623a1a5ef..aac264daab71 100644
--- a/arch/arm/dts/imx8mp-karo-qsxp-ml81.dtsi
+++ b/arch/arm/dts/imx8mp-karo-qsxp-ml81.dtsi
@@ -95,7 +95,7 @@ &usdhc2 {
 
 &usdhc3 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts b/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts
index f11218c904f5..02bcb6ec29a2 100644
--- a/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts
+++ b/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts
@@ -366,7 +366,7 @@ &usdhc2 {
 	status = "okay";
 
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#size-cells = <2>;
 		#address-cells = <1>;
 
diff --git a/arch/arm/dts/rk3566-cm3-io.dts b/arch/arm/dts/rk3566-cm3-io.dts
index 39cef5e79799..17033edb78e2 100644
--- a/arch/arm/dts/rk3566-cm3-io.dts
+++ b/arch/arm/dts/rk3566-cm3-io.dts
@@ -25,7 +25,7 @@ &sdhci {
 	no-sd;
 
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
@@ -38,7 +38,7 @@ environment_emmc: partition@408000 {
 
 &sdmmc0 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/rk3566-pinetab2.dtsi b/arch/arm/dts/rk3566-pinetab2.dtsi
index 47ac12384d37..112acffc36b4 100644
--- a/arch/arm/dts/rk3566-pinetab2.dtsi
+++ b/arch/arm/dts/rk3566-pinetab2.dtsi
@@ -21,7 +21,7 @@ environment-emmc {
 
 &sdhci {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
@@ -34,7 +34,7 @@ environment_emmc: partition@408000 {
 
 &sdmmc0 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/rk3568-bpi-r2-pro.dts b/arch/arm/dts/rk3568-bpi-r2-pro.dts
index 58a2bc442fdf..39ad25a7632b 100644
--- a/arch/arm/dts/rk3568-bpi-r2-pro.dts
+++ b/arch/arm/dts/rk3568-bpi-r2-pro.dts
@@ -31,7 +31,7 @@ &sdhci {
 	no-sd;
 
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
@@ -44,7 +44,7 @@ environment_emmc: partition@408000 {
 
 &sdmmc0 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/rk3568-evb1-v10.dts b/arch/arm/dts/rk3568-evb1-v10.dts
index 82186ff86ead..c9466d9caf6c 100644
--- a/arch/arm/dts/rk3568-evb1-v10.dts
+++ b/arch/arm/dts/rk3568-evb1-v10.dts
@@ -34,7 +34,7 @@ &sdhci {
 	no-sd;
 
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
@@ -47,7 +47,7 @@ environment_emmc: partition@408000 {
 
 &sdmmc0 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/rk3568-mecsbc.dts b/arch/arm/dts/rk3568-mecsbc.dts
index c9bab7f36e2f..d63386012377 100644
--- a/arch/arm/dts/rk3568-mecsbc.dts
+++ b/arch/arm/dts/rk3568-mecsbc.dts
@@ -104,7 +104,7 @@ &sdhci {
 	no-sd;
 
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
@@ -124,7 +124,7 @@ state_backend_emmc: partition@7c0000 {
 
 &sdmmc0 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/rk3568-rock-3a.dts b/arch/arm/dts/rk3568-rock-3a.dts
index 25a0c05737d0..927eb8eb63ae 100644
--- a/arch/arm/dts/rk3568-rock-3a.dts
+++ b/arch/arm/dts/rk3568-rock-3a.dts
@@ -30,7 +30,7 @@ &sdhci {
 	no-sd;
 
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
@@ -43,7 +43,7 @@ environment_emmc: partition@408000 {
 
 &sdmmc0 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/rk3568-wolfvision-pf5.dts b/arch/arm/dts/rk3568-wolfvision-pf5.dts
index e214842ee40b..9ce24dfc6236 100644
--- a/arch/arm/dts/rk3568-wolfvision-pf5.dts
+++ b/arch/arm/dts/rk3568-wolfvision-pf5.dts
@@ -31,7 +31,7 @@ memory@a00000 {
 
 &sdhci {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/rk3588-orangepi-5-plus.dts b/arch/arm/dts/rk3588-orangepi-5-plus.dts
index 8c765a853c6e..8bafbbd7f2bf 100644
--- a/arch/arm/dts/rk3588-orangepi-5-plus.dts
+++ b/arch/arm/dts/rk3588-orangepi-5-plus.dts
@@ -23,7 +23,7 @@ environment-sd {
 
 &sdhci {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
@@ -36,7 +36,7 @@ environment_emmc: partition@408000 {
 
 &sdmmc {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/rk3588-rock-5b.dts b/arch/arm/dts/rk3588-rock-5b.dts
index 0af544287022..67fc39557400 100644
--- a/arch/arm/dts/rk3588-rock-5b.dts
+++ b/arch/arm/dts/rk3588-rock-5b.dts
@@ -29,7 +29,7 @@ environment-sd {
 
 &sdhci {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
@@ -42,7 +42,7 @@ environment_emmc: partition@408000 {
 
 &sdmmc {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index fbfdc9a8822c..c36912f30eac 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -201,7 +201,7 @@ &mmc {
 	status = "okay";
 
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#size-cells = <1>;
 		#address-cells = <1>;
 
diff --git a/arch/arm/dts/socfpga_arria10_mercury_aa1.dts b/arch/arm/dts/socfpga_arria10_mercury_aa1.dts
index 84d4534cc629..b3cd37ed393d 100644
--- a/arch/arm/dts/socfpga_arria10_mercury_aa1.dts
+++ b/arch/arm/dts/socfpga_arria10_mercury_aa1.dts
@@ -44,7 +44,7 @@ &mmc {
 	no-sd;
 
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#size-cells = <1>;
 		#address-cells = <1>;
 
diff --git a/arch/arm/dts/state-example.dtsi b/arch/arm/dts/state-example.dtsi
index 4572168336ae..bd3fe2b1d4df 100644
--- a/arch/arm/dts/state-example.dtsi
+++ b/arch/arm/dts/state-example.dtsi
@@ -106,7 +106,7 @@ backend_state_nand: partition@f00000 {
 
 &som_eeprom { /* On I2C1 */
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#size-cells = <1>;
 		#address-cells = <1>;
 		backend_state_eeprom: state@400 {
@@ -118,7 +118,7 @@ backend_state_eeprom: state@400 {
 
 &usdhc2 {
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "barebox,fixed-partitions";
 		#size-cells = <1>;
 		#address-cells = <1>;
 		backend_state_usdhc: state@0x80000 {
-- 
2.39.5



