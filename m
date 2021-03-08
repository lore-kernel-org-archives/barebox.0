Delivery-date: Mon, 08 Mar 2021 20:33:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJLdM-0007UY-8A
	for lore@lore.pengutronix.de; Mon, 08 Mar 2021 20:33:40 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJLdL-0003jh-8C
	for lore@pengutronix.de; Mon, 08 Mar 2021 20:33:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+i7rjGSoeXauJAGC3FXFmnIJtrBgqfL8A8gbkCHBcBk=; b=F5L/2DNKDF8G+YHBYGbBZGFeX
	Wuq317TepgZskRmwlMVbqvS47yAXGnmoCoorychZyLHR5Fb3Mx7oaX62FdYQ2HbMVU8UCN5d44n1D
	muXuLyVWkoxDEVogEi4f52DyO+0I484an8XldgRN72fZmKBXfLsXiUv9iFdJq8MuQrCOUkpu8EPBu
	BDdZPoNF3sviANGVYyRQMDipQMpe5kHjP4KSob8EUa7pO3K99QHGCeCVHA9PvzXrqYcNLV1tCT0qH
	NUdb0iJYbeLCFhSVRPyz/5nRgq3Dxe2QVv9dui20zgMaFU18QeGT5AsTNPzwRdbdsSE4lucfLHs4Z
	knQmUeYRA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJLc7-0027Hc-8m; Mon, 08 Mar 2021 19:32:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJLc2-0027FN-Hc
 for barebox@lists.infradead.org; Mon, 08 Mar 2021 19:32:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJLc1-0003Z3-T2; Mon, 08 Mar 2021 20:32:17 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJLc1-0008VO-L4; Mon, 08 Mar 2021 20:32:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Mar 2021 20:32:14 +0100
Message-Id: <20210308193214.32573-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210308193214.32573-1-a.fatoum@pengutronix.de>
References: <20210308193214.32573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_193218_833651_461D2CC4 
X-CRM114-Status: GOOD (  20.23  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ARM64: board-dt-2nd: adopt kernel image header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ARM64 generic DT image is meant to be interchangeable with a
kernel image to aid in debugging and testing. To achieve this, it
reuses an externally passed device tree in x0, just like Linux does.

The ARM barebox image format used however imposes some limitations:

  - Commands verifying the header before boot, like U-Boot's booti
    won't boot the barebox image

  - The barebox image is not fully relocatable. It has the implicit
    assumption that the barebox stack can grow into the memory space
    preceding the barebox image while the /memory node is parsed
    from the FDT.

Adopting the Linux ARM64 header solves both issues. booti won't be
able to tell us apart and we can specify an image load offset to
reserve a stack space that won't interfere with anything else.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/board-dt-2nd-aarch64.S | 31 +++++++++++++--
 arch/arm/cpu/board-dt-2nd.c         |  4 +-
 arch/arm/include/asm/image.h        | 59 +++++++++++++++++++++++++++++
 3 files changed, 87 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/include/asm/image.h

diff --git a/arch/arm/cpu/board-dt-2nd-aarch64.S b/arch/arm/cpu/board-dt-2nd-aarch64.S
index 0540a1690dbe..d32b4066cae2 100644
--- a/arch/arm/cpu/board-dt-2nd-aarch64.S
+++ b/arch/arm/cpu/board-dt-2nd-aarch64.S
@@ -1,11 +1,34 @@
 /* SPDX-License-Identifier: GPL-2.0-or-later */
 #include <linux/linkage.h>
 #include <asm/barebox-arm64.h>
+#include <asm/image.h>
 
-ENTRY_PROC(start_dt_2nd)
-	adr x1, stack
+#define IMAGE_FLAGS \
+	(ARM64_IMAGE_FLAG_PAGE_SIZE_4K << ARM64_IMAGE_FLAG_PAGE_SIZE_SHIFT) | \
+	(ARM64_IMAGE_FLAG_PHYS_BASE << ARM64_IMAGE_FLAG_PHYS_BASE_SHIFT)
+
+.section .text_head_entry_start_dt_2nd
+ENTRY("start_dt_2nd")
+1:
+	adr x1, 1b		   /* code0 */
+	b 2f                       /* code1 */
+	.xword 0x80000             /* Image load offset */
+	.xword _barebox_image_size /* Effective Image size */
+	.xword IMAGE_FLAGS	   /* Kernel flags */
+	.xword 0                   /* reserved */
+	.xword 0                   /* reserved */
+	.xword 0                   /* reserved */
+	.ascii ARM64_IMAGE_MAGIC   /* magic number */
+	.int   0                   /* reserved (PE-COFF offset) */
+	.asciz "barebox"	   /* unused for now */
+2:
+	ldr x2, linkadr
+	subs x1, x1, x2		    /* get runtime image load offset */
 	mov sp, x1
+	/* Stack now grows into the 0x80000 image load offset specified
+	 * above. This is more than enough until FDT /memory is decoded.
+	 */
 	b dt_2nd_aarch64
-.word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
-stack:
+linkadr:
+.xword start_dt_2nd
 ENTRY_PROC_END(start_dt_2nd)
diff --git a/arch/arm/cpu/board-dt-2nd.c b/arch/arm/cpu/board-dt-2nd.c
index bb131807859c..6f6f53591844 100644
--- a/arch/arm/cpu/board-dt-2nd.c
+++ b/arch/arm/cpu/board-dt-2nd.c
@@ -29,9 +29,7 @@ void dt_2nd_aarch64(void *fdt);
 
 void dt_2nd_aarch64(void *fdt)
 {
-	unsigned long image_start = (unsigned long)_text + global_variable_offset();
-
-	arm_setup_stack(image_start);
+	/* entry point already set up stack */
 
 	relocate_to_current_adr();
 	setup_c();
diff --git a/arch/arm/include/asm/image.h b/arch/arm/include/asm/image.h
new file mode 100644
index 000000000000..c2b13213c720
--- /dev/null
+++ b/arch/arm/include/asm/image.h
@@ -0,0 +1,59 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __ASM_IMAGE_H
+#define __ASM_IMAGE_H
+
+#define ARM64_IMAGE_MAGIC	"ARM\x64"
+
+#define ARM64_IMAGE_FLAG_BE_SHIFT		0
+#define ARM64_IMAGE_FLAG_PAGE_SIZE_SHIFT	(ARM64_IMAGE_FLAG_BE_SHIFT + 1)
+#define ARM64_IMAGE_FLAG_PHYS_BASE_SHIFT \
+					(ARM64_IMAGE_FLAG_PAGE_SIZE_SHIFT + 2)
+#define ARM64_IMAGE_FLAG_BE_MASK		0x1
+#define ARM64_IMAGE_FLAG_PAGE_SIZE_MASK		0x3
+#define ARM64_IMAGE_FLAG_PHYS_BASE_MASK		0x1
+
+#define ARM64_IMAGE_FLAG_LE			0
+#define ARM64_IMAGE_FLAG_BE			1
+#define ARM64_IMAGE_FLAG_PAGE_SIZE_4K		1
+#define ARM64_IMAGE_FLAG_PAGE_SIZE_16K		2
+#define ARM64_IMAGE_FLAG_PAGE_SIZE_64K		3
+#define ARM64_IMAGE_FLAG_PHYS_BASE		1
+
+#ifndef __ASSEMBLY__
+
+#define arm64_image_flag_field(flags, field) \
+				(((flags) >> field##_SHIFT) & field##_MASK)
+
+/*
+ * struct arm64_image_header - arm64 kernel image header
+ * See Documentation/arm64/booting.rst for details
+ *
+ * @code0:		Executable code, or
+ *   @mz_header		  alternatively used for part of MZ header
+ * @code1:		Executable code
+ * @text_offset:	Image load offset
+ * @image_size:		Effective Image size
+ * @flags:		kernel flags
+ * @reserved:		reserved
+ * @magic:		Magic number
+ * @reserved5:		reserved, or
+ *   @pe_header:	  alternatively used for PE COFF offset
+ */
+
+struct arm64_image_header {
+	__le32 code0;
+	__le32 code1;
+	__le64 text_offset;
+	__le64 image_size;
+	__le64 flags;
+	__le64 res2;
+	__le64 res3;
+	__le64 res4;
+	__le32 magic;
+	__le32 res5;
+};
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_IMAGE_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

