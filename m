Delivery-date: Sun, 21 Mar 2021 16:21:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNztH-000250-PP
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:21:19 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNztC-0002g8-ET
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:21:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pVnOYXBxbBi6xByrv30mS2CljonN6gjRK6nVoGjF54c=; b=bJcyFuFZo8/jz5+AU0UP6F2Tm
	VIkEcqWjOkYmezCx9VxVOI2tcPgEmldBpomCR5iBdieX5wwwXzxyexf7rkX9Fr3g4ZfIYvd9n+2Zl
	Xvmuri9wkiP1F/MpD0ZE1Wi8wZbqRvTR+pY9AE1FQOhLoElWmhiTX9ljOs04JE/IPZI0kQbnTMguS
	0ynZmamZAKpYbdO3H6Ik6+okiZr/jaQSdzxUodeZ8wzYJSp9kFKNB8izjvhnhqQCBnix4UpuqfgSB
	3S42nlbkkaf6hQvCoi/AP58HBFOb8zTcyOPtC8xJLlsTiRLyHUngCJsKhGaSoIrdu6Y0v5OGvN3U5
	mHuG6Hilg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzrn-00A4iI-Pj; Sun, 21 Mar 2021 15:19:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzmA-00A41V-BK
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:14:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm1-00011M-VK; Sun, 21 Mar 2021 16:13:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm0-0007w1-SQ; Sun, 21 Mar 2021 16:13:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 21 Mar 2021 16:13:26 +0100
Message-Id: <20210321151344.5810-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210321151344.5810-1-a.fatoum@pengutronix.de>
References: <20210321151344.5810-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151441_875455_89750003 
X-CRM114-Status: GOOD (  18.49  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 03/21] ARM: make ARM_USE_COMPRESSED_DTB available for other
 arches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Other PBL-enabled architecture can benefit from compressed dtbs as well.
Move symbol and code to a comm place to be able to use it from RISC-V
in a later commit. In order not to break out of tree boards at runtime,
the old symbol name is maintained for ARM.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                   |  5 ++---
 arch/arm/cpu/start.c               | 20 ++++--------------
 arch/arm/include/asm/barebox-arm.h |  7 -------
 common/Kconfig                     |  6 ++++++
 include/compressed-dtb.h           | 33 ++++++++++++++++++++++++++++++
 5 files changed, 45 insertions(+), 26 deletions(-)
 create mode 100644 include/compressed-dtb.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3b983c8b3d0a..faf5050eaf23 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -18,9 +18,8 @@ config HAVE_MACH_ARM_HEAD
 	bool
 
 config ARM_USE_COMPRESSED_DTB
-	bool
-	select UNCOMPRESS
-	select LZO_DECOMPRESS
+       bool
+       select USE_COMPRESSED_DTB
 
 config TEXT_BASE
 	hex
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f48f5beea807..c61db668658b 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -18,6 +18,7 @@
 #include <linux/kasan.h>
 #include <memory.h>
 #include <uncompress.h>
+#include <compressed-dtb.h>
 #include <malloc.h>
 
 #include <debug_ll.h>
@@ -30,18 +31,6 @@ static unsigned long arm_endmem;
 static void *barebox_boarddata;
 static unsigned long barebox_boarddata_size;
 
-static bool blob_is_fdt(const void *blob)
-{
-	return get_unaligned_be32(blob) == FDT_MAGIC;
-}
-
-static bool blob_is_compressed_fdt(const void *blob)
-{
-	const struct barebox_arm_boarddata_compressed_dtb *dtb = blob;
-
-	return dtb->magic == BAREBOX_ARM_BOARDDATA_COMPRESSED_DTB_MAGIC;
-}
-
 static bool blob_is_arm_boarddata(const void *blob)
 {
 	const struct barebox_arm_boarddata *bd = blob;
@@ -64,7 +53,7 @@ void *barebox_arm_boot_dtb(void)
 	void *dtb;
 	void *data;
 	int ret;
-	struct barebox_arm_boarddata_compressed_dtb *compressed_dtb;
+	struct barebox_boarddata_compressed_dtb *compressed_dtb;
 	static void *boot_dtb;
 
 	if (boot_dtb)
@@ -75,8 +64,7 @@ void *barebox_arm_boot_dtb(void)
 		return barebox_boarddata;
 	}
 
-	if (!IS_ENABLED(CONFIG_ARM_USE_COMPRESSED_DTB) || !barebox_boarddata
-			|| !blob_is_compressed_fdt(barebox_boarddata))
+	if (!fdt_blob_can_be_decompressed(barebox_boarddata))
 		return NULL;
 
 	compressed_dtb = barebox_boarddata;
@@ -185,7 +173,7 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 			totalsize = get_unaligned_be32(boarddata + 4);
 			name = "DTB";
 		} else if (blob_is_compressed_fdt(boarddata)) {
-			struct barebox_arm_boarddata_compressed_dtb *bd = boarddata;
+			struct barebox_boarddata_compressed_dtb *bd = boarddata;
 			totalsize = bd->datalen + sizeof(*bd);
 			name = "Compressed DTB";
 		} else if (blob_is_arm_boarddata(boarddata)) {
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index f81257f896a9..348a55e8040f 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -84,13 +84,6 @@ u32 barebox_arm_machine(void);
 unsigned long arm_mem_ramoops_get(void);
 unsigned long arm_mem_endmem_get(void);
 
-struct barebox_arm_boarddata_compressed_dtb {
-#define BAREBOX_ARM_BOARDDATA_COMPRESSED_DTB_MAGIC 0x7b66bcbd
-	u32 magic;
-	u32 datalen;
-	u32 datalen_uncompressed;
-};
-
 struct barebox_arm_boarddata *barebox_arm_get_boarddata(void);
 
 #if defined(CONFIG_RELOCATABLE) && defined(CONFIG_ARM_EXCEPTIONS)
diff --git a/common/Kconfig b/common/Kconfig
index 56064d12c5f3..ede26cec081a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -42,6 +42,12 @@ config BLOCK
 config BLOCK_WRITE
 	bool
 
+config USE_COMPRESSED_DTB
+	bool
+	depends on ARM
+	select UNCOMPRESS
+	select LZO_DECOMPRESS
+
 config ELF
 	bool "ELF Support" if COMPILE_TEST
 
diff --git a/include/compressed-dtb.h b/include/compressed-dtb.h
new file mode 100644
index 000000000000..1ba98a7e2b92
--- /dev/null
+++ b/include/compressed-dtb.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef COMPRESSED_DTB_H_
+#define COMPRESSED_DTB_H_
+
+#include <linux/types.h>
+#include <asm/unaligned.h>
+
+struct barebox_boarddata_compressed_dtb {
+#define BAREBOX_BOARDDATA_COMPRESSED_DTB_MAGIC 0x7b66bcbd
+	u32 magic;
+	u32 datalen;
+	u32 datalen_uncompressed;
+};
+
+static inline bool blob_is_compressed_fdt(const void *blob)
+{
+	const struct barebox_boarddata_compressed_dtb *dtb = blob;
+
+	return dtb->magic == BAREBOX_BOARDDATA_COMPRESSED_DTB_MAGIC;
+}
+
+static inline bool fdt_blob_can_be_decompressed(const void *blob)
+{
+	return IS_ENABLED(CONFIG_USE_COMPRESSED_DTB) && blob
+			&& blob_is_compressed_fdt(blob);
+}
+
+static inline bool blob_is_fdt(const void *blob)
+{
+	return get_unaligned_be32(blob) == FDT_MAGIC;
+}
+
+#endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

