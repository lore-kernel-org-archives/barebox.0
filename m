Delivery-date: Mon, 06 Jan 2025 10:19:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGz-00HQhV-30
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:19:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGz-000415-1m
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:19:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3QJNbnRIEhFSh4tGI3p9+5dtfCrXLvhkCBzUNbSLhR4=; b=Xag+eyTtjQRWj9jsFyK9DMbAVL
	5SiJhs6J46tGpsDOMU/loKUFiYvDTZ4Fz6+GPTD1yK58Axq3FF3mANk23eaoi2wxU5NYwp9uwy14s
	43Mq23khu9jFEfb//zZFDAKahyyLjRTaHYgxlKJF59UOjyulVyHMQHnfFbEAxVYEyxU+6dtT/mFFs
	j6yeo+J5coaDKdUJnP/trzmSDn0WBA83jM2HGT19vupbDl+UiqzcAhS908Eei7EJsD7ygqLAcJqTW
	zHDGmvgEplb94O39V+IaLs5yzp06M+LWWU6mCJpxsDYknijOlzQZSNhptYGVbeSlUm/uvB0Ue2uVm
	0kC6VIDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjGR-00000000eGP-2uOt;
	Mon, 06 Jan 2025 09:19:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjGO-00000000eEA-3uNG
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:19:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGN-0003Pe-9N; Mon, 06 Jan 2025 10:19:07 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGM-0078qw-0b;
	Mon, 06 Jan 2025 10:19:06 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGM-00EPel-2o;
	Mon, 06 Jan 2025 10:19:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jan 2025 10:19:05 +0100
Message-Id: <20250106091906.3435166-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011909_120741_6B2102EF 
X-CRM114-Status: GOOD (  14.15  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] include: rename printk.h to printf.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We also have <linux/printk.h>, which defines the pr_* and dev_* family
of Linux logging functions. printk.h only defines the base printing
functions as well as the printk macro, which expands to printf.

To make it clearer, which is which, rename printk.h to printf.h.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.h         |  2 +-
 arch/arm/mach-imx/bootrom-cmd.c   |  2 +-
 arch/riscv/lib/stacktrace.c       |  2 +-
 include/asm-generic/bug.h         |  2 +-
 include/firmware.h                |  2 +-
 include/linux/barebox-wrapper.h   |  2 +-
 include/linux/printk.h            |  2 +-
 include/printk.h                  | 63 -------------------------------
 include/stdio.h                   |  2 +-
 include/tlsf.h                    |  2 +-
 scripts/include/asm-generic/bug.h |  2 +-
 test/self/idr.c                   |  2 +-
 12 files changed, 11 insertions(+), 74 deletions(-)
 delete mode 100644 include/printk.h

diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index ec24f5c89f2b..d0b50662570a 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -3,7 +3,7 @@
 #ifndef __ARM_MMU_COMMON_H
 #define __ARM_MMU_COMMON_H
 
-#include <printk.h>
+#include <printf.h>
 #include <linux/types.h>
 #include <linux/ioport.h>
 #include <linux/kernel.h>
diff --git a/arch/arm/mach-imx/bootrom-cmd.c b/arch/arm/mach-imx/bootrom-cmd.c
index 76455db301fe..afdf1302254b 100644
--- a/arch/arm/mach-imx/bootrom-cmd.c
+++ b/arch/arm/mach-imx/bootrom-cmd.c
@@ -3,7 +3,7 @@
 #include <command.h>
 #include <errno.h>
 #include <getopt.h>
-#include <printk.h>
+#include <printf.h>
 #include <linux/bitops.h>
 #include <linux/bitfield.h>
 #include <mach/imx/imx8m-regs.h>
diff --git a/arch/riscv/lib/stacktrace.c b/arch/riscv/lib/stacktrace.c
index b678ad7d5241..7cf102a06fe0 100644
--- a/arch/riscv/lib/stacktrace.c
+++ b/arch/riscv/lib/stacktrace.c
@@ -8,7 +8,7 @@
  */
 
 #include <linux/kernel.h>
-#include <printk.h>
+#include <printf.h>
 #include <asm/unwind.h>
 #include <asm/ptrace.h>
 #include <asm-generic/memory_layout.h>
diff --git a/include/asm-generic/bug.h b/include/asm-generic/bug.h
index 0277527491cf..389327adfc5d 100644
--- a/include/asm-generic/bug.h
+++ b/include/asm-generic/bug.h
@@ -4,7 +4,7 @@
 #define _ASM_GENERIC_BUG_H
 
 #include <linux/compiler.h>
-#include <printk.h>
+#include <printf.h>
 
 #define BUG() do { \
 	printf("BUG: failure at %s:%d/%s()!\n", __FILE__, __LINE__, __FUNCTION__); \
diff --git a/include/firmware.h b/include/firmware.h
index 361ff2f8ae52..d7feae13719b 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -7,7 +7,7 @@
 #define FIRMWARE_H
 
 #include <pbl.h>
-#include <printk.h>
+#include <printf.h>
 #include <types.h>
 #include <driver.h>
 #include <debug_ll.h>
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 8320a24b7bc1..7f584662f33a 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -5,7 +5,7 @@
 #include <xfuncs.h>
 #include <linux/slab.h>
 #include <linux/module.h>
-#include <printk.h>
+#include <printf.h>
 
 #define vmalloc(len)		malloc(len)
 #define __vmalloc(len, mode, pgsz)	malloc(len)
diff --git a/include/linux/printk.h b/include/linux/printk.h
index 9fdf97507483..469ca879c7fd 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -4,7 +4,7 @@
 
 #include <linux/list.h>
 #include <linux/err.h>
-#include <printk.h>
+#include <printf.h>
 #include <stdarg.h>
 
 #define MSG_EMERG      0    /* system is unusable */
diff --git a/include/printk.h b/include/printk.h
deleted file mode 100644
index d0e56e1994a2..000000000000
--- a/include/printk.h
+++ /dev/null
@@ -1,63 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef __PRINTK_H
-#define __PRINTK_H
-
-#include <linux/types.h>
-
-struct device;
-
-#define KERN_EMERG      ""   /* system is unusable                   */
-#define KERN_ALERT      ""   /* action must be taken immediately     */
-#define KERN_CRIT       ""   /* critical conditions                  */
-#define KERN_ERR        ""   /* error conditions                     */
-#define KERN_WARNING    ""   /* warning conditions                   */
-#define KERN_NOTICE     ""   /* normal but significant condition     */
-#define KERN_INFO       ""   /* informational                        */
-#define KERN_DEBUG      ""   /* debug-level messages                 */
-#define KERN_CONT       ""
-
-#if (IN_PROPER && !defined(CONFIG_CONSOLE_NONE)) || \
-	(IN_PBL && defined(CONFIG_PBL_CONSOLE))
-int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
-#else
-static int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
-static inline int printf(const char *fmt, ...)
-{
-	return 0;
-}
-#endif
-
-void __attribute__((noreturn)) panic(const char *fmt, ...);
-void __attribute__((noreturn)) panic_no_stacktrace(const char *fmt, ...);
-
-#define printk			printf
-
-enum {
-	DUMP_PREFIX_NONE,
-	DUMP_PREFIX_ADDRESS,
-	DUMP_PREFIX_OFFSET
-};
-extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
-			      int groupsize, char *linebuf, size_t linebuflen,
-			      bool ascii);
-extern void dev_print_hex_dump(struct device *dev, const char *level,
-			       const char *prefix_str, int prefix_type,
-			       int rowsize, int groupsize, const void *buf,
-			       size_t len, bool ascii);
-
-#define print_hex_dump(level, prefix_str, prefix_type, rowsize,		       \
-			     groupsize, buf, len, ascii)		       \
-	dev_print_hex_dump(NULL, level, prefix_str, prefix_type, rowsize,      \
-		       groupsize, buf, len, ascii)
-
-#ifdef CONFIG_ARCH_HAS_STACK_DUMP
-void dump_stack(void);
-#else
-static inline void dump_stack(void)
-{
-	printf("no stack data available\n");
-}
-#endif
-
-
-#endif
diff --git a/include/stdio.h b/include/stdio.h
index 883b06529fdc..c02d383d6bad 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -4,7 +4,7 @@
 
 #include <stdarg.h>
 #include <console.h>
-#include <printk.h>
+#include <printf.h>
 
 /*
  * STDIO based functions (can always be used)
diff --git a/include/tlsf.h b/include/tlsf.h
index 2f82d0fa005b..e0dcdac1e7ab 100644
--- a/include/tlsf.h
+++ b/include/tlsf.h
@@ -42,7 +42,7 @@
 extern "C" {
 #endif
 
-#include <printk.h>
+#include <printf.h>
 #include <linux/bug.h>
 
 #define tlsf_assert(expr) do {                              \
diff --git a/scripts/include/asm-generic/bug.h b/scripts/include/asm-generic/bug.h
index c53ced628fcc..6847fc82801e 100644
--- a/scripts/include/asm-generic/bug.h
+++ b/scripts/include/asm-generic/bug.h
@@ -3,7 +3,7 @@
 #ifndef _ASM_GENERIC_BUG_H
 #define _ASM_GENERIC_BUG_H
 
-#include <printk.h>
+#include <printf.h>
 #include <stdlib.h>
 
 #define BUG() do { \
diff --git a/test/self/idr.c b/test/self/idr.c
index 3d23141e0f03..bb902b041bb4 100644
--- a/test/self/idr.c
+++ b/test/self/idr.c
@@ -2,7 +2,7 @@
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
-#include <printk.h>
+#include <printf.h>
 #include <linux/idr.h>
 #include <bselftest.h>
 
-- 
2.39.5



