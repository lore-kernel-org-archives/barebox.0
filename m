Delivery-date: Thu, 18 Mar 2021 10:23:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMosU-0005nk-Bu
	for lore@lore.pengutronix.de; Thu, 18 Mar 2021 10:23:38 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMosP-0003Jk-JK
	for lore@pengutronix.de; Thu, 18 Mar 2021 10:23:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o/U7ORWQ6JzlbLBLKxcza3eLSSjj7UIRz8mCEqnc4JQ=; b=VgQBp1oNT7uacl
	ybuYTMTSvvf0kRUso+yKZJEOsEmQ9NpO4JHDkNNZxFRP0ypCCIV6b7gtbfXcnW71pL7Tmn1IbmOqb
	svJsFWKxoxGsAt4vkkPFvVuO4k8fcSylC1YKiY4u3Oth9ihg3RGM4uDnbcWtttJC5IB5ByXiS4Vnt
	3rBWBUZ6NnkIp372YfAnqTb2AAgOcMRrCCmVXqfKUYcdEgpM/8nALfnG+1ujNt+qEP2bTFLZBgUEH
	0FSZHBNa3oQMSbPp7xJ/1Ts8L0y/BG1UkNiyNqoEF6KAIvomeXdfEskKHPPBSK1HWnsbxYgZTSp8J
	ZDqa3qNPnqucZcwGjQ2A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMor7-004t9n-OI; Thu, 18 Mar 2021 09:22:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMor1-004t8w-JF
 for barebox@lists.infradead.org; Thu, 18 Mar 2021 09:22:09 +0000
Received: from [2a0a:edc0:0:c01:1d::a2]
 (helo=drehscheibe.grey.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lMor0-00038a-Rl
 for barebox@lists.infradead.org; Thu, 18 Mar 2021 10:22:06 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lMor0-0000By-A5
 for barebox@lists.infradead.org; Thu, 18 Mar 2021 10:22:06 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lMor0-00Aahh-9C
 for barebox@lists.infradead.org; Thu, 18 Mar 2021 10:22:06 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 18 Mar 2021 10:22:06 +0100
Message-Id: <20210318092206.2524324-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210318_092207_797987_0779BB38 
X-CRM114-Status: GOOD (  12.28  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] dts: zcu104: remove unnecessary ZynqMP clock dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The clock definitions are now available from the Linux device tree as
dts/src/arm64/xilinx/zynqmp-clk-ccf.dtsi and the clock-controller is
defined in dts/src/arm64/xilinx/zynqmp.dtsi. Defining the clocks in a
Barebox-specific file is not necessary anymore.

Remove zynqmp-clk.dtsi and the include from the board device tree.

The files are already correctly included by the imported board device
trees (dts/src/arm64/xilinx/zynqmp-zcu104-revA.dts).

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/dts/zynqmp-clk.dtsi        | 155 ----------------------------
 arch/arm/dts/zynqmp-zcu104-revA.dts |   1 -
 2 files changed, 156 deletions(-)
 delete mode 100644 arch/arm/dts/zynqmp-clk.dtsi

diff --git a/arch/arm/dts/zynqmp-clk.dtsi b/arch/arm/dts/zynqmp-clk.dtsi
deleted file mode 100644
index 68ece9aa6732..000000000000
--- a/arch/arm/dts/zynqmp-clk.dtsi
+++ /dev/null
@@ -1,155 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/*
- * Clock specification for Xilinx ZynqMP
- *
- * (C) Copyright 2017, Xilinx, Inc.
- *
- * Michal Simek <michal.simek@xilinx.com>
- */
-
-#include <dt-bindings/clock/xlnx-zynqmp-clk.h>
-
-&zynqmp_firmware {
-       zynqmp_clk: clock-controller {
-               #clock-cells = <1>;
-               compatible = "xlnx,zynqmp-clk";
-               clocks = <&pss_ref_clk>, <&video_clk>, <&pss_alt_ref_clk>, <&aux_ref_clk>, <&gt_crx_ref_clk>;
-               clock-names = "pss_ref_clk", "video_clk", "pss_alt_ref_clk", "aux_ref_clk", "gt_crx_ref_clk";
-       };
-};
-
-/ {
-	pss_ref_clk: pss_ref_clk {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <33333333>;
-	};
-
-	video_clk: video_clk {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <27000000>;
-	};
-
-	pss_alt_ref_clk: pss_alt_ref_clk {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <0>;
-	};
-
-	gt_crx_ref_clk: gt_crx_ref_clk {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <108000000>;
-	};
-
-	aux_ref_clk: aux_ref_clk {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <27000000>;
-	};
-};
-
-&can0 {
-	clocks = <&zynqmp_clk CAN0_REF>, <&zynqmp_clk LPD_LSBUS>;
-};
-
-&can1 {
-	clocks = <&zynqmp_clk CAN1_REF>, <&zynqmp_clk LPD_LSBUS>;
-};
-
-&cpu0 {
-	clocks = <&zynqmp_clk ACPU>;
-};
-
-&gem0 {
-	clocks = <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk GEM0_TX>, <&zynqmp_clk GEM0_REF>, <&zynqmp_clk GEM_TSU>;
-	clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";
-};
-
-&gem1 {
-	clocks = <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk GEM1_TX>, <&zynqmp_clk GEM1_REF>, <&zynqmp_clk GEM_TSU>;
-	clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";
-};
-
-&gem2 {
-	clocks = <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk GEM2_TX>, <&zynqmp_clk GEM2_REF>, <&zynqmp_clk GEM_TSU>;
-	clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";
-};
-
-&gem3 {
-	clocks = <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk GEM3_TX>, <&zynqmp_clk GEM3_REF>, <&zynqmp_clk GEM_TSU>;
-	clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";
-};
-
-&gpio {
-	clocks = <&zynqmp_clk LPD_LSBUS>;
-};
-
-&i2c0 {
-	clocks = <&zynqmp_clk I2C0_REF>;
-};
-
-&i2c1 {
-	clocks = <&zynqmp_clk I2C1_REF>;
-};
-
-&pcie {
-	clocks = <&zynqmp_clk PCIE_REF>;
-};
-
-&sata {
-	clocks = <&zynqmp_clk SATA_REF>;
-};
-
-&sdhci0 {
-	clocks = <&zynqmp_clk SDIO0_REF>, <&zynqmp_clk LPD_LSBUS>;
-};
-
-&sdhci1 {
-	clocks = <&zynqmp_clk SDIO1_REF>, <&zynqmp_clk LPD_LSBUS>;
-};
-
-&spi0 {
-	clocks = <&zynqmp_clk SPI0_REF>, <&zynqmp_clk LPD_LSBUS>;
-};
-
-&spi1 {
-	clocks = <&zynqmp_clk SPI0_REF>, <&zynqmp_clk LPD_LSBUS>;
-};
-
-&ttc0 {
-	clocks = <&zynqmp_clk LPD_LSBUS>;
-};
-
-&ttc1 {
-	clocks = <&zynqmp_clk LPD_LSBUS>;
-};
-
-&ttc2 {
-	clocks = <&zynqmp_clk LPD_LSBUS>;
-};
-
-&ttc3 {
-	clocks = <&zynqmp_clk LPD_LSBUS>;
-};
-
-&uart0 {
-	clocks = <&zynqmp_clk UART0_REF>, <&zynqmp_clk LPD_LSBUS>;
-};
-
-&uart1 {
-	clocks = <&zynqmp_clk UART1_REF>, <&zynqmp_clk LPD_LSBUS>;
-};
-
-&usb0 {
-	clocks = <&zynqmp_clk USB0_BUS_REF>, <&zynqmp_clk USB3_DUAL_REF>;
-};
-
-&usb1 {
-	clocks = <&zynqmp_clk USB1_BUS_REF>, <&zynqmp_clk USB3_DUAL_REF>;
-};
-
-&watchdog0 {
-	clocks = <&zynqmp_clk WDT>;
-};
diff --git a/arch/arm/dts/zynqmp-zcu104-revA.dts b/arch/arm/dts/zynqmp-zcu104-revA.dts
index 8b8dd84c1dc3..8c467ee97045 100644
--- a/arch/arm/dts/zynqmp-zcu104-revA.dts
+++ b/arch/arm/dts/zynqmp-zcu104-revA.dts
@@ -8,4 +8,3 @@
  */
 
 #include <arm64/xilinx/zynqmp-zcu104-revA.dts>
-#include "zynqmp-clk.dtsi"
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

