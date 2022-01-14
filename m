Delivery-date: Fri, 14 Jan 2022 17:56:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PsW-002DPX-6N
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 17:56:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PsU-0005C3-7C
	for lore@pengutronix.de; Fri, 14 Jan 2022 17:56:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UXx+BhJ3DysD7+HrgJoO7yXaY4RFHRyrwvSru8EOKU8=; b=PbAb4LuvUK44ef
	k6w4GLSK0/Jfscg0sKFUnQzw5tOAEeQYGWRFrVFKeVcdIhpVe6vpU/W6ruWsAwQpesrWkEzTvJ8di
	HMZ4oYoipcPL1onZ0dlcBZVaY4f/PiDmVI36JaAjn9nmwpdcavmsujmuSP6qHo8fh0Z8eddxx/jqU
	pq4dLet3aC91xaHVp5Gim5GIzl1fOa6CvEZwL/yvHxNo+PFmuLyVbaVJass+hYLlPT4j9MXxPK5hH
	7/zABDGuykcf5Mk5OYYAWqpOTMniXvyvEAfHNfL8788bnhMtXQCYYGWIggGQ3QjUBhuPM7mH9DIsk
	cjGCbdOxuPX64f5iwQyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8PrD-009rwg-Kb; Fri, 14 Jan 2022 16:55:19 +0000
Received: from mxout.security-mail.net ([85.31.212.46]
 helo=fx303.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Pqz-009rpl-5M
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 16:55:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx303.security-mail.net (Postfix) with ESMTP id E68DF1C32BC
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 17:54:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642179299;
 bh=6YTxO40JsPjgHueSDheskEwNz0DHjnwrOQ0KFfMq6pM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=GP+Ancr0RfwMXj8WrksHNJbe9iR4Zd8zQbYwXD5elSuLpcC4rep5bVsmeYKlVLj6s
 bO9vEdBBpicJ2Ko8hXTM11DGDjFVT5YcQlwBIoWxUUSpRiAnvI/ZlIS82iRDsN4nY6
 369dqFxET9RNVrYBS+ICL0B+rly1iF5DDnJBYzlI=
Received: from fx303 (localhost [127.0.0.1])
 by fx303.security-mail.net (Postfix) with ESMTP id 77E701C3215;
 Fri, 14 Jan 2022 17:54:58 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <e83b.61e1aae2.1c27d.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx303.security-mail.net (Postfix) with ESMTPS id 1D91F1C30FA;
 Fri, 14 Jan 2022 17:54:58 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id F28F827E03F5;
 Fri, 14 Jan 2022 17:54:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id DD07327E03A2;
 Fri, 14 Jan 2022 17:54:57 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu DD07327E03A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642179297;
 bh=BXtPLioyYoILadub1GCaVXwWpDWjSswhcXx1JfFC/t0=;
 h=From:To:Date:Message-Id;
 b=qVV/S5dXXvx0k//7T1u4p0MHv1HiLF4xL+PLFOqSfTzhXybpRlYpWTqFEgs9MxCkd
 0Tj0jRRZymqwWnaRhAJYysrrSiMUOvTArxWHCq9bMPRz5AoFprZrqCbEhLxuMVb0K+
 4UT+ABwIyKfUjbs/aoOHRxOR9TwxZ/qSj7reKhqM=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 5M3zF6EAKoXv; Fri, 14 Jan 2022 17:54:57 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id B591C27E03CB;
 Fri, 14 Jan 2022 17:54:57 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri, 14 Jan 2022 17:54:56 +0100
Message-Id: <20220114165456.10542-4-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220114165456.10542-1-jmaselbas@kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
 <20220114165456.10542-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_085505_541070_C2902EDE 
X-CRM114-Status: UNSURE (   7.89  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/13] kvx: dts: Update k200.dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/dts/k200.dts | 426 ++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 410 insertions(+), 16 deletions(-)

diff --git a/arch/kvx/dts/k200.dts b/arch/kvx/dts/k200.dts
index d463ffda50..e83a08b462 100644
--- a/arch/kvx/dts/k200.dts
+++ b/arch/kvx/dts/k200.dts
@@ -3,6 +3,8 @@
  * Copyright (C) 2019 Kalray, Inc.
  */
 
+#include <dt-bindings/interrupt-controller/irq.h>
+
 /dts-v1/;
 
 / {
@@ -15,7 +17,7 @@
 	/* Standard nodes (choosen, cpus, memory, etc) */
 	chosen {
 		bootargs = "earlycon norandmaps console=ttyS0";
-		stdout-path = &serial0;
+		stdout-path = &uart0;
 	};
 
 	cpus {
@@ -46,6 +48,13 @@
 			/* 1 GHz clock */
 			clock-frequency = <1000000000>;
 		};
+
+		socp_clk: socp_clk@0 {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+			/* 480 MHz clock */
+			clock-frequency = <480000000>;
+		};
 	};
 
 	ddr: memory@100000000 {
@@ -60,44 +69,147 @@
 		reg = <0x0 0x0 0x0 0x400000>;
 	};
 
+	core_intc: core_intc@0 {
+		compatible = "kalray,kvx-core-intc";
+		#address-cells = <0>;
+		#interrupt-cells = <1>;
+		interrupt-controller;
+	};
+
+	ipi_ctrl: ipi_ctrl@ad0000 {
+		compatible = "kalray,kvx-ipi-ctrl";
+		reg = <0x0 0xad0000 0x0 0x1000>;
+		interrupt-parent = <&core_intc>;
+		interrupts = <24>;
+	};
+
+	apic_gic: apic_gic@a20000 {
+		compatible = "kalray,kvx-apic-gic";
+		reg = <0x0 0xa20000 0x0 0x12000>;
+		#address-cells = <0>;
+		interrupt-parent = <&core_intc>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		interrupts = <4 5 6 7>;
+	};
+
+	apic_mailbox: apic_mailbox@a00000 {
+		compatible = "kalray,kvx-apic-mailbox";
+		reg = <0x0 0xa00000 0x0 0xea00>;
+		#address-cells = <0>;
+		interrupt-parent = <&apic_gic>;
+		interrupt-controller;
+		#interrupt-cells = <0>;
+		interrupts = <0 1 2 3 4 5 6 7 8 9
+			      10 11 12 13 14 15 16 17 18 19
+			      20 21 22 23 24 25 26 27 28 29
+			      30 31 32 33 34 35 36 37 38 39
+			      40 41 42 43 44 45 46 47 48 49
+			      50 51 52 53 54 55 56 57 58 59
+			      60 61 62 63 64 65 66 67 68 69
+			      70 71 72 73 74 75 76 77 78 79
+			      80 81 82 83 84 85 86 87 88 89
+			      90 91 92 93 94 95 96 97 98 99
+			      100 101 102 103 104 105 106 107 108 109
+			      110 111 112 113 114 115 116>;
+		msi-controller;
+	};
+
+	dame_handler {
+		/* Data Asynchronous Memory Error handler */
+		compatible = "kalray,kvx-dame-handler";
+		interrupt-parent = <&core_intc>;
+		interrupts = <16>;
+	};
+
 	core_timer {
 		compatible = "kalray,kvx-core-timer";
+		interrupts = <0>;
+		interrupt-parent = <&core_intc>;
 		clocks = <&core_clk>;
 	};
 
 	core_watchdog {
 		compatible = "kalray,kvx-core-watchdog";
+		interrupts = <2>;
+		interrupt-parent = <&core_intc>;
+		clocks = <&core_clk>;
+	};
+
+	core_pm {
+		compatible = "kalray,kvx-core-pm";
+		interrupts = <3>;
+		interrupt-parent = <&core_intc>;
+		kalray,pm-num = <4>;
+	};
+
+	pwr_ctrl0: pwr_ctrl@a40000 {
+		reg = <0x0 0xa40000 0x0 0x4158>;
+		compatible = "kalray,kvx-pwr-ctrl";
+	};
+
+	power_off {
+		compatible = "kalray,kvx-scall-poweroff";
+	};
+
+	dsu_clock {
+		compatible = "kalray,kvx-dsu-clock";
+		reg = <0x0 0xa44180 0x0 0x8>;
 		clocks = <&core_clk>;
 	};
 
-	axi {
+	axi: axi {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
 
 		ranges;
+		dma-ranges;
+
+		iommu_soc_periph: iommu_soc_periph@27020000 {
+			compatible = "kalray,kvx-iommu";
+			reg = <0x0 0x27020000 0x0 0x00000240>,
+				<0x0 0x27020800 0x0 0x00000240>;
+			reg-names = "tx", "rx";
+			interrupts = <10 IRQ_TYPE_LEVEL_HIGH>, <0 IRQ_TYPE_LEVEL_HIGH>, <5 IRQ_TYPE_LEVEL_HIGH>,
+				     <25 IRQ_TYPE_LEVEL_HIGH>, <15 IRQ_TYPE_LEVEL_HIGH>, <20 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "rx_nomapping", "rx_protection", "rx_parity",
+					  "tx_nomapping", "tx_protection", "tx_parity";
+			interrupt-parent = <&itgen_soc_periph1>;
+			#iommu-cells = <1>;
+		};
+
+		itgen_soc_periph0: itgen_soc_periph0@27000000 {
+			compatible = "kalray,kvx-itgen";
+			reg = <0x0 0x27000000 0x0 0x1104>;
+			#address-cells = <0>;
+			msi-parent = <&apic_mailbox>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		itgen_soc_periph1: itgen_soc_periph1@27010000 {
+			compatible = "kalray,kvx-itgen";
+			reg = <0x0 0x27010000 0x0 0x1104>;
+			#address-cells = <0>;
+			msi-parent = <&apic_mailbox>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
 
 		ftu: ftu@10181000 {
 			compatible = "kalray,kvx-syscon", "syscon";
 			reg = <0x0 0x10181000 0x0 0x410>;
 		};
 
-		pmx_gpio0: pinmux@20230008 {
-			compatible = "pinctrl-single";
-			reg = <0x0 0x20230008 0x0 0x4>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			#pinctrl-cells = <2>;
-			pinctrl-single,bit-per-mux;
-			pinctrl-single,register-width = <32>;
-			pinctrl-single,function-mask = <0x1>;
-
-			uart0_pins: pinmux_uart0_pins {
-				pinctrl-single,bits = <0x00 0x00000003 0x00000003>;
-			};
+		reboot: reboot@0 {
+			compatible = "syscon-reboot";
+			regmap = <&ftu>;
+			offset = <0x50>;
+			value = <0x1>;
 		};
 
-		serial0: uart0@20210000 {
+		uart0: uart0@20210000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x0 0x20210000 0x0 0x100>;
 			clocks = <&ref_clk>;
@@ -105,6 +217,288 @@
 			reg-shift = <2>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&uart0_pins>;
+			interrupt-parent = <&itgen_soc_periph0>;
+			interrupts = <41 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		uart1: uart1@20211000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x0 0x20211000 0x0 0x100>;
+			clocks = <&ref_clk>;
+			reg-io-width = <4>;
+			reg-shift = <2>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart1_pins>;
+			interrupt-parent = <&itgen_soc_periph0>;
+			interrupts = <42 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		uart2: uart2@20212000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x0 0x20212000 0x0 0x100>;
+			clocks = <&ref_clk>;
+			reg-io-width = <4>;
+			reg-shift = <2>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart2_pins>;
+			interrupt-parent = <&itgen_soc_periph0>;
+			interrupts = <43 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		uart3: uart3@20213000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x0 0x20213000 0x0 0x100>;
+			clocks = <&ref_clk>;
+			reg-io-width = <4>;
+			reg-shift = <2>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart3_pins>;
+			interrupt-parent = <&itgen_soc_periph0>;
+			interrupts = <44 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		uart4: uart4@20214000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x0 0x20214000 0x0 0x100>;
+			clocks = <&ref_clk>;
+			reg-io-width = <4>;
+			reg-shift = <2>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart4_pins>;
+			interrupt-parent = <&itgen_soc_periph0>;
+			interrupts = <45 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		uart5: uart5@20215000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x0 0x20215000 0x0 0x100>;
+			clocks = <&ref_clk>;
+			reg-io-width = <4>;
+			reg-shift = <2>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart5_pins>;
+			interrupt-parent = <&itgen_soc_periph0>;
+			interrupts = <46 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		timers0: timers0@20220000 {
+			compatible = "snps,dw-apb-timer";
+			reg = <0x0 0x20220000 0x0 0xD0>;
+			clocks = <&ref_clk>;
+		};
+
+		timers4: timers4@20224000 {
+			compatible = "snps,dw-apb-timer";
+			reg = <0x0 0x20224000 0x0 0xD0>;
+			clocks = <&ref_clk>;
+		};
+
+		otp_nv: otp_nv_regs@d20000 {
+			reg = <0x0 0xd20000 0x0 0xe0>;
+			compatible = "kalray,kvx-otp-nv";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ft_fuse: ft_fuse@cc {
+				reg = <0xcc 0x4>;
+			};
+			ews_fuse: ews_fuse@d8 {
+				reg = <0xd8 0x8>;
+			};
+		};
+
+		kvx_socinfo: kvx_socinfo@0 {
+			compatible = "kalray,kvx-socinfo";
+			nvmem-cells = <&ews_fuse>, <&ft_fuse>;
+			nvmem-cell-names = "ews_fuse", "ft_fuse";
+		};
+
+		ahb {
+			compatible = "simple-bus";
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+			dma-ranges = <0x0 0x80000000 0x1 0x00000000 0x0 0x80000000>;
+
+			usb0: usb0@20080000 {
+				compatible = "kalray,kvx-hsotg", "snps,dwc2";
+				reg = <0x0 0x20080000 0x0 0x40000>;
+				clocks = <&socp_clk>;
+				clock-names = "otg";
+				dr_mode = "otg";
+				interrupt-parent = <&itgen_soc_periph0>;
+				interrupts = <4 IRQ_TYPE_LEVEL_HIGH>;
+				g-rx-fifo-size = <2048>;
+				g-np-tx-fifo-size = <512>;
+				g-tx-fifo-size = <512 512 512 512 512 512 512 512>;
+				iommus = <&iommu_soc_periph 0x18>;
+			};
+
+			usb1: usb1@20100000 {
+				compatible = "kalray,kvx-hsotg", "snps,dwc2";
+				reg = <0x0 0x20100000 0x0 0x40000>;
+				clocks = <&socp_clk>;
+				clock-names = "otg";
+				dr_mode = "otg";
+				interrupt-parent = <&itgen_soc_periph0>;
+				interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
+				g-rx-fifo-size = <2048>;
+				g-np-tx-fifo-size = <512>;
+				g-tx-fifo-size = <512 512 512 512 512 512 512 512>;
+				iommus = <&iommu_soc_periph 0x28>;
+			};
+		};
+
+		apb {
+			compatible = "simple-bus";
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			gpio0: gpio@20230000 {
+				compatible = "snps,dw-apb-gpio";
+				reg = <0x0 0x20230000 0x0 0x1000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				gpio0_banka: gpio-controller@0 {
+					compatible = "snps,dw-apb-gpio-port";
+					#address-cells = <0>;
+					gpio-controller;
+					#gpio-cells = <2>;
+					snps,nr-gpios = <32>;
+					snps,has-pinctrl;
+					reg = <0>;
+					interrupt-parent = <&itgen_soc_periph0>;
+					interrupts = <23 IRQ_TYPE_LEVEL_HIGH>;
+					/* All pins of port A are interrupt capable */
+					interrupt-controller;
+					#interrupt-cells = <2>;
+
+					uart0_pins: pinmux_uart0_pins {
+						function = "hw";
+						pins = "pin0", "pin1";
+					};
+					uart1_pins: pinmux_uart1_pins {
+						function = "hw";
+						pins = "pin2", "pin3";
+					};
+					uart2_pins: pinmux_uart2_pins {
+						function = "hw";
+						pins = "pin4", "pin5";
+					};
+					can0_pins: pinmux_can0_pins {
+						function = "hw";
+						pins = "pin6", "pin7";
+					};
+					can1_pins: pinmux_can1_pins {
+						function = "hw";
+						pins = "pin8", "pin9";
+					};
+					i2c0_pins: pinmux_i2c0_pins {
+						function = "hw";
+						pins = "pin10", "pin11";
+					};
+					smb1_pins: pinmux_smb1_pins {
+						function = "hw";
+						pins = "pin12", "pin13";
+					};
+					smb2_pins: pinmux_smb2_pins {
+						function = "hw";
+						pins = "pin14", "pin15";
+					};
+					qspi0_master_pins:pinmux_qspi0_master_pins {
+						function = "hw";
+						pins = "pin18", "pin19", "pin20", "pin21", "pin22", "pin23", "pin24";
+					};
+					spi_slave_pins:pinmux_spi_slave_pins {
+						function = "hw";
+						pins = "pin25", "pin26", "pin27", "pin28";
+					};
+					timer0_pins:pinmux_timer0_pins {
+						function = "hw";
+						pins = "pin29";
+					};
+					timer1_pins:pinmux_timer1_pins {
+						function = "hw";
+						pins = "pin30";
+					};
+					timer2_pins:pinmux_timer2_pins {
+						function = "hw";
+						pins = "pin31";
+					};
+				};
+			};
+
+			gpio1: gpio@20231000 {
+				compatible = "snps,dw-apb-gpio";
+				reg = <0x0 0x20231000 0x0 0x1000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				gpio1_banka: gpio-controller@0 {
+					compatible = "snps,dw-apb-gpio-port";
+					#address-cells = <0>;
+					gpio-controller;
+					#gpio-cells = <2>;
+					snps,nr-gpios = <32>;
+					snps,has-pinctrl;
+					reg = <0>;
+					interrupt-parent = <&itgen_soc_periph0>;
+					interrupts = <24 IRQ_TYPE_LEVEL_HIGH>;
+					/* All pins of port A are interrupt capable */
+					interrupt-controller;
+					#interrupt-cells = <2>;
+
+					uart3_pins: pinmux_uart3_pins {
+						function = "hw";
+						pins = "pin0", "pin1";
+					};
+					uart4_pins: pinmux_uart4_pins {
+						function = "hw";
+						pins = "pin2", "pin3";
+					};
+					uart5_pins: pinmux_uart5_pins {
+						function = "hw";
+						pins = "pin4", "pin5";
+					};
+					can2_pins: pinmux_can2_pins {
+						function = "hw";
+						pins = "pin6", "pin7";
+					};
+					can3_pins: pinmux_can3_pins {
+						function = "hw";
+						pins = "pin8", "pin9";
+					};
+					i2c3_pins: pinmux_i2c3_pins {
+						function = "hw";
+						pins = "pin10", "pin11";
+					};
+					smb4_pins: pinmux_smb4_pins {
+						function = "hw";
+						pins = "pin12", "pin13";
+					};
+					timer3_pins:pinmux_timer3_pins {
+						function = "hw";
+						pins = "pin15";
+					};
+					timer4_pins:pinmux_timer4_pins {
+						function = "hw";
+						pins = "pin16";
+					};
+					timer5_pins:pinmux_timer5_pins {
+						function = "hw";
+						pins = "pin17";
+					};
+					qspi1_master_pins:pinmux_qspi1_master_pins {
+						function = "hw";
+						pins = "pin18", "pin19", "pin20", "pin21", "pin22", "pin23", "pin24";
+					};
+					qspi2_master_pins:pinmux_qspi2_master_pins {
+						function = "hw";
+						pins = "pin25", "pin26", "pin27", "pin28", "pin29", "pin30", "pin31";
+					};
+				};
+			};
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

