Delivery-date: Thu, 23 Jul 2026 16:02:27 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wmu0J-001zF6-19
	for lore@lore.pengutronix.de;
	Thu, 23 Jul 2026 16:02:27 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1460220271C
	for <lore@pengutronix.de>; Thu, 23 Jul 2026 16:02:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=B+NgOawm;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=gFBg+Xv7;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0cozuBtv5eVPscXpiiMJoAhhz33pFObOwqc8x1/26w8=; b=B+NgOawmL/mBNw74474eX33C3j
	IUgVAtwfOEt93U//gdGTUiuJyo95hE5s9xYqhd6tPTZH654mwnhxXvKMWEmD3Y+zNsfw66Fqfch1G
	GjIBpFeBTzbGj34A8TMpHC9u7S/RpEY9TRzHSdNutdvwWf2/QRuU8CtJ/WxC9qXkwuGpnLkCgHW/G
	q6VRNGQWHJbmxVNrxiJzfQ8G+M876GeNfacZiDL5dk96iSwCZKKUMXeJGuvWoqwtjIS1cQwLw5pgc
	QpGskHIF1ioXCuGy+R9r6oobDIjdEEnyspStDlORcP0MO6AHcwUkGf8n53bHx0zd88fllV7cbzAHF
	7MlcunBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvE-0000000EQQn-03QS;
	Thu, 23 Jul 2026 13:57:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvA-0000000EQME-3ZzQ
	for barebox@lists.infradead.org;
	Thu, 23 Jul 2026 13:57:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 468F360A71;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0610C2BCB8;
	Thu, 23 Jul 2026 13:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784815028;
	bh=7hUwFKtuBKE5zF3HsJqyDVIUixjc22EumODMVGi+aWg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=gFBg+Xv7lywX2+LC2gMvcsqOzO1vbCIKzCH+nRv2hU7lWQRg2SHr3grO1T1A/3/VL
	 VaZ5lm4y7vO4tMlqlyD0aDXFrvXzbNTaoiPaU9dZjbHLv2XnQ7rZaCxPL0GBwJomLR
	 4lTZTtcUE9z3uqlCHwLKMb/K19ue8Fd6XfTMUsBoDnrUo1N99NeA4rqddUOd1xXAQO
	 abQeDNORLr3LtewuwBPDzSpwjBtjcXYm28WiwH3GtIklWeXaRgBeuKvI526XPDy2Ia
	 xNBwreZXR49A7j/b2dqEytXmMec2uxA8bkw+sm/6qLe7xAzZnDEV5ZNY9ZVcycmwyf
	 ycKzJauJrpmgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE8F5C531D1;
	Thu, 23 Jul 2026 13:57:07 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 23 Jul 2026 15:57:48 +0200
Subject: [PATCH 10/19] ARM: dts: update RN104 Linux DTS
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260723-rn102-rn104-series-v1-10-7698d25df866@gmail.com>
References: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
In-Reply-To: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784815061; l=6636;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=45aTUSNmhAoWzf1SPHmz7JXpUIPYIhGMeePCGmP1Wjc=;
 b=AtnSmE9+tSPaAyR1i0J5r6dBPshBidaOi+h1gEveLsTVHpIpJVPqnDbYbr9yKJfyfpF8LP2El
 WT3TtAxMth4CE4Vt0YhG6Fi1LYubMDL+jfqPMhEImwWo+25DE/KAQfI
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[99.99%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 1460220271C
X-Rspamd-Server: mx1
X-Stat-Signature: eezk93e8tzr6cpnasar9yrkmmxknm6s3

From: Luca Lauro <famlauro93l@gmail.com>

---
 dts/src/arm/marvell/armada-370-netgear-rn104.dts | 173 ++++++++++++++---------
 1 file changed, 104 insertions(+), 69 deletions(-)

diff --git a/dts/src/arm/marvell/armada-370-netgear-rn104.dts b/dts/src/arm/marvell/armada-370-netgear-rn104.dts
index d752ac1d7b..d7cc0549f4 100644
--- a/dts/src/arm/marvell/armada-370-netgear-rn104.dts
+++ b/dts/src/arm/marvell/armada-370-netgear-rn104.dts
@@ -15,6 +15,10 @@ / {
 	model = "NETGEAR ReadyNAS 104";
 	compatible = "netgear,readynas-104", "marvell,armada370", "marvell,armada-370-xp";
 
+	aliases {
+		state = &state_nand;
+    };
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
@@ -40,6 +44,12 @@ serial@12000 {
 				status = "okay";
 			};
 
+			/* eSATA interface */
+			sata@a0000 {
+				nr-ports = <1>;
+				status = "okay";
+			};
+
 			ethernet@70000 {
 				pinctrl-0 = <&ge0_rgmii_pins>;
 				pinctrl-names = "default";
@@ -103,15 +113,10 @@ g762_clk: g762-oscillator {
 
 	gpio-leds {
 		compatible = "gpio-leds";
-		pinctrl-0 = <&backup_led_pin &power_led_pin>;
+		pinctrl-0 = <&power_led_pin
+			     &backup_led_pin>;
 		pinctrl-names = "default";
 
-		blue-backup-led {
-			label = "rn104:blue:backup";
-			gpios = <&gpio1 31 GPIO_ACTIVE_HIGH>;
-			default-state = "off";
-		};
-
 		blue-power-led {
 			label = "rn104:blue:pwr";
 			gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
@@ -141,6 +146,12 @@ blue-sata4-led {
 			gpios = <&pca9554 3 GPIO_ACTIVE_LOW>;
 			default-state = "off";
 		};
+
+		blue-backup-led {
+			label = "rn104:blue:backup";
+			gpios = <&gpio1 31 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
 	};
 
 	auxdisplay {
@@ -159,17 +170,11 @@ auxdisplay {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		pinctrl-0 = <&backup_button_pin
-			     &power_button_pin
-			     &reset_button_pin>;
+		pinctrl-0 = <&power_button_pin
+			     &reset_button_pin
+			     &backup_button_pin>;
 		pinctrl-names = "default";
 
-		backup-button {
-			label = "Backup Button";
-			linux,code = <KEY_COPY>;
-			gpios = <&gpio1 20 GPIO_ACTIVE_LOW>;
-		};
-
 		power-button {
 			label = "Power Button";
 			linux,code = <KEY_POWER>;
@@ -181,6 +186,12 @@ reset-button {
 			linux,code = <KEY_RESTART>;
 			gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
 		};
+
+		backup-button {
+			label = "Backup Button";
+			linux,code = <KEY_COPY>;
+			gpios = <&gpio1 20 GPIO_ACTIVE_LOW>;
+		};
 	};
 
 	gpio-poweroff {
@@ -189,18 +200,43 @@ gpio-poweroff {
 		pinctrl-names = "default";
 		gpios = <&gpio1 28 GPIO_ACTIVE_LOW>;
 	};
+
+	/* configure nand partition to store barebox environment */
+	environment {
+      compatible = "barebox,environment";
+      device-path = &nand_controller, "partname:environment";
+	};
+
+	/* configure nand partition to store barebox-state backend */
+	state_nand: nand_state_memory {
+        #address-cells = <1>;
+        #size-cells = <1>;
+        compatible = "barebox,state";
+        magic = <0xab67421f>;
+        backend-type = "raw";
+        backend = <&backend_state_nand>;
+        backend-storage-type = "circular";
+		backend-stridesize = <32>;
+
+        
+        variable@0 {
+                reg = <0x0 0x1>;
+                type ="uint8";
+                default = <0x1>;
+        };
+	};
 };
 
 &pciec {
 	status = "okay";
 
-	/* Connected to FL1009 USB 3.0 controller */
+	/* Connected to Marvell 88SE9170 SATA controller */
 	pcie@1,0 {
 		/* Port 0, Lane 0 */
 		status = "okay";
 	};
 
-	/* Connected to Marvell 88SE9215 SATA controller */
+	/* Connected to FL1009 USB 3.0 controller */
 	pcie@2,0 {
 		/* Port 1, Lane 0 */
 		status = "okay";
@@ -220,8 +256,13 @@ phy1: ethernet-phy@1 { /* Marvell 88E1318 */
 };
 
 &pinctrl {
-	poweroff: poweroff {
-		marvell,pins = "mpp60";
+	power_led_pin: power-led-pin {
+		marvell,pins = "mpp64";
+		marvell,function = "gpio";
+	};
+
+	backup_led_pin: backup-led-pin {
+		marvell,pins = "mpp63";
 		marvell,function = "gpio";
 	};
 
@@ -235,68 +276,62 @@ power_button_pin: power-button-pin {
 		marvell,function = "gpio";
 	};
 
-	backup_led_pin: backup-led-pin {
-		marvell,pins = "mpp63";
-		marvell,function = "gpio";
-	};
-
-	power_led_pin: power-led-pin {
-		marvell,pins = "mpp64";
+	reset_button_pin: reset-button-pin {
+		marvell,pins = "mpp65";
 		marvell,function = "gpio";
 	};
 
-	reset_button_pin: reset-button-pin {
-		marvell,pins = "mpp65";
+	poweroff_pin: poweroff-pin {
+		marvell,pins = "mpp60";
 		marvell,function = "gpio";
 	};
 };
 
 &nand_controller {
+	compatible = "marvell,armada370-nand", "marvell,pxa3xx-nand";
 	status = "okay";
 
-	nand@0 {
-		reg = <0>;
-		label = "pxa3xx_nand-0";
-		nand-rb = <0>;
-		marvell,nand-keep-config;
-		nand-on-flash-bbt;
-
-		/* Use Hardware BCH ECC */
-		nand-ecc-strength = <4>;
-		nand-ecc-step-size = <512>;
-
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				label = "u-boot";
-				reg = <0x0000000 0x180000>;  /* 1.5MB */
-				read-only;
-			};
+	label = <&nand_controller>;
+	nand-rb = <0>;
+	marvell,nand-keep-config;
+	nand-on-flash-bbt;
 
-			partition@180000 {
-				label = "u-boot-env";
-				reg = <0x180000 0x20000>;    /* 128KB */
-				read-only;
-			};
+	/* Use Hardware BCH ECC */
+	nand-ecc-strength = <4>;
+	nand-ecc-step-size = <512>;
 
-			partition@200000 {
-				label = "uImage";
-				reg = <0x0200000 0x600000>;    /* 6MB */
-			};
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
 
-			partition@800000 {
-				label = "minirootfs";
-				reg = <0x0800000 0x400000>;    /* 4MB */
-			};
+		partition@0 {
+			label = "bootloader";
+			reg = <0x0 0x400000>;		 /* 4MB */
+			//read-only;
+		};
 
-			/* Last MB is for the BBT, i.e. not writable */
-			partition@c00000 {
-				label = "ubifs";
-				reg = <0x0c00000 0x7400000>; /* 116MB */
-			};
+		partition@0x400000 {
+			label = "environment";
+			reg = <0x400000 0x80000>;    /* 0.5MB */
+			//read-only;
 		};
+
+		backend_state_nand: partition@0x480000 {
+			label = "state";
+			reg = <0x480000 0x80000>;    /* 0.5MB */
+		};
+
+		partition@0x500000 {
+			label = "kernel";
+			reg = <0x500000 0x1400000>;    /* 20MB */
+		};
+
+		partition@0x1900000 {
+			label = "minirootfs";
+			reg = <0x1900000 0x6000000>;    /* 100MB */
+		};
+
+		/* Last MB is for the BBT, i.e. not writable */
 	};
-};
+};
\ No newline at end of file

-- 
2.47.3




