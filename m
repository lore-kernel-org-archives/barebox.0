Delivery-date: Tue, 16 Mar 2021 09:08:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4l7-0002Ns-SG
	for lore@lore.pengutronix.de; Tue, 16 Mar 2021 09:08:57 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4l6-0001De-EH
	for lore@pengutronix.de; Tue, 16 Mar 2021 09:08:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oKdB7+5bnoZAHWsntNkAqU6YbijVufLq28wB05vp6Oc=; b=LL9GPLN77pKKzWnn8+pdKVtbl
	jh6+8J6kVakM+phBsysJU885umsp/ey6Qpv3qc+TcN6q1UqYcJfByE/ooYrFpAdrbRudH6+elFCpX
	R1fAs5hf0RVb1+Y14c01e/H0igSfJ4RXhQJS+RXFtvfM4GRl6mHHw0YUkMqwtQ+ge8/aN5DQn6lw7
	wShdJEAlBNnQyaXjM8k5lckznDcf7Cb2v9IqVgOgBRvOaNIFryIXAYGL8biIIbrPItARqBGP38aXp
	UXGkN9dV1zQvzyCZZoTIYVtbfGosX6OWOxeO75kEyMzBiaGDd4lfmNudWVabJSM58YA8LuF9YFJlY
	w0jx1iZ2A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM4jV-0005XC-T8; Tue, 16 Mar 2021 08:07:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM4iW-000516-B2
 for barebox@desiato.infradead.org; Tue, 16 Mar 2021 08:06:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=30BH/n0rEc/wecGEvq54uF8OoxIptY9KwPIkJmpd1yI=; b=jkOqP1kFYoGFhVqU2ziYGWcQxk
 wCnzdRne3ZrikP+cMSKdeDGDo94QTxZIrUevubnHZqTTXv93b91ij43cyFho7s6Y8jU4mO7RO5KCr
 xKZtbJFZYbq8H443Ur4DU8yXP7SHJdx3WrKA5+frDbtLdoUX+TRjcMEFwzv6GB9ryiLos3wG8+Cxi
 h2WMowm7SKrpenB2l8mlWbyVe9MtH773SQG4fC/j7NzUicEzbfscB3WMW5J+K9bBlXeepmHP90jLb
 DxffqZLF/O1AiCJLViN66fd0mUVOAMy/DimJ8+FNes+nUilaKtu66fxfCslLOfF/MlDaQ4mzIb+O4
 jJzjVUWA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM4hi-001dIR-2b
 for barebox@lists.infradead.org; Tue, 16 Mar 2021 08:05:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lM4hS-0007yE-H1; Tue, 16 Mar 2021 09:05:10 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lM4hR-0006DO-80; Tue, 16 Mar 2021 09:05:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Mar 2021 09:05:02 +0100
Message-Id: <20210316080505.19361-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210316080505.19361-1-a.fatoum@pengutronix.de>
References: <20210316080505.19361-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_080529_508473_C70403E6 
X-CRM114-Status: GOOD (  20.35  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 17/20] RISC-V: add generic DT image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This barebox image implements the same header as Linux and receives
the device tree in the same register. It can be booted from barebox
or loaded by Qemu -kernel option.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig                   |  9 ++++
 arch/riscv/boot/Makefile             |  1 +
 arch/riscv/boot/board-dt-2nd-entry.S | 26 +++++++++++
 arch/riscv/boot/board-dt-2nd.c       | 29 +++++++++++++
 arch/riscv/include/asm/image.h       | 65 ++++++++++++++++++++++++++++
 5 files changed, 130 insertions(+)
 create mode 100644 arch/riscv/boot/board-dt-2nd-entry.S
 create mode 100644 arch/riscv/boot/board-dt-2nd.c
 create mode 100644 arch/riscv/include/asm/image.h

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 08a0e7cef48d..e630ad4ceb98 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -73,6 +73,15 @@ config 64BIT
 
 source "arch/riscv/mach-erizo/Kconfig"
 
+config BOARD_RISCV_GENERIC_DT
+	select BOARD_GENERIC_DT
+	bool "Build generic RISC-V device tree 2nd stage image"
+	help
+	  This enables compilation of a generic image that can be started 2nd
+	  stage from barebox or from qemu. It picks up a device tree passed
+	  in a1 like the Kernel does, so it could be used anywhere where a Kernel
+	  image could be used. The image will be called images/barebox-dt-2nd.img
+
 endmenu
 
 menu "RISC-V specific settings"
diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
index 954e9b602287..d32322875979 100644
--- a/arch/riscv/boot/Makefile
+++ b/arch/riscv/boot/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-y += start.o
 obj-pbl-y += entry.o entry_ll.o uncompress.o
+pbl-$(CONFIG_BOARD_GENERIC_DT) += board-dt-2nd.o board-dt-2nd-entry.o
diff --git a/arch/riscv/boot/board-dt-2nd-entry.S b/arch/riscv/boot/board-dt-2nd-entry.S
new file mode 100644
index 000000000000..4d3259f38e8d
--- /dev/null
+++ b/arch/riscv/boot/board-dt-2nd-entry.S
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* SPDX-FileCopyrightText: Copyright (c) 2021 Ahmad Fatoum, Pengutronix */
+#include <linux/linkage.h>
+#include <asm/image.h>
+
+.section .text_head_entry_start_dt_2nd
+ENTRY(start_dt_2nd)
+	auipc sp, 0                /* code0 */
+	j dt_2nd_riscv             /* code1 */
+	.balign 8
+#if __riscv_xlen == 64
+	.dword 0x200000            /* Image load offset(2MB) from start of RAM */
+#else
+	.dword 0x400000            /* Image load offset(4MB) from start of RAM */
+#endif
+	.dword _barebox_image_size /* Effective Image size */
+	.dword 0                   /* Kernel flags */
+	.word RISCV_HEADER_VERSION /* version */
+	.word 0                    /* reserved */
+	.dword 0                   /* reserved */
+	.ascii RISCV_IMAGE_MAGIC   /* magic1 */
+	.balign 4
+	.ascii RISCV_IMAGE_MAGIC2  /* magic2 */
+	.word   0                  /* reserved (PE-COFF offset) */
+	.asciz "barebox"           /* unused for now */
+END(start_dt_2nd)
diff --git a/arch/riscv/boot/board-dt-2nd.c b/arch/riscv/boot/board-dt-2nd.c
new file mode 100644
index 000000000000..8eaddd80b1f3
--- /dev/null
+++ b/arch/riscv/boot/board-dt-2nd.c
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <asm/barebox-riscv.h>
+#include <debug_ll.h>
+#include <pbl.h>
+
+static noinline void dt_2nd_continue(void *fdt)
+{
+	unsigned long membase, memsize;
+
+	if (!fdt)
+		hang();
+
+	fdt_find_mem(fdt, &membase, &memsize);
+
+	barebox_riscv_entry(membase, memsize, fdt);
+}
+
+/* called from assembly */
+void dt_2nd_riscv(unsigned long a0, void *fdt);
+
+void dt_2nd_riscv(unsigned long a0, void *fdt)
+{
+	relocate_to_current_adr();
+	setup_c();
+
+	dt_2nd_continue(fdt);
+}
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

