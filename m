Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo1.mail-out.ovh.net ([188.165.45.168]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxF4R-0000cU-7H
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 10:25:32 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id C41C2FFAF48
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 12:31:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Aug 2012 12:25:15 +0200
Message-Id: <1343989522-8807-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343989522-8807-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120803102300.GB23597@game.jcrosoft.org>
 <1343989522-8807-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/12] Add compressed image support
To: barebox@lists.infradead.org

This allows for creating a lzo compressed binary unsing the pbl.

Only copy the piggydata if needed.

Add CONFIG_PBL_FORCE_PIGGYDATA_COPY option
In some case we need to copy the PIGGYDATA as the link address
as example we run from SRAM and shutdown the SDRAM/DDR for
reconfiguration but most of the time we just need to copy the
executable code.

based on Sascha Hauer
Add compressed image support

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/start-pbl.c       |   59 +++++++++++++++++++++++++++++++++++++---
 arch/arm/pbl/zbarebox.lds.S    |    1 +
 common/Kconfig                 |   12 +++++++-
 include/asm-generic/sections.h |    2 ++
 4 files changed, 69 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 28d6f34..17e0829 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -33,8 +33,33 @@ void __naked __section(.text_head_entry) pbl_start(void)
 	barebox_arm_head();
 }
 
-void barebox_pbl(uint32_t offset)
+extern void *input_data;
+extern void *input_data_end;
+
+#define STATIC static
+
+#ifdef CONFIG_IMAGE_COMPRESSION_LZO
+#include "../../../lib/decompress_unlzo.c"
+#endif
+
+static void barebox_uncompress(void *compressed_start, unsigned int len)
 {
+	void (*barebox)(void);
+
+	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
+		barebox = (void *)(TEXT_BASE + 1);
+	else
+		barebox = (void *)TEXT_BASE;
+
+	decompress((void *)compressed_start,
+			len,
+			NULL, NULL,
+			(void *)TEXT_BASE, NULL, NULL);
+
+	/* flush I-cache before jumping to the uncompressed binary */
+	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
+
+	barebox();
 }
 
 /*
@@ -44,6 +69,7 @@ void barebox_pbl(uint32_t offset)
 void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
 {
 	uint32_t r, addr, offset;
+	uint32_t pg_start, pg_end, pg_len;
 
 	/*
 	 * Get runtime address of this function. Do not
@@ -58,6 +84,30 @@ void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
 	/* Get offset between linked address and runtime address */
 	offset = (uint32_t)__ll_return - addr;
 
+	pg_start = (uint32_t)&input_data - offset;
+	pg_end = (uint32_t)&input_data_end - offset;
+	pg_len = pg_end - pg_start;
+
+	if (IS_ENABLED(CONFIG_PBL_FORCE_PIGGYDATA_COPY))
+		goto copy_piggy_link;
+
+	/*
+	 * Check if the piggydata binary will be overwritten
+	 * by the uncompressed binary or by the pbl relocation
+	 */
+	if (!offset ||
+	    !((pg_start >= TEXT_BASE && pg_start < TEXT_BASE + pg_len * 4) ||
+	      ((uint32_t)_text >= pg_start && (uint32_t)_text <= pg_end)))
+		goto copy_link;
+
+copy_piggy_link:
+	/*
+	 * copy piggydata binary to its link address
+	 */
+	memcpy(&input_data, (void *)pg_start, pg_len);
+	pg_start = (uint32_t)&input_data;
+
+copy_link:
 	/* relocate to link address if necessary */
 	if (offset)
 		memcpy((void *)_text, (void *)(_text - offset),
@@ -69,12 +119,13 @@ void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
 	/* flush I-cache before jumping to the copied binary */
 	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
 
-	r = (unsigned int)&barebox_pbl;
+	r = (unsigned int)&barebox_uncompress;
 	/* call barebox_uncompress with its absolute address */
 	__asm__ __volatile__(
 		"mov r0, %1\n"
+		"mov r1, %2\n"
 		"mov pc, %0\n"
 		:
-		: "r"(r), "r"(offset),
-		: "r0");
+		: "r"(r), "r"(pg_start), "r"(pg_len)
+		: "r0", "r1");
 }
diff --git a/arch/arm/pbl/zbarebox.lds.S b/arch/arm/pbl/zbarebox.lds.S
index d587090..2dca278 100644
--- a/arch/arm/pbl/zbarebox.lds.S
+++ b/arch/arm/pbl/zbarebox.lds.S
@@ -74,4 +74,5 @@ SECTIONS
 	__piggydata_end = .;
 
 	_barebox_image_size = __piggydata_end - HEAD_TEXT_BASE;
+	_barebox_pbl_size = __bss_start - HEAD_TEXT_BASE;
 }
diff --git a/common/Kconfig b/common/Kconfig
index 7b5a307..828fc05 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -111,11 +111,20 @@ config PBL_IMAGE
 	bool "Pre-Bootloader image"
 	depends on HAVE_PBL_IMAGE
 
+config PBL_FORCE_PIGGYDATA_COPY
+	bool
+	help
+	  In some case we need to copy the PIGGYDATA as the link address
+	  as example we run from SRAM and shutdown the SDRAM/DDR for
+	  reconfiguration but most of the time we just need to copy the
+	  executable code.
+
 if PBL_IMAGE
 
 config IMAGE_COMPRESSION
-	bool "Compressed image"
+	bool
 	depends on HAVE_IMAGE_COMPRESSION
+	default y
 
 if IMAGE_COMPRESSION
 
@@ -511,6 +520,7 @@ config DEFAULT_ENVIRONMENT
 config DEFAULT_ENVIRONMENT_COMPRESSED
 	bool
 	depends on DEFAULT_ENVIRONMENT
+	depends on !IMAGE_COMPRESSION_LZO
 	default y if ZLIB
 	default y if BZLIB
 	default y if LZO_DECOMPRESS
diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index 5484b6f..17d5fd1 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -7,8 +7,10 @@ extern char __bare_init_start[], __bare_init_end[];
 extern char _end[];
 extern void *_barebox_image_size;
 extern void *_barebox_bare_init_size;
+extern void *_barebox_pbl_size;
 
 #define barebox_image_size	(unsigned int)&_barebox_image_size
 #define barebox_bare_init_size	(unsigned int)&_barebox_bare_init_size
+#define barebox_pbl_size	(unsigned int)&_barebox_pbl_size
 
 #endif /* _ASM_GENERIC_SECTIONS_H_ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
