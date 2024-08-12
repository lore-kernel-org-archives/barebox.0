Delivery-date: Mon, 12 Aug 2024 16:42:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdWFw-008t3R-0n
	for lore@lore.pengutronix.de;
	Mon, 12 Aug 2024 16:42:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdWFv-0006YM-8n
	for lore@pengutronix.de; Mon, 12 Aug 2024 16:42:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=V1mHulURtrUnXHRn9QCp98siCytq456hEneDRU3W4TQ=; b=aBOuD6yY4LfmzH+KLw2TPLhPvO
	SPkSnggO1JdVrZwUiamB2uHMRmjOXh0kb73Dfu0IR6/k060gStRYTn6eg6YCOIwPxpHAcd50dZWvn
	+0tsFYvkvxVtVW4GpPhkNRLKqXZnjRfKLnXnhVoJHYaJ8E5QFSG2GUKl+vxSpGjLI2C7Xi26HI2Ol
	vAvQRaQCdB3H0o1WMq78UohD+F1Xe6lNzrR+AAT5vNYG5qpoVLbzk3Oi8vpJsHqSBA8ie5Lfkq+kd
	/Z+hRAMOwgjqrW4lGAW6pKfmjo3TvZwtEs2u4W/G1yiSzZx/caWIWVy+YgGRfVNPPEFeCyDA03I4f
	MMUYgl1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdWFJ-00000000cOj-3NRb;
	Mon, 12 Aug 2024 14:42:05 +0000
Received: from smtpout35.security-mail.net ([85.31.212.35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdWFF-00000000cMx-2LJE
	for barebox@lists.infradead.org;
	Mon, 12 Aug 2024 14:42:03 +0000
Received: from localhost (fx305.security-mail.net [127.0.0.1])
	by fx305.security-mail.net (Postfix) with ESMTP id F0DBB30EBB1
	for <barebox@lists.infradead.org>; Mon, 12 Aug 2024 16:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1723473718;
	bh=sPsaLFtYm93Y7KGM0m83Kh/yZluM317UUezRyJ/KtiI=;
	h=From:To:Cc:Subject:Date;
	b=JwTHOmiqAmeDCXhJiF6s3RJyKfJe6B9qU4HmpeOCdWIh5Q/71Ox9K3bfGvv/HGg1c
	 wZWpWTiLZSR0Ad0wi+GTPtwbr1tKQiL5m2s3b0ZkTjnUC+GMGQHOMHLrgYJDkYhVWk
	 Wdy0hRjUjMiQRb6uLD/Zx4V2z/12IwHAnjNvcnz4=
Received: from fx305 (fx305.security-mail.net [127.0.0.1]) by
 fx305.security-mail.net (Postfix) with ESMTP id BEEEE30EB55; Mon, 12 Aug
 2024 16:41:57 +0200 (CEST)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx305.security-mail.net (Postfix) with ESMTPS id 1CFF230EAC4; Mon, 12 Aug
 2024 16:41:57 +0200 (CEST)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPS id D532A402CE; Mon, 12 Aug
 2024 16:41:56 +0200 (CEST)
X-Quarantine-ID: <eb1ThmkoC5Pf>
X-Secumail-id: <3d30.66ba1f35.19270.0>
From: Yann Sionneau <ysionneau@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: jvetter@kalrayinc.com, jborne@kalrayinc.com, Yann Sionneau
 <ysionneau@kalrayinc.com>
Date: Mon, 12 Aug 2024 16:41:48 +0200
Message-ID: <20240812144150.27707-1-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_074202_047432_E86DDD25 
X-CRM114-Status: GOOD (  10.41  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] kvx: add qemu dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add qemu dts that will mostly be used to run test in CI.

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---
 arch/kvx/Kconfig                   |   3 +
 arch/kvx/configs/generic_defconfig |   1 +
 arch/kvx/dts/Makefile              |   1 +
 arch/kvx/dts/qemu.dts              | 269 +++++++++++++++++++++++++++++
 4 files changed, 274 insertions(+)
 create mode 100644 arch/kvx/dts/qemu.dts

diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 2e6432f897..9251a877fd 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -64,6 +64,9 @@ choice
 config BOARD_K200
 	bool "K200 Network card"
 
+config BOARD_QEMU
+	bool "Coolidge on Qemu"
+
 endchoice
 
 endmenu
diff --git a/arch/kvx/configs/generic_defconfig b/arch/kvx/configs/generic_defconfig
index 0d971ff3d5..7f1235b6d2 100644
--- a/arch/kvx/configs/generic_defconfig
+++ b/arch/kvx/configs/generic_defconfig
@@ -11,3 +11,4 @@ CONFIG_CLOCKSOURCE_KVX=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_KVX=y
 CONFIG_PINCTRL_SINGLE=y
+CONFIG_BOARD_QEMU=y
diff --git a/arch/kvx/dts/Makefile b/arch/kvx/dts/Makefile
index 41613033ce..fcb5a4ef39 100644
--- a/arch/kvx/dts/Makefile
+++ b/arch/kvx/dts/Makefile
@@ -10,5 +10,6 @@ obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 endif
 
 obj-$(CONFIG_BOARD_K200) += k200.dtb.o
+obj-$(CONFIG_BOARD_QEMU) += qemu.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/kvx/dts/qemu.dts b/arch/kvx/dts/qemu.dts
new file mode 100644
index 0000000000..68d242c113
--- /dev/null
+++ b/arch/kvx/dts/qemu.dts
@@ -0,0 +1,269 @@
+/dts-v1/;
+
+/ {
+	model = "Kalray Coolidge processor (QEMU)";
+	#address-cells = <0x02>;
+	#size-cells = <0x02>;
+	compatible = "kalray,coolidge\0kalray,iss";
+
+	chosen {
+		stdout-path = "/axi/uart0@20210000";
+	};
+
+	memory@0 {
+		reg = <0x00 0x00 0x00 0x400000>;
+		device_type = "memory";
+	};
+
+	apic_mailbox: apic-mailbox@a00000 {
+		msi-controller;
+		interrupts = <0x00 0x01 0x02 0x03 0x04 0x05 0x06 0x07 0x08 0x09 0x0a 0x0b 0x0c 0x0d 0x0e 0x0f 0x10 0x11 0x12 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 0x1f 0x20 0x21 0x22 0x23 0x24 0x25 0x26 0x27 0x28 0x29 0x2a 0x2b 0x2c 0x2d 0x2e 0x2f 0x30 0x31 0x32 0x33 0x34 0x35 0x36 0x37 0x38 0x39 0x3a 0x3b 0x3c 0x3d 0x3e 0x3f 0x40 0x41 0x42 0x43 0x44 0x45 0x46 0x47 0x48 0x49 0x4a 0x4b 0x4c 0x4d 0x4e 0x4f 0x50 0x51 0x52 0x53 0x54 0x55 0x56 0x57 0x58 0x59 0x5a 0x5b 0x5c 0x5d 0x5e 0x5f 0x60 0x61 0x62 0x63 0x64 0x65 0x66 0x67 0x68 0x69 0x6a 0x6b 0x6c 0x6d 0x6e 0x6f 0x70 0x71 0x72 0x73 0x74 0x75 0x76 0x77 0x78>;
+		interrupt-parent = <&apic_gic>;
+		#interrupt-cells = <0x00>;
+		interrupt-controller;
+		reg = <0x00 0xa00000 0x00 0x10000>;
+		compatible = "kalray,kvx-apic-mailbox";
+	};
+
+	apic_gic: apic-gic@a20000 {
+		interrupts = <0x04 0x05 0x06 0x07>;
+		interrupt-parent = <&core_intc>;
+		#interrupt-cells = <0x01>;
+		interrupt-controller;
+		reg = <0x00 0xa20000 0x00 0x12000>;
+		compatible = "kalray,kvx-apic-gic";
+	};
+
+	pwr_ctrl: pwr-ctrl@a40000 {
+		reg = <0x00 0xa40000 0x00 0x4188>;
+		compatible = "kalray,kvx-pwr-ctrl";
+	};
+
+	dsu-clock@a44180 {
+		clocks = <&core_clk>;
+		reg = <0x00 0xa44180 0x00 0x08>;
+		compatible = "kalray,kvx-dsu-clock";
+	};
+
+	ipi-ctrl@ad0000 {
+		interrupts = <0x18>;
+		interrupt-parent = <&core_intc>;
+		reg = <0x00 0xad0000 0x00 0x1000>;
+		compatible = "kalray,kvx-ipi-ctrl";
+	};
+
+	axi {
+		ranges;
+		#address-cells = <0x02>;
+		#size-cells = <0x02>;
+		compatible = "simple-bus";
+
+		uart0@20210000 {
+			reg-shift = <0x02>;
+			reg-io-width = <0x04>;
+			clocks = <&ref_clk>;
+			interrupts = <0x29 0x04>;
+			interrupt-parent = <&itgen_socp_0>;
+			reg = <0x00 0x20210000 0x00 0x100>;
+			compatible = "snps,dw-apb-uart";
+		};
+
+		uart1@20211000 {
+			reg-shift = <0x02>;
+			reg-io-width = <0x04>;
+			clocks = <&ref_clk>;
+			interrupts = <0x2a 0x04>;
+			interrupt-parent = <&itgen_socp_0>;
+			reg = <0x00 0x20211000 0x00 0x100>;
+			compatible = "snps,dw-apb-uart";
+		};
+
+		uart2@20212000 {
+			reg-shift = <0x02>;
+			reg-io-width = <0x04>;
+			clocks = <&ref_clk>;
+			interrupts = <0x2b 0x04>;
+			interrupt-parent = <&itgen_socp_0>;
+			reg = <0x00 0x20212000 0x00 0x100>;
+			compatible = "snps,dw-apb-uart";
+		};
+
+		uart3@20213000 {
+			reg-shift = <0x02>;
+			reg-io-width = <0x04>;
+			clocks = <&ref_clk>;
+			interrupts = <0x2c 0x04>;
+			interrupt-parent = <&itgen_socp_0>;
+			reg = <0x00 0x20213000 0x00 0x100>;
+			compatible = "snps,dw-apb-uart";
+		};
+
+		uart4@20214000 {
+			reg-shift = <0x02>;
+			reg-io-width = <0x04>;
+			clocks = <&ref_clk>;
+			interrupts = <0x2d 0x04>;
+			interrupt-parent = <&itgen_socp_0>;
+			reg = <0x00 0x20214000 0x00 0x100>;
+			compatible = "snps,dw-apb-uart";
+		};
+
+		uart5@20215000 {
+			reg-shift = <0x02>;
+			reg-io-width = <0x04>;
+			clocks = <&ref_clk>;
+			interrupts = <0x2e 0x04>;
+			interrupt-parent = <&itgen_socp_0>;
+			reg = <0x00 0x20215000 0x00 0x100>;
+			compatible = "snps,dw-apb-uart";
+		};
+
+		itgen_socp_0: itgen-soc-periph0@27000000 {
+			msi-parent = <&apic_mailbox>;
+			#interrupt-cells = <0x02>;
+			interrupt-controller;
+			reg = <0x00 0x27000000 0x00 0x1104>;
+			compatible = "kalray,kvx-itgen";
+		};
+
+		itgen_socp_1: itgen-soc-periph1@27010000 {
+			msi-parent = <&apic_mailbox>;
+			#interrupt-cells = <0x02>;
+			interrupt-controller;
+			reg = <0x00 0x27010000 0x00 0x1104>;
+			compatible = "kalray,kvx-itgen";
+		};
+	};
+
+	memory@100000000 {
+		reg = <0x01 0x00 0x00 0x80000000>;
+		device_type = "memory";
+	};
+
+	ftu@10181000 {
+		reg = <0x00 0x10181000 0x00 0x418>;
+		compatible = "kalray,kvx-syscon";
+	};
+
+	core_intc: core-intc {
+		#interrupt-cells = <0x01>;
+		interrupt-controller;
+		compatible = "kalray,kvx-core-intc";
+	};
+
+	core-timer {
+		clocks = <&core_clk>;
+		interrupts = <0x00>;
+		interrupt-parent = <&core_intc>;
+		compatible = "kalray,kvx-core-timer";
+	};
+
+	core-watchdog {
+		clocks = <&core_clk>;
+		interrupts = <0x02>;
+		interrupt-parent = <&core_intc>;
+		compatible = "kalray,kvx-core-watchdog";
+	};
+
+	clocks {
+
+		core_clk: core-clk {
+			clock-frequency = <1000000>;
+			#clock-cells = <0x00>;
+			compatible = "fixed-clock";
+		};
+
+		ref_clk: ref-clk {
+			clock-frequency = <0x5f5e100>;
+			#clock-cells = <0x00>;
+			compatible = "fixed-clock";
+		};
+	};
+
+	cpus {
+		#address-cells = <0x01>;
+		#size-cells = <0x00>;
+
+		cpu@0 {
+			power-controller = <&pwr_ctrl>;
+			clocks = <&core_clk>;
+			reg = <0x00>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@1 {
+			reg = <0x01>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@2 {
+			reg = <0x02>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@3 {
+			reg = <0x03>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@4 {
+			reg = <0x04>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@5 {
+			reg = <0x05>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@6 {
+			reg = <0x06>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@7 {
+			reg = <0x07>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@8 {
+			reg = <0x08>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@9 {
+			reg = <0x09>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@10 {
+			reg = <0x0a>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@11 {
+			reg = <0x0b>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@12 {
+			reg = <0x0c>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@13 {
+			reg = <0x0d>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@14 {
+			reg = <0x0e>;
+			compatible = "kalray,kvx-pe";
+		};
+
+		cpu@15 {
+			reg = <0x0f>;
+			compatible = "kalray,kvx-pe";
+		};
+	};
+};
-- 
2.34.1







