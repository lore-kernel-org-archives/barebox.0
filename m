Delivery-date: Sun, 21 Mar 2021 16:21:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNztP-00026S-OG
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:21:27 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNztJ-0002jr-AA
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:21:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mTGg0mlynKaP+cDAG9GGOuoz4mTroiKJY9s2tBTUHSk=; b=Z0FmJ74C3qWw7PrN0b+o+I3yi
	xgLE2x9XgZ35hbWPUShKrlDYBCa28PeJ/XE6q7oj8A/b4kudFlNkmoEfkTDh2J1qgg8dDXnqgLS0b
	oqdK/cVKP4tFuAwn7j7fztFBA9iyeLubN5cvQ8Smvdi0vvHUzdlPjlI0q8lEIghUMM+6TIcG9mq7D
	qjxubVIDeAkJYe5+N3U2zpUYJ8v9yIXTHEQ4SKZ7a3b6faUEpJ30AOenKFbn/u6kZKNxH1qguPdTh
	jHdJI0q1a8Q3Ugh8rJFk/DnRyrqxmLoZh1f4Bq+gR9Hutr59Zgo0uegg+Gy2ee5AzCP4OHfaTSPZk
	eVfuqCGoA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzrt-00A4mQ-Ue; Sun, 21 Mar 2021 15:19:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzm6-00A41a-Hz
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:15:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm2-00011W-7Y; Sun, 21 Mar 2021 16:13:50 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm1-0007wV-0P; Sun, 21 Mar 2021 16:13:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 21 Mar 2021 16:13:36 +0100
Message-Id: <20210321151344.5810-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210321151344.5810-1-a.fatoum@pengutronix.de>
References: <20210321151344.5810-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151441_871162_13948D43 
X-CRM114-Status: GOOD (  15.75  )
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
Subject: [PATCH v3 13/21] RISC-V: implement PBL image header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We'll adopt the RISC-V Linux kernel image header structure for the
barebox images as well. The __barebox_riscv_header() macro implementing
it can customize some fields to allow differentiating between barebox
and kernel images. It will be used in follow-up commits to implement
the entry points of both the erizo image and the generic DT image.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/include/asm/barebox-riscv-head.h | 36 ++++++++++++
 arch/riscv/include/asm/image.h              | 65 +++++++++++++++++++++
 2 files changed, 101 insertions(+)
 create mode 100644 arch/riscv/include/asm/barebox-riscv-head.h
 create mode 100644 arch/riscv/include/asm/image.h

diff --git a/arch/riscv/include/asm/barebox-riscv-head.h b/arch/riscv/include/asm/barebox-riscv-head.h
new file mode 100644
index 000000000000..f681ec8bcee6
--- /dev/null
+++ b/arch/riscv/include/asm/barebox-riscv-head.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* Copyright (c) 2021 Ahmad Fatoum, Pengutronix */
+
+#ifndef __ASM_RISCV_HEAD_H
+#define __ASM_RISCV_HEAD_H
+
+#include <linux/kernel.h>
+#include <asm/image.h>
+
+#define ____barebox_riscv_header(instr, load_offset, version, magic1, magic2)         \
+	__asm__ __volatile__ (                                                        \
+		instr "\n"                     /* code0 */                            \
+		"j 1f\n"                       /* code1 */                            \
+		".balign 8\n"                                                         \
+		".dword " #load_offset "\n"    /* Image load offset from RAM start */ \
+		".dword _barebox_image_size\n" /* Effective Image size */             \
+		".dword 0\n"                   /* Kernel flags */                     \
+		".word " #version "\n"         /* version */                          \
+		".word 0\n"                    /* reserved */                         \
+		".dword 0\n"                   /* reserved */                         \
+		".asciz \"" magic1 "\"\n"      /* magic 1 */                          \
+		".balign 8\n"                                                         \
+		".ascii \"" magic2 "\"\n"      /* magic 2 */                          \
+		".word 0\n"                    /* reserved (PE-COFF offset) */        \
+		"1:\n"                                                                \
+	)
+
+#define __barebox_riscv_header(instr, load_offset, version, magic1, magic2) \
+        ____barebox_riscv_header(instr, load_offset, version, magic1, magic2)
+
+#ifndef __barebox_riscv_head
+#define __barebox_riscv_head() \
+	__barebox_riscv_header("nop", 0x55555555FFFFFFFF, 0x0, "barebox", "RSCV")
+#endif
+
+#endif /* __ASM_RISCV_HEAD_H */
diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
new file mode 100644
index 000000000000..e0b319af3681
--- /dev/null
+++ b/arch/riscv/include/asm/image.h
@@ -0,0 +1,65 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _ASM_RISCV_IMAGE_H
+#define _ASM_RISCV_IMAGE_H
+
+#define RISCV_IMAGE_MAGIC	"RISCV\0\0\0"
+#define RISCV_IMAGE_MAGIC2	"RSC\x05"
+
+#define RISCV_IMAGE_FLAG_BE_SHIFT	0
+#define RISCV_IMAGE_FLAG_BE_MASK	0x1
+
+#define RISCV_IMAGE_FLAG_LE		0
+#define RISCV_IMAGE_FLAG_BE		1
+
+#ifdef CONFIG_CPU_BIG_ENDIAN
+#error conversion of header fields to LE not yet implemented
+#else
+#define __HEAD_FLAG_BE		RISCV_IMAGE_FLAG_LE
+#endif
+
+#define __HEAD_FLAG(field)	(__HEAD_FLAG_##field << \
+				RISCV_IMAGE_FLAG_##field##_SHIFT)
+
+#define __HEAD_FLAGS		(__HEAD_FLAG(BE))
+
+#define RISCV_HEADER_VERSION_MAJOR 0
+#define RISCV_HEADER_VERSION_MINOR 2
+
+#define RISCV_HEADER_VERSION (RISCV_HEADER_VERSION_MAJOR << 16 | \
+			      RISCV_HEADER_VERSION_MINOR)
+
+#ifndef __ASSEMBLY__
+/**
+ * struct riscv_image_header - riscv kernel image header
+ * @code0:		Executable code
+ * @code1:		Executable code
+ * @text_offset:	Image load offset (little endian)
+ * @image_size:		Effective Image size (little endian)
+ * @flags:		kernel flags (little endian)
+ * @version:		version
+ * @res1:		reserved
+ * @res2:		reserved
+ * @magic:		Magic number (RISC-V specific; deprecated)
+ * @magic2:		Magic number 2 (to match the ARM64 'magic' field pos)
+ * @res3:		reserved (will be used for PE COFF offset)
+ *
+ * The intention is for this header format to be shared between multiple
+ * architectures to avoid a proliferation of image header formats.
+ */
+
+struct riscv_image_header {
+	u32 code0;
+	u32 code1;
+	u64 text_offset;
+	u64 image_size;
+	u64 flags;
+	u32 version;
+	u32 res1;
+	u64 res2;
+	u64 magic;
+	u32 magic2;
+	u32 res3;
+};
+#endif /* __ASSEMBLY__ */
+#endif /* _ASM_RISCV_IMAGE_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

