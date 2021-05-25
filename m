Delivery-date: Tue, 25 May 2021 09:23:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRPX-0008G1-R5
	for lore@lore.pengutronix.de; Tue, 25 May 2021 09:23:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRPW-0004Cj-6b
	for lore@pengutronix.de; Tue, 25 May 2021 09:23:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8a8YaPKS6hu6ypnJ8oGNZLJhxGgp8hMVCJnyoqecVU=; b=g1pJdsJaCOcY26
	8TBaCHCiX1pnTZ5cBNGLjfHY2LccN0chkdiqUdgWm1l33Q6mNp0cxEWI055sp1zi6RTIuoIgiNyh+
	6UA5D5ewEtUKwuVR00Svns6GdYMNRT5YdDyPSTOzCAYHlHe6jGrv4MeDirZCaUxjqnUTroGjf1QDL
	2663UnAjbhBP+n6p19fFi2LSxR15ZvxsEUYjem6uQKqgDdGvQkVCT59K5FAZ/m8W8vNPXO8O2h6jt
	cIhXMJwus1USB3QIxelCCFIDc2kS6V3M7nKffI8syZiKwE2f0ouvCSs4dFN00dffIzQzag3QXwR/H
	rVN+utocRVPTkmL+IOiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llRO7-003qeZ-C0; Tue, 25 May 2021 07:22:04 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llRMK-003pqf-Aw
 for barebox@lists.infradead.org; Tue, 25 May 2021 07:20:16 +0000
Received: by mail-lf1-x12e.google.com with SMTP id i9so44474782lfe.13
 for <barebox@lists.infradead.org>; Tue, 25 May 2021 00:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J6B1WyAlZdmVdwFNy8qRD1vZsHoQGQEOoKkXkTkT3/4=;
 b=KIr+yLSEExkJFaW7y4ozrHmFI3lwjZlhvLYS0CN2eIihUZQ4DMcCbn7OH16Cd7Yc90
 Z1N5WI1yagOzqGgsTBHAJPTjQPlaHGkpM27KYrxkqhTFIrK3UrBA1zg7gGX9Rq6svy4J
 t8WVGwb3a53wep1wIgUH4WPcPhhmF3E/KWi6Nuzgepxgn8IK0xdCjdupVVJBVixrtfW2
 2qYMY2exC3CIBzNoEzoM2JX6C1thBZl8wVqxgYifMZzx216m52J3GbEWOm60AT+psdWN
 DAG9cu3jMXqN7ucAECFHnOuVu3UGWO7B2cgKZRRY3CY0/pLp0vMRROw6R+rqkJMtJ/gb
 c8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J6B1WyAlZdmVdwFNy8qRD1vZsHoQGQEOoKkXkTkT3/4=;
 b=lzmIEQbaLwO8nXnrar2JoLze57ty8XPqdYgcBM+NMmENYFf2DquZwVDa5ZaiRLYYj2
 9uIUBDof42SU95ncUsH8/KEv3BsCEeapz7yZPtrzJ2TfYbD3VSgeUIYUj4ahNJRA4EC6
 WPfPG08axvkS6BGWscRay6NB06hIKaeM5LLTHyMotr3aI0XUjwczgY8yfg26gD6utLq4
 pSLq8yDmtMbuTGdMYbnL1DrKlywgrcjL2I82Uc0ZiSmqpLCmbOBmV1/p7RMNP4uVGoKO
 vZxwIEwLUmt2qL1rSX/n6PEG6pAczdddghzyf27bM6wc8Bygp4Cp6QOZcRrDiWczj7ky
 3hnQ==
X-Gm-Message-State: AOAM531kJHv+7EnaWlC8iFw/VrvKIDvkvHL2Ymi3ihgpMnDdE9b0iEwY
 Kt510zSfL6ZRXNFZmjOZ+oGmNgRjhgCY0w==
X-Google-Smtp-Source: ABdhPJxZuifNCjCw7diQiJcR0lJvEgtWtzjcD2Sw9vweSMw+pH8FyW5m42mEUg7qg6tZ7dp0NZMCJw==
X-Received: by 2002:a05:6512:39cf:: with SMTP id
 k15mr8702206lfu.317.1621927210202; 
 Tue, 25 May 2021 00:20:10 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id f36sm1641387lfv.248.2021.05.25.00.20.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 00:20:09 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 May 2021 10:19:51 +0300
Message-Id: <20210525071952.18045-10-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210525071952.18045-1-antonynpavlov@gmail.com>
References: <20210525071952.18045-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_002012_457390_558BC8FC 
X-CRM114-Status: GOOD (  22.06  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 09/10] RISC-V: add LiteX SoC and linux-on-litex-vexriscv
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

LiteX is a Migen-based System on Chip, supporting softcore
VexRiscv CPU, a 32-bits Linux Capable RISC-V CPU.

See https://github.com/enjoy-digital/litex and
https://github.com/litex-hub/linux-on-litex-vexriscv
for details.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig.socs                  |  14 +++
 arch/riscv/boards/Makefile               |   1 +
 arch/riscv/boards/litex-linux/Makefile   |   3 +
 arch/riscv/boards/litex-linux/lowlevel.c |  22 ++++
 arch/riscv/dts/Makefile                  |   1 +
 arch/riscv/dts/litex-linux.dts           |  92 +++++++++++++++++
 arch/riscv/dts/litex_soc_linux.dtsi      |  49 +++++++++
 arch/riscv/include/asm/debug_ll.h        |   3 +
 arch/riscv/include/asm/debug_ll_litex.h  | 123 +++++++++++++++++++++++
 common/Kconfig                           |   4 +
 images/Makefile.riscv                    |   4 +
 11 files changed, 316 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 67d19caeb3..3ae66776f0 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -42,4 +42,18 @@ config BOARD_HIFIVE
 
 endif
 
+config SOC_LITEX
+	bool "LiteX SoCs"
+	depends on ARCH_RV32I
+	select HAS_ASM_DEBUG_LL
+	select HAS_NMON
+	select USE_COMPRESSED_DTB
+	select RISCV_TIMER
+
+config BOARD_LITEX_LINUX
+	bool "litex linux board"
+	depends on SOC_LITEX
+	select RISCV_M_MODE
+	def_bool y
+
 endmenu
diff --git a/arch/riscv/boards/Makefile b/arch/riscv/boards/Makefile
index 99f22f32b4..0468871fde 100644
--- a/arch/riscv/boards/Makefile
+++ b/arch/riscv/boards/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_BOARD_ERIZO_GENERIC)	+= erizo/
 obj-$(CONFIG_BOARD_HIFIVE)		+= hifive/
+obj-$(CONFIG_BOARD_LITEX_LINUX)		+= litex-linux/
diff --git a/arch/riscv/boards/litex-linux/Makefile b/arch/riscv/boards/litex-linux/Makefile
new file mode 100644
index 0000000000..3d217ffe0b
--- /dev/null
+++ b/arch/riscv/boards/litex-linux/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+pbl-y += lowlevel.o
diff --git a/arch/riscv/boards/litex-linux/lowlevel.c b/arch/riscv/boards/litex-linux/lowlevel.c
new file mode 100644
index 0000000000..da23ef5633
--- /dev/null
+++ b/arch/riscv/boards/litex-linux/lowlevel.c
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <asm/barebox-riscv.h>
+#include <debug_ll.h>
+#include <asm/riscv_nmon.h>
+
+ENTRY_FUNCTION(start_litex_linux, a0, a1, a2)
+{
+	extern char __dtb_z_litex_linux_start[];
+	void *fdt;
+
+	barebox_nmon_entry();
+
+	putc_ll('>');
+
+	/* On POR, we are running from read-only memory here. */
+
+	fdt = __dtb_z_litex_linux_start + get_runtime_offset();
+
+	barebox_riscv_machine_entry(0x40000000, SZ_256M, fdt);
+}
diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
index 17fdc9445b..683038189f 100644
--- a/arch/riscv/dts/Makefile
+++ b/arch/riscv/dts/Makefile
@@ -7,5 +7,6 @@ obj- += dummy.o
 pbl-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
 pbl-$(CONFIG_BOARD_HIFIVE) += hifive-unmatched-a00.dtb.o \
                               hifive-unleashed-a00.dtb.o
+pbl-$(CONFIG_BOARD_LITEX_LINUX) += litex-linux.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
diff --git a/arch/riscv/dts/litex-linux.dts b/arch/riscv/dts/litex-linux.dts
new file mode 100644
index 0000000000..d21fa57e30
--- /dev/null
+++ b/arch/riscv/dts/litex-linux.dts
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include "litex_soc_linux.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "LiteX VexRiscV-SoC-Linux";
+	compatible = "litex,vexriscv-soc-linux";
+
+	aliases {
+		rom = &rom;
+		sram = &sram;
+	};
+
+	/* ARTY board */
+	rom: rom@00000000 {
+		compatible = "mmio-sram";
+		reg = <0x00000000 0x00008000>;
+		read-only;
+	};
+
+	sram: sram@20000000 {
+		compatible = "mmio-sram";
+		reg = <0x20000000 0x00004000>;
+	};
+
+	main_ram: memory@40000000 {
+		device_type = "memory";
+		reg = <0x40000000 0x10000000>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&mac0 {
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+
+	spiflash: w25q128@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "winbond,w25q128", "jedec,spi-nor";
+		spi-max-frequency = <104000000>;
+		reg = <0>;
+	};
+};
+
+/ {
+	ledsgpio: gpio@f000a800 {
+		compatible = "ti,74175";
+		reg = <0xf000a800 0x4>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		ld0 {
+			label = "arty:green:ld0";
+			gpios = <&ledsgpio 0 GPIO_ACTIVE_HIGH>;
+		};
+
+		ld1 {
+			label = "arty:green:ld1";
+			gpios = <&ledsgpio 1 GPIO_ACTIVE_HIGH>;
+		};
+
+		ld2 {
+			label = "arty:green:ld2";
+			gpios = <&ledsgpio 2 GPIO_ACTIVE_HIGH>;
+		};
+
+		ld3 {
+			label = "arty:green:ld3";
+			gpios = <&ledsgpio 3 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	swgpio: gpio@f0006000 {
+		compatible = "ti,74125";
+		reg = <0xf0006000 0x4>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+};
diff --git a/arch/riscv/dts/litex_soc_linux.dtsi b/arch/riscv/dts/litex_soc_linux.dtsi
new file mode 100644
index 0000000000..32382b8dc2
--- /dev/null
+++ b/arch/riscv/dts/litex_soc_linux.dtsi
@@ -0,0 +1,49 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/dts-v1/;
+
+/ {
+	compatible = "litex,vexriscv-soc-linux";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		timebase-frequency = <100000000>; // 100 MHz
+
+		cpu@0 {
+			device_type = "cpu";
+			compatible = "spinalhdl,vexriscv", "riscv";
+			reg = <0>;
+		};
+	};
+
+	uart0: serial@f0001000 {
+		compatible = "litex,uart";
+		reg = <0xf0001000 0x18>;
+		status = "disabled";
+	};
+
+	mac0: mac@f0009000 {
+		compatible = "litex,liteeth";
+		reg = <0xf0009000 0x7c /* base */
+			0xf0009800 0x0a /* mdio_base */
+			0xb0000000 0x2000>; /* buf_base */
+		tx-fifo-depth = <2>;
+		rx-fifo-depth = <2>;
+		status = "disabled";
+	};
+
+	spi0: spi@f000b800 {
+		compatible = "litex,spiflash";
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg = <0xf000b800 0x100>;
+		status = "disabled";
+	};
+};
diff --git a/arch/riscv/include/asm/debug_ll.h b/arch/riscv/include/asm/debug_ll.h
index 6904460af9..050a1412d1 100644
--- a/arch/riscv/include/asm/debug_ll.h
+++ b/arch/riscv/include/asm/debug_ll.h
@@ -37,6 +37,9 @@ static inline void PUTC_LL(char ch)
 
 	writel(ch, uart0);
 }
+#elif defined CONFIG_DEBUG_LITEX
+
+#include <asm/debug_ll_litex.h>
 
 #endif
 
diff --git a/arch/riscv/include/asm/debug_ll_litex.h b/arch/riscv/include/asm/debug_ll_litex.h
new file mode 100644
index 0000000000..2fcdd9b0ec
--- /dev/null
+++ b/arch/riscv/include/asm/debug_ll_litex.h
@@ -0,0 +1,123 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __ASM_DEBUG_LL_LITEX__
+#define __ASM_DEBUG_LL_LITEX__
+
+/** @file
+ *  This File contains declaration for early output support
+ */
+
+#include <linux/kconfig.h>
+
+#define DEBUG_LL_UART_ADDR	0xf0001000
+#define UART_RXTX	0x00
+#define UART_TXFULL	0x04
+#define UART_RXEMPTY	0x08
+#define UART_EV_PENDING	0x10
+#define  UART_EV_RX	(1 << 1)
+
+
+#ifndef __ASSEMBLY__
+
+/*
+ * C macros
+ */
+
+#include <asm/io.h>
+
+static inline void PUTC_LL(char ch)
+{
+#ifdef CONFIG_DEBUG_LL
+	/* wait for space */
+	while (__raw_readb((u8 *)DEBUG_LL_UART_ADDR + UART_TXFULL))
+		;
+
+	__raw_writeb(ch, (u8 *)DEBUG_LL_UART_ADDR + UART_RXTX);
+#endif /* CONFIG_DEBUG_LL */
+}
+#else /* __ASSEMBLY__ */
+/*
+ * Macros for use in assembly language code
+ */
+
+/*
+ * output a character in a0
+ */
+.macro	debug_ll_outc_a0
+#ifdef CONFIG_DEBUG_LL
+
+	li	t0, DEBUG_LL_UART_ADDR
+
+201:
+	lbu	t1, UART_TXFULL(t0)	/* uart tx full ? */
+	andi	t1, t1, 0xff
+	bnez	t1, 201b		/* try again */
+
+	sb	a0, UART_RXTX(t0)	/* write the character */
+
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * output a character
+ */
+.macro	debug_ll_outc chr
+#ifdef CONFIG_DEBUG_LL
+	li	a0, \chr
+	debug_ll_outc_a0
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * check character in input buffer
+ * return value:
+ *  v0 = 0   no character in input buffer
+ *  v0 != 0  character in input buffer
+ */
+.macro	debug_ll_tstc
+#ifdef CONFIG_DEBUG_LL
+	li	t0, DEBUG_LL_UART_ADDR
+
+	/* get line status and check for data present */
+	lbu	s0, UART_RXEMPTY(t0)
+	bnez    s0, 243f
+	li	s0, 1
+	j	244f
+243:	li	s0, 0
+244:	nop
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * get character to v0
+ */
+.macro	debug_ll_getc
+#ifdef CONFIG_DEBUG_LL
+
+204:
+	debug_ll_tstc
+
+	/* try again */
+	beqz	s0, 204b
+
+	/* read a character */
+	lb	s0, UART_RXTX(t0)
+	li      t1, UART_EV_RX
+	sb	t1, UART_EV_PENDING(t0)
+
+#endif /* CONFIG_DEBUG_LL */
+.endm
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_DEBUG_LL_LITEX__ */
diff --git a/common/Kconfig b/common/Kconfig
index db7cc6713a..cd61b0ef6c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1379,6 +1379,10 @@ config DEBUG_SIFIVE
 	bool "SiFive serial0 port"
 	depends on SOC_SIFIVE
 
+config DEBUG_LITEX
+	bool "LiteX serial port"
+	depends on SOC_LITEX
+
 endchoice
 
 config DEBUG_IMX_UART_PORT
diff --git a/images/Makefile.riscv b/images/Makefile.riscv
index c44c683431..24e33f5b11 100644
--- a/images/Makefile.riscv
+++ b/images/Makefile.riscv
@@ -15,3 +15,7 @@ pblb-$(CONFIG_BOARD_HIFIVE) += start_hifive_unmatched start_hifive_unleashed
 FILE_barebox-hifive-unmatched.img = start_hifive_unmatched.pblb
 FILE_barebox-hifive-unleashed.img = start_hifive_unleashed.pblb
 image-$(CONFIG_BOARD_HIFIVE) += barebox-hifive-unmatched.img barebox-hifive-unleashed.img
+
+pblb-$(CONFIG_BOARD_LITEX_LINUX) += start_litex_linux
+FILE_barebox-litex-linux.img = start_litex_linux.pblb
+image-$(CONFIG_BOARD_LITEX_LINUX) += barebox-litex-linux.img
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

