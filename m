Delivery-date: Mon, 25 Nov 2024 16:13:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFam8-000FZS-2s
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:13:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFam7-0007wZ-9e
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:13:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iAk7xIN5CSALxzckcOZ8V0Tb0EmiqNhom2dthTCyqtE=; b=X4R6bABJqYvKE8DqCSpwtUThdl
	ichFusO0R3qr8oOwJTS93ScfIztjZPa/V4l834/VDTVEEIk8u8thMu+J5dwUWyt8XZSMTJPdNw9pJ
	2G64z1MbU+viTPdHidNhNZPx489aj4DAoz2VyiNvvp/8mS+MnG4ORhy5I+fEojVmtNdCGUrFW9sm4
	170EiglXx5O4Ksv8vF+uorgwK+HW1AbCIU1pRbXPyYoK79oSLrzi+KGH+awVWtS5ZQ8/b5ngQ+CLi
	r20M/kT84quv9Urf6yhOxMNFQ4s66FNxHKQd2wpiH5+NX86rAYxBcS4VGx9GW9KngTr1TGU5Xgy8X
	ljEF1FwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalY-00000008Pov-1uSC;
	Mon, 25 Nov 2024 15:12:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalU-00000008PkC-1XyE
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:12:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalL-0007CW-2g; Mon, 25 Nov 2024 16:12:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-0006Ma-0M;
	Mon, 25 Nov 2024 16:12:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-001lGb-0Y;
	Mon, 25 Nov 2024 16:12:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:12:16 +0100
Message-Id: <20241125151228.341441-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125151228.341441-1-a.fatoum@pengutronix.de>
References: <20241125151228.341441-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071240_571549_52767D83 
X-CRM114-Status: GOOD (  16.02  )
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
Subject: [PATCH v2 04/16] treewide: replace inverted check for PBL with new IN_PROPER macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Guarding code behind an #if IN_PROPER is easier to read than #ifndef __PBL__,
so let's use it where appropriate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/romapi.c         | 2 +-
 arch/arm/mach-omap/omap3_generic.c | 2 +-
 arch/riscv/include/asm/unwind.h    | 2 +-
 drivers/pinctrl/imx-iomux-v1.c     | 2 +-
 fs/fat/ff.h                        | 2 +-
 include/abort.h                    | 2 +-
 include/dma.h                      | 2 +-
 include/linux/iopoll.h             | 4 ++--
 include/linux/kasan.h              | 2 +-
 include/linux/list.h               | 2 +-
 include/linux/printk.h             | 4 ++--
 include/printk.h                   | 4 ++--
 include/stdio.h                    | 4 ++--
 include/zero_page.h                | 2 +-
 lib/vsprintf.c                     | 4 ++--
 15 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index 155e706437f7..10af42f28a76 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -256,7 +256,7 @@ const u32 *imx8m_get_bootrom_log(void)
 		return (u32 *)rom_log_addr;
 	}
 
-	if (!IN_PBL)
+	if (IN_PROPER)
 		return imx8m_scratch_get_bootrom_log();
 
 	return NULL;
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 8230b37619dc..d1b57dffd0cf 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -553,7 +553,7 @@ const struct gpmc_config omap3_nand_cfg = {
 	.size = GPMC_SIZE_16M,
 };
 
-#ifndef __PBL__
+#if IN_PROPER
 static int omap3_gpio_init(void)
 {
 	add_generic_device("omap-gpio", 0, NULL, OMAP3_GPIO1_BASE,
diff --git a/arch/riscv/include/asm/unwind.h b/arch/riscv/include/asm/unwind.h
index 00f7845147b1..4e8beb988070 100644
--- a/arch/riscv/include/asm/unwind.h
+++ b/arch/riscv/include/asm/unwind.h
@@ -4,7 +4,7 @@
 
 struct pt_regs;
 
-#if defined CONFIG_RISCV_UNWIND && !defined __PBL__
+#if defined CONFIG_RISCV_UNWIND && IN_PROPER
 void unwind_backtrace(const struct pt_regs *regs);
 #else
 static inline void unwind_backtrace(const struct pt_regs *regs)
diff --git a/drivers/pinctrl/imx-iomux-v1.c b/drivers/pinctrl/imx-iomux-v1.c
index a0878fa9eb85..ac98f4dcb763 100644
--- a/drivers/pinctrl/imx-iomux-v1.c
+++ b/drivers/pinctrl/imx-iomux-v1.c
@@ -115,7 +115,7 @@ void imx_gpio_mode(void __iomem *base, int gpio_mode)
 	}
 }
 
-#ifndef __PBL__
+#if IN_PROPER
 
 /*
  * MUX_ID format defines
diff --git a/fs/fat/ff.h b/fs/fat/ff.h
index c961de46e1f4..e1a7d029efe8 100644
--- a/fs/fat/ff.h
+++ b/fs/fat/ff.h
@@ -17,7 +17,7 @@
 #ifndef _FATFS
 #define _FATFS	8237	/* Revision ID */
 
-#ifndef __PBL__
+#if IN_PROPER
 
 #ifdef CONFIG_FS_FAT_LFN
 #define FS_FAT_LFN 1
diff --git a/include/abort.h b/include/abort.h
index 039500b04d0b..95db1b54d6d9 100644
--- a/include/abort.h
+++ b/include/abort.h
@@ -2,7 +2,7 @@
 #ifndef __ABORT_H
 #define __ABORT_H
 
-#if defined CONFIG_ARCH_HAS_DATA_ABORT_MASK && !defined __PBL__
+#if defined CONFIG_ARCH_HAS_DATA_ABORT_MASK && IN_PROPER
 
 /*
  * data_abort_mask - ignore data aborts
diff --git a/include/dma.h b/include/dma.h
index 5a82637e24ac..53cb50b707f4 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -90,7 +90,7 @@ void arch_sync_dma_for_device(void *vaddr, size_t size,
 			      enum dma_data_direction dir);
 #endif
 
-#ifndef __PBL__
+#if IN_PROPER
 void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
 			     size_t size, enum dma_data_direction dir);
 
diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index c7dcaec38237..9350a3d05007 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -32,13 +32,13 @@
 #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
 ({ \
 	uint64_t start = 0; \
-	if (!IN_PBL && (timeout_us) != 0) \
+	if (IN_PROPER && (timeout_us) != 0) \
 		start = get_time_ns(); \
 	for (;;) { \
 		(val) = op(args); \
 		if (cond) \
 			break; \
-		if (!IN_PBL && (timeout_us) != 0 && \
+		if (IN_PROPER && (timeout_us) != 0 && \
 		    is_timeout(start, ((timeout_us) * USECOND))) { \
 			(val) = op(args); \
 			break; \
diff --git a/include/linux/kasan.h b/include/linux/kasan.h
index 2dea347c40ae..8afdab7c9d4b 100644
--- a/include/linux/kasan.h
+++ b/include/linux/kasan.h
@@ -45,7 +45,7 @@
 extern unsigned long kasan_shadow_start;
 extern unsigned long kasan_shadow_base;
 
-#if defined(CONFIG_KASAN) && !defined(__PBL__)
+#if defined(CONFIG_KASAN) && IN_PROPER
 
 static inline void *kasan_mem_to_shadow(const void *addr)
 {
diff --git a/include/linux/list.h b/include/linux/list.h
index e28f54a0d413..35b3f573806a 100644
--- a/include/linux/list.h
+++ b/include/linux/list.h
@@ -36,7 +36,7 @@ static inline void INIT_LIST_HEAD(struct list_head *list)
 	list->prev = list;
 }
 
-#if defined(CONFIG_DEBUG_LIST) && !defined(__PBL__)
+#if defined(CONFIG_DEBUG_LIST) && IN_PROPER
 extern bool __list_add_valid_or_report(struct list_head *new,
 				       struct list_head *prev,
 				       struct list_head *next);
diff --git a/include/linux/printk.h b/include/linux/printk.h
index 07403ea60cb7..9fdf97507483 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -39,8 +39,8 @@ static inline int dev_printf(int level, const struct device *dev,
 }
 #endif
 
-#if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE)) || \
-	(defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
+#if (IN_PROPER && !defined(CONFIG_CONSOLE_NONE)) || \
+	(IN_PBL && defined(CONFIG_PBL_CONSOLE))
 int pr_print(int level, const char *format, ...)
 	__attribute__ ((format(__printf__, 2, 3)));
 #else
diff --git a/include/printk.h b/include/printk.h
index bf9645249dae..d0e56e1994a2 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -16,8 +16,8 @@ struct device;
 #define KERN_DEBUG      ""   /* debug-level messages                 */
 #define KERN_CONT       ""
 
-#if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE)) || \
-	(defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
+#if (IN_PROPER && !defined(CONFIG_CONSOLE_NONE)) || \
+	(IN_PBL && defined(CONFIG_PBL_CONSOLE))
 int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
 #else
 static int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
diff --git a/include/stdio.h b/include/stdio.h
index 1ed7e1d3e38b..4edadf5c16be 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -82,8 +82,8 @@ static inline void ctrlc_handled(void)
 char *size_human_readable(unsigned long long size);
 int readline(const char *prompt, char *buf, int len);
 
-#if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE)) || \
-	(defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
+#if (IN_PROPER && !defined(CONFIG_CONSOLE_NONE)) || \
+	(IN_PBL && defined(CONFIG_PBL_CONSOLE))
 static inline int puts(const char *s)
 {
 	return console_puts(CONSOLE_STDOUT, s);
diff --git a/include/zero_page.h b/include/zero_page.h
index 79e0f22c7b5b..067f39a7ee96 100644
--- a/include/zero_page.h
+++ b/include/zero_page.h
@@ -4,7 +4,7 @@
 
 #include <common.h>
 
-#if defined CONFIG_ARCH_HAS_ZERO_PAGE && defined CONFIG_MMU && !defined __PBL__
+#if defined CONFIG_ARCH_HAS_ZERO_PAGE && defined CONFIG_MMU && IN_PROPER
 
 /*
  * zero_page_faulting - fault when accessing the zero page
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 1b7d568e8f0c..e421a4352a12 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -251,7 +251,7 @@ static char *raw_pointer(char *buf, const char *end, const void *ptr, int field_
 	return number(buf, end, (unsigned long) ptr, 16, field_width, precision, flags);
 }
 
-#ifndef __PBL__
+#if IN_PROPER
 static char *symbol_string(char *buf, const char *end, const void *ptr, int field_width,
 			   int precision, int flags)
 {
@@ -727,7 +727,7 @@ int vsnprintf(char *buf, size_t size, const char *fmt, va_list args)
 				continue;
 
 			case 's':
-				if (IS_ENABLED(CONFIG_PRINTF_WCHAR) && !IN_PBL && qualifier == 'l')
+				if (IS_ENABLED(CONFIG_PRINTF_WCHAR) && IN_PROPER && qualifier == 'l')
 					str = wstring(str, end, va_arg(args, wchar_t *),
 						      field_width, precision, flags);
 				else
-- 
2.39.5



