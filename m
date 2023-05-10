Delivery-date: Thu, 11 May 2023 01:39:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwtOy-00DJKJ-7c
	for lore@lore.pengutronix.de; Thu, 11 May 2023 01:39:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwtOv-0000zc-PC
	for lore@pengutronix.de; Thu, 11 May 2023 01:39:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=luIIJHmJ0z7RJNkLKwunXv4lV/CCM+5Rwj+SaqWEedk=; b=qC6LoATpJ94m/OFt1gKvlR7sGt
	5892XOdkHGXbeMtU+tk6QZZFE8ITyE4JSt2rPHJSaSSBQIPVA6yFsJ3VHp4kVvAODzO4W0vRqD14I
	tv/Xs0q8pmjgEn6sNfPrJKzlK2dEV+NdaHjbzeDAQ0IPzoFH5jGDrl8kV0n5B5m5ENDKggeoBBXpL
	hBs8btKOnK1Egkz28ctB40fTqrFCDIFHAqzjRWju/odfPhWfXOAr5bcG0mKW3PtMdUbdsgv018ea+
	u+729Zd3yXclK1p891zdD/7+WvA+LXBbBsntKwaxgwP8u1ULZCj9ao8Zl/UUfYTw1we6trh2bbBYg
	6sI+sD+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwtNU-007Ftr-3C;
	Wed, 10 May 2023 23:37:48 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwtNP-007Fq6-1h
	for barebox@lists.infradead.org;
	Wed, 10 May 2023 23:37:46 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 8F5C81C0008;
	Wed, 10 May 2023 23:37:36 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 11 May 2023 01:37:04 +0200
Message-Id: <20230510233711.37345-5-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230510233711.37345-1-jmaselbas@zdiv.net>
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_163743_827049_E903A49D 
X-CRM114-Status: GOOD (  19.04  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC PATCH 04/11] sunxi: Add lowlevel switch to aarch64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Allwinner A64 SoC (and probably others) boots in 32-bits mode. Switching
to aarch64 is achieved by writing to the Reset Management Register (RMR)
which can be accessed through the memory space thanks to an alias.

On A64 this alias is located at 0x017000a0
---
 arch/arm/include/asm/barebox.lds.h |  2 ++
 arch/arm/mach-sunxi/Kconfig        |  5 ++++
 arch/arm/mach-sunxi/Makefile       |  2 ++
 arch/arm/mach-sunxi/rmr_switch.S   | 47 ++++++++++++++++++++++++++++++
 include/mach/sunxi/barebox.lds.h   |  6 ++++
 include/mach/sunxi/rmr_switch.h    | 10 +++++++
 6 files changed, 72 insertions(+)
 create mode 100644 arch/arm/mach-sunxi/rmr_switch.S
 create mode 100644 include/mach/sunxi/barebox.lds.h
 create mode 100644 include/mach/sunxi/rmr_switch.h

diff --git a/arch/arm/include/asm/barebox.lds.h b/arch/arm/include/asm/barebox.lds.h
index a5c74381d8..f94290128e 100644
--- a/arch/arm/include/asm/barebox.lds.h
+++ b/arch/arm/include/asm/barebox.lds.h
@@ -2,6 +2,8 @@
 
 #if defined CONFIG_ARCH_EP93XX
 #include <mach/ep93xx/barebox.lds.h>
+#elif defined CONFIG_ARCH_SUNXI
+#include <mach/sunxi/barebox.lds.h>
 #endif
 
 #ifdef CONFIG_CPU_32
diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
index 0e8d83fedd..e28f04c354 100644
--- a/arch/arm/mach-sunxi/Kconfig
+++ b/arch/arm/mach-sunxi/Kconfig
@@ -4,6 +4,11 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x0
 
+config SUNXI_RVBAR_IOMAP
+	hex
+	default 0x017000a0  if ARCH_SUN50I_A64
+	# default 0x09010040 if ARCH_SUN50I_H5
+
 menuconfig SUNXI_MULTI_BOARDS
 	bool "Allwinner boards"
 	select HAVE_PBL_MULTI_IMAGES
diff --git a/arch/arm/mach-sunxi/Makefile b/arch/arm/mach-sunxi/Makefile
index d678973ca2..e7fa23c832 100644
--- a/arch/arm/mach-sunxi/Makefile
+++ b/arch/arm/mach-sunxi/Makefile
@@ -1,2 +1,4 @@
 obj-y += sunxi.o
 lwl-y += cpu_init.o
+
+pbl-$(CONFIG_CPU_64) += rmr_switch.o
diff --git a/arch/arm/mach-sunxi/rmr_switch.S b/arch/arm/mach-sunxi/rmr_switch.S
new file mode 100644
index 0000000000..bfe3b75e3a
--- /dev/null
+++ b/arch/arm/mach-sunxi/rmr_switch.S
@@ -0,0 +1,47 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * ARMv8 RMR reset sequence on Allwinner SoCs.
+ *
+ * All 64-bit capable Allwinner SoCs reset in AArch32 (and continue to
+ * exectute the Boot ROM in this state), so we need to switch to AArch64
+ * at some point.
+ * Section G6.2.133 of the ARMv8 ARM describes the Reset Management Register
+ * (RMR), which triggers a warm-reset of a core and can request to switch
+ * into a different execution state (AArch32 or AArch64).
+ * The address at which execution starts after the reset is held in the
+ * RVBAR system register, which is architecturally read-only.
+ * Allwinner provides a writable alias of this register in MMIO space, so
+ * we can easily set the start address of AArch64 code.
+ * This code below switches to AArch64 and starts execution at the specified
+ * start address.
+ *
+ * This file has been adapted from U-Boot code sources:
+ *  - arch/arm/mach-sunxi/rmr_switch.S
+ *  - arch/arm/include/asm/arch-sunxi/boot0.h.
+ *
+ * The aarch32 assembly has already been assembled and are inserted verbatime
+ * as .word statements (the asm source is commented for each statement).
+ *
+ */
+
+#include <config.h>
+#include <linux/linkage.h>
+
+.section .text_head_rmr_switch, "x"
+ENTRY(sunxi_rmr_switch)		/* arm32		arm64		*/
+	.word 0xeb000000	/* bl	.+8		subs x0, x0, x0	*/
+	b end			/* .word 0x1400000c 	b end		*/
+	.word 0xe59f0020	/* ldr	r0, [pc, #32] ; rvbar		*/
+	.word 0xe580e000	/* str  lr, [r0]			*/
+	.word 0xf57ff04f	/* dsb	sy				*/
+	.word 0xf57ff06f	/* isb	syo				*/
+	.word 0xee1c0f50	/* mrc	15, 0, r0, cr12, cr0, {2}	*/
+	.word 0xe3800003	/* orr	r0, r0, #3			*/
+	.word 0xee0c0f50	/* mcr	15, 0, r0, cr12, cr0, {2}	*/
+	.word 0xf57ff06f	/* isb	sy				*/
+	.word 0xe320f003	/* 1b: wfi				*/
+	.word 0xeafffffd	/* b	1b				*/
+	.word CONFIG_SUNXI_RVBAR_IOMAP
+	.align 3 /* prevent linker script from adding padding for aligment */
+end:	/* fall-through */
+ENDPROC(sunxi_rmr_switch)
diff --git a/include/mach/sunxi/barebox.lds.h b/include/mach/sunxi/barebox.lds.h
new file mode 100644
index 0000000000..e04c713611
--- /dev/null
+++ b/include/mach/sunxi/barebox.lds.h
@@ -0,0 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+/* theses two sections should only be needed for the pbl */
+#define ENTRY_HEADER \
+	*(.text_head_egon_header*)		\
+	*(.text_head_rmr_switch*)
diff --git a/include/mach/sunxi/rmr_switch.h b/include/mach/sunxi/rmr_switch.h
new file mode 100644
index 0000000000..2ecbd81d57
--- /dev/null
+++ b/include/mach/sunxi/rmr_switch.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef __MACH_RMR_SWITCH_H
+#define __MACH_RMR_SWITCH_H
+
+/* 64-bits Allwinner SoCs reset in AArch32 and need to switch to AArch64 */
+extern const u32 sunxi_rmr_switch[];
+#define	sunxi_switch_to_aarch64() __keep_symbolref(sunxi_rmr_switch)
+
+#endif
-- 
2.40.0



