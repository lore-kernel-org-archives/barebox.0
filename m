Delivery-date: Wed, 05 May 2021 12:11:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUe-0007as-MY
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:11:00 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUd-0005Gf-8i
	for lore@pengutronix.de; Wed, 05 May 2021 12:11:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iSsNwFp68nDBruml7H4YO+JhBLkDsQks46RGQVHGgoQ=; b=Q/5qhUpOm7AAijO30lAVntPUG
	6B4P1BMXhZxU7aNiiWFq3lwSBlYsBdaUMfhhMtr8eLWZugm0LeMVTKO7M8pjp8OzlJ/+Jd0mtWj62
	GQBss8g8pMovcl+8ZxO7UoyzPx0dLE1SEo97AZAwbSpZUT83HraxbWELC47w15GSuQro0a/EqvIGL
	pvSmdD74B/KtpyA4zIjvwrj/8rH/dEhoyUM89WdjcNEd7FOt0I3gqbfpQemumfb1JawjJPW0UYv2Z
	9VHRiBvJ9JCdhFWBs5FNIHsL6pxVE9b0SNz/5kNa96KIBt213RTqOpk4XccEPgMl+pZRXNXiuHtv8
	Nm5BY+0qw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leETd-000qCM-7P; Wed, 05 May 2021 10:09:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leETA-000q1h-SU
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:09:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=98yySZlPSmR0p7qDhryFhEpdLOSuTX0utsPitcmHtKQ=; b=LjR9UuCCXdqx3MKS1IWyJ7bfr3
 dqoFkey7EBRalCmrKSkWxCV9zUtqR945Pjw604RyVYib9a9M77KMcEv9+052DsuSnPt/zOG0VSOct
 Uv/Ig/0QJz61ukS0s2Vv1oysWNNLzwQdK1HWXUR7Ta0Rz4sXTU3RDHNThqDLv1/gRe0hQ0B31sJHc
 Bmpf4G0vpdQpCe/RkFnp3FKUzzd+5RWumCUeicv4zPCNX2xL419IDrGhQLMalKU3WfIqqfU9NMI+j
 q4MpniUggdEFOZSOwlBzom+fxFFqyB9epN7iWpF17ynCUFemWhYHSFCLm6JbF+6MEoqHIPHZw59mk
 Ag7YZ8Mw==;
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET7-004eQQ-US
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:09:27 +0000
Received: by mail-lj1-x22d.google.com with SMTP id u25so1702575ljg.7
 for <barebox@lists.infradead.org>; Wed, 05 May 2021 03:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=98yySZlPSmR0p7qDhryFhEpdLOSuTX0utsPitcmHtKQ=;
 b=Zkcc+mmcetVEDiddz+k2Ko3rLBFn9fd+rQ9E2nJLi91uWqmtwJpjFIQMm5e/nYNZXH
 82yFGDPpyL4TnRp5UijtKIKvHHZTxbP7pmrzMyR/jJculAxlfinwrNJMhYY9pfDc83Vt
 iI6WIJrnnKzYjoZyufvo4LoQUCbdAw7lU8nVPhWTSJXR9ewfg8jMhYtvnVFzLaFXIXgL
 IIlC1rbppnNFTJVdAAgSX1w/P7b5a2x9u0CamGpU2F8gHz7Z+oxUqwlitIYV8aiMbkig
 DMT7b2zAcZQXY+55ZHnFZ2ILFwS1XxU+GNc70G6mU4G867zzqvGH6sgQPeYhREd8CUQZ
 JDkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=98yySZlPSmR0p7qDhryFhEpdLOSuTX0utsPitcmHtKQ=;
 b=JIR3yuBvgRCQuWo8KXenZw1cd2H6NknOr/SKHwwjPCE2R1AJkWT/oZxxY/TW4eWjN8
 vkMJ/4hh1uNFYyM1ZirnJEWJ6CvoWyvgraqtH+mqAYxAWKmcnIJDqftgvf5QINtsiUU/
 aDLSvaKUGmZaEMEr8h1GnuLwNRAJ+kV2MZUsHo3ZvPLd27hFGhWphRa3QNb8UpEc42bj
 +s6kifQ7PrdAavrVWixftmiva9opjP/w9eA9mMsuVRlLmPMHDrwk3P7aZnpSnP61QdnI
 NRsR7iMkZUW6BoWKbp4rC07ORu+/acOjYuzImVEbNNO25jieAEogIF7u79MYZCCOr5HX
 BRQQ==
X-Gm-Message-State: AOAM533R/+NpyLD0zOGYcx+sudfZXLRlf/32KTGZrTeJ3slA1RJgs9Xn
 tAce0Xyzip8Co3i90f2sipv5bIUnq5/SQw==
X-Google-Smtp-Source: ABdhPJzuyPcTPKRIwlqRkEfrm3jc2xCMesM7PO57n5/puFpdvZwnMbAwhIHVMVplj+zRLoZBkNa/ug==
X-Received: by 2002:a2e:a60c:: with SMTP id v12mr21947213ljp.310.1620209363593; 
 Wed, 05 May 2021 03:09:23 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id u8sm497114lfu.284.2021.05.05.03.09.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 03:09:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  5 May 2021 13:08:58 +0300
Message-Id: <20210505100900.88141-8-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210505100900.88141-1-antonynpavlov@gmail.com>
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_030926_004116_121BB678 
X-CRM114-Status: GOOD (  19.19  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/9] RISC-V: add initial LiteX SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

LiteX is a Migen-based System on Chip, supporting softcore
VexRiscv CPU, a 32-bits Linux Capable RISC-V CPU.

See https://github.com/enjoy-digital/litex and
https://github.com/litex-hub/linux-on-litex-vexriscv
for details.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig                            |   9 ++
 arch/riscv/Makefile                           |   1 +
 arch/riscv/dts/litex_soc_linux.dtsi           |  49 +++++++
 arch/riscv/mach-litex/Kconfig                 |   8 ++
 arch/riscv/mach-litex/Makefile                |   3 +
 arch/riscv/mach-litex/include/mach/debug_ll.h | 124 ++++++++++++++++++
 6 files changed, 194 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index c0583f3153..40dfd7dd93 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -34,6 +34,14 @@ config MACH_ERIZO
 	select RISCV_M_MODE
 	select RISCV_TIMER
 
+config MACH_LITEX
+	bool "litex family"
+	select ARCH_RV32I
+	select HAS_DEBUG_LL
+	select HAS_NMON
+	select USE_COMPRESSED_DTB
+	select RISCV_SBI
+
 config MACH_VIRT
 	bool "virt family"
 	select BOARD_RISCV_GENERIC_DT
@@ -83,6 +91,7 @@ config 64BIT
 	select PHYS_ADDR_T_64BIT
 
 source "arch/riscv/mach-erizo/Kconfig"
+source "arch/riscv/mach-litex/Kconfig"
 
 config BOARD_RISCV_GENERIC_DT
 	select BOARD_GENERIC_DT
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index aba4526bba..bc22786368 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -20,6 +20,7 @@ cflags-y += $(riscv-cflags-y)
 LDFLAGS_barebox += -nostdlib
 
 machine-$(CONFIG_MACH_ERIZO)	:= erizo
+machine-$(CONFIG_MACH_LITEX)	:= litex
 machine-$(CONFIG_MACH_VIRT)	:= virt
 
 LDFLAGS_barebox += $(riscv-ldflags-y)
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
diff --git a/arch/riscv/mach-litex/Kconfig b/arch/riscv/mach-litex/Kconfig
new file mode 100644
index 0000000000..19d5927e44
--- /dev/null
+++ b/arch/riscv/mach-litex/Kconfig
@@ -0,0 +1,8 @@
+if MACH_LITEX
+
+choice
+	prompt "Board type"
+
+endchoice
+
+endif
diff --git a/arch/riscv/mach-litex/Makefile b/arch/riscv/mach-litex/Makefile
new file mode 100644
index 0000000000..d9c51e74c3
--- /dev/null
+++ b/arch/riscv/mach-litex/Makefile
@@ -0,0 +1,3 @@
+# just to build a built-in.o. Otherwise compilation fails when no o-files is
+# created.
+obj- += dummy.o
diff --git a/arch/riscv/mach-litex/include/mach/debug_ll.h b/arch/riscv/mach-litex/include/mach/debug_ll.h
new file mode 100644
index 0000000000..df7032716d
--- /dev/null
+++ b/arch/riscv/mach-litex/include/mach/debug_ll.h
@@ -0,0 +1,124 @@
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
+#ifndef __MACH_LITEX_DEBUG_LL__
+#define __MACH_LITEX_DEBUG_LL__
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
+#define UART_EV_ENABLE	0x14
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
+#endif /* __MACH_LITEX_DEBUG_LL__ */
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

