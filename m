Delivery-date: Sun, 10 Mar 2024 22:54:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjR85-00Hb4s-2L
	for lore@lore.pengutronix.de;
	Sun, 10 Mar 2024 22:54:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjR83-0006Zx-TH
	for lore@pengutronix.de; Sun, 10 Mar 2024 22:54:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XKzPnD93ytCgY6C8aAwAOGlPI9/eX1ON8aEvXkb7kt0=; b=fVCH3V7A7kq9obPRrJIn5LInBN
	mbmdpgcWgCCQMh5ecJ2m45M9dablz+W1nFZu2lK7Xdxjg22+DYfr2FB16KdzjoSKw8KY5Bf4rmAiU
	AsfImQPxpCCMQU+QmnrAh+5p9MwV3sC/WFkPYTw6HtcI5EekbLMoMF1zwWTFM9/dxhouTWVp6ntx6
	v0oZGmYMflMsZnQekJu3NVQgQrcW6tgirbJxupAtK9nZnsu08HyOukHHAWtY5aiy42LT5TSAFdHhc
	+LZcZiXFBFd2hQPM7uXvT5LdyEfmCLg9O9H1tvlPr30R3doJ2l/6slYlblm3ADtD/7L10UB9o+rSC
	aOjMOg4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjR7M-0000000GhnT-3ujJ;
	Sun, 10 Mar 2024 21:54:04 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjR7K-0000000Ghmt-1mkB
	for barebox@lists.infradead.org;
	Sun, 10 Mar 2024 21:54:03 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2d24a727f78so53580631fa.0
        for <barebox@lists.infradead.org>; Sun, 10 Mar 2024 14:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710107639; x=1710712439; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XKzPnD93ytCgY6C8aAwAOGlPI9/eX1ON8aEvXkb7kt0=;
        b=ldUNXN39qqdKZUyCdtqqC/GHqNFImt6/5T1VllH4Ske5cetAJRnOxjtjcd5B2FShH6
         UE+VIIHNk+ZzyVOoieZeGOExdqF0FCIxBnYZ4rZgXWGRVoToR7ozosdwbtSUhzAXOEX2
         +tnrfhSr4rn3yO9FuzUT0F7IMbDMrMy/GZ/e+xbApO76qNHU0lFaphFdMoMXTNw78K00
         08bxP39fCVhHYFmm6wgM1pdgdFUxqXqrZBK5jqrXaSvowE4MLoOcMNHDev31pya0tDNi
         L7O8r9dt0g2I/LRz3SrkTIIIWrATHmIQe/jN809q4esWWJxrRC2fPqs9YL/epohlmV9+
         gVzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710107639; x=1710712439;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XKzPnD93ytCgY6C8aAwAOGlPI9/eX1ON8aEvXkb7kt0=;
        b=mTqfOgwdEIIKGZuduQquUpRj2dLD4w0VfVC0JUVpTez5kL2WaKUZ3Ezmdnb4rzX8AQ
         ThkorGutk0P6ogIf+kEvcDYGTdx4RLLnb5e3AyDkP2t3eEXQelnatGPCyXjFyQbIm+Km
         MsRS8r4Sc/2P5Bbxi03qPqb0pSp4D5ofn0xyxfRxmfFn9RweXL6q0dLFPXjz2fjbBx0X
         X/P1NL4g7cNdfzZld47jo3mIqumthyMMs4pe809FnS3a3Frnk0W3bGU3J1yl3D8eW7mc
         6ixwCw5+IfdzWatkKuSX6eTgQWPoScwma5gOLjO9oW2WmJVG9U3EgNFdxZpUyXktWrKv
         +SQw==
X-Gm-Message-State: AOJu0YyUavRGjtaqlmkwgPMJD1WhRIUwwwxQN3gDvsvd9DVEiCEyNCVE
	1tlObGVb8peBOQS4o4G7uT/N5OViu+/BhpKFh6LO4DJsqdEWK6EiTIEZ3OkF
X-Google-Smtp-Source: AGHT+IENnuGcAhE52oV/vKDqJuJn4aCfPheHC3f7IeiVmU0Y7iy5qMH84ZWFglnsjWO68sksjEUb6g==
X-Received: by 2002:ac2:5e22:0:b0:512:fdc8:4910 with SMTP id o2-20020ac25e22000000b00512fdc84910mr2808052lfg.36.1710107639216;
        Sun, 10 Mar 2024 14:53:59 -0700 (PDT)
Received: from cinco.. (109-252-3-142.nat.spd-mgts.ru. [109.252.3.142])
        by smtp.gmail.com with ESMTPSA id x18-20020a056512047200b005133d263542sm805933lfd.185.2024.03.10.14.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Mar 2024 14:53:58 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 11 Mar 2024 00:54:34 +0300
Message-Id: <20240310215434.1220451-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240310_145402_566904_C79C08B3 
X-CRM114-Status: GOOD (  18.54  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] MIPS: add generic device tree 2nd stage support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Building and running barebox for 32-bit malta:

export ARCH=mips
export CROSS_COMPILE=mips-linux-gnu-
make -s qemu-malta_defconfig
sed -i "s/# \(CONFIG_BOARD_MIPS_GENERIC_DT\) is not set/\1=y/" .config
make -s oldconfig
make -s
qemu-system-mips -M malta -cpu 24Kf -m 256M \
            -nographic -serial mon:stdio \
            -bios images/barebox-qemu-malta.img \
            -net user,tftp=$(pwd) -net nic,model=e1000

Building and running barebox for 64-bit malta:

export ARCH=mips
export CROSS_COMPILE=mips-linux-gnu-
make -s qemu-malta64el_defconfig
sed -i "s/# \(CONFIG_BOARD_MIPS_GENERIC_DT\) is not set/\1=y/" .config
make -s oldconfig
make -s
qemu-system-mips64el -M malta -cpu MIPS64R2-generic -m 256M \
            -nographic -serial mon:stdio \
            -bios images/barebox-qemu-malta.img.swapped \
            -net user,tftp=$(pwd) -net nic,model=e1000

Use bootm to run barebox-dt-2nd.img (external device tree):

barebox@qemu malta:/ dhcp
barebox@qemu malta:/ cp /mnt/tftp/images/barebox-dt-2nd.img barebox.img
barebox@qemu malta:/ cp /mnt/tftp/arch/mips/dts/qemu-malta.dtb .
barebox@qemu malta:/ imd barebox.img
barebox@qemu malta:/ bootm -o qemu-malta.dtb barebox.img

Use bootm to run barebox-qemu-malta.img (encapsulated device tree):

barebox@qemu malta:/ dhcp
barebox@qemu malta:/ cp /mnt/tftp/images/barebox-qemu-malta.img barebox.img
barebox@qemu malta:/ imd barebox.img
barebox@qemu malta:/ bootm barebox.img

N.B. Use just the same commands for both 32-bit and 64-bit malta boards.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig               | 10 ++++++++++
 arch/mips/boards/Makefile       |  2 ++
 arch/mips/boards/board-dt-2nd.S | 35 +++++++++++++++++++++++++++++++++
 arch/mips/boot/main_entry-pbl.c |  4 ++++
 arch/mips/lib/bootm.c           | 13 ++++++++++--
 5 files changed, 62 insertions(+), 2 deletions(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 63ba6aa9d5a..14062dee347 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -319,6 +319,16 @@ config 64BIT
 
 endchoice
 
+config BOARD_MIPS_GENERIC_DT
+	select BOARD_GENERIC_DT
+	depends on OFDEVICE
+	bool "Build generic MIPS device tree 2nd stage image"
+	help
+	  This enables compilation of a generic image that can be started 2nd
+	  stage from barebox or from qemu. It picks up a device tree passed
+	  in a1 like the Kernel does.
+	  The image will be called images/barebox-dt-2nd.img
+
 menu "MIPS specific settings"
 
 config CMD_MIPS_CPUINFO
diff --git a/arch/mips/boards/Makefile b/arch/mips/boards/Makefile
index 9402035856c..c4ce599c934 100644
--- a/arch/mips/boards/Makefile
+++ b/arch/mips/boards/Makefile
@@ -13,3 +13,5 @@ obj-$(CONFIG_BOARD_QEMU_MALTA) += qemu-malta/
 obj-$(CONFIG_BOARD_RZX50) += ritmix-rzx50/
 obj-$(CONFIG_BOARD_TPLINK_MR3020) += tplink-mr3020/
 obj-$(CONFIG_BOARD_TPLINK_WDR4300) += tplink-wdr4300/
+
+pbl-$(CONFIG_BOARD_MIPS_GENERIC_DT) += board-dt-2nd.o
diff --git a/arch/mips/boards/board-dt-2nd.S b/arch/mips/boards/board-dt-2nd.S
new file mode 100644
index 00000000000..a1465f09e36
--- /dev/null
+++ b/arch/mips/boards/board-dt-2nd.S
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Startup Code for generic MIPS device tree 2nd stage image
+ *
+ * Copyright (C) 2024 Antony Pavlov <antonynpavlov@gmail.com>
+ */
+
+#include <asm/asm.h>
+#include <asm/pbl_macros.h>
+#include <linux/sizes.h>
+
+ENTRY_FUNCTION(start_dt_2nd)
+
+	/* save device tree address in v1 */
+	move	v1, a1
+
+	mips_cpu_setup
+
+	copy_to_link_location	start_dt_2nd
+
+	stack_setup
+
+	/* pbl_main_entry() computes fdt_len by itself
+	 * if fdt == fdt_end */
+	move	a0, v1 /* fdt */
+	move	a1, v1 /* fdt_end */
+	PTR_LI	a2, SZ_256M /* ram_size */
+	PTR_LA	v0, pbl_main_entry
+	jal	v0
+	 nop
+
+	/* No return */
+1:
+	b	1b
+	 nop
diff --git a/arch/mips/boot/main_entry-pbl.c b/arch/mips/boot/main_entry-pbl.c
index 78982fd995e..389dc94f370 100644
--- a/arch/mips/boot/main_entry-pbl.c
+++ b/arch/mips/boot/main_entry-pbl.c
@@ -11,6 +11,7 @@
 #include <asm/sections.h>
 #include <asm-generic/memory_layout.h>
 #include <debug_ll.h>
+#include <asm/unaligned.h>
 
 extern void *input_data;
 extern void *input_data_end;
@@ -45,6 +46,9 @@ void __section(.text_entry) pbl_main_entry(void *fdt, void *fdt_end,
 	barebox_uncompress(&input_data, piggy_len);
 
 	fdt_len = (unsigned long)fdt_end - (unsigned long)fdt;
+	if (!fdt_len) {
+		fdt_len = get_unaligned_be32((void *)((unsigned long)fdt + 4));
+	}
 	fdt_new = (void *)PAGE_ALIGN_DOWN(TEXT_BASE - MALLOC_SIZE - STACK_SIZE - fdt_len);
 	memcpy(fdt_new, fdt, fdt_len);
 
diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 643ad57e4db..86573dec7f1 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -16,12 +16,21 @@
 
 static int do_bootm_barebox(struct image_data *data)
 {
-	void (*barebox)(void);
+	void (*barebox)(int, void *);
+	void *fdt = NULL;
 
 	barebox = read_file(data->os_file, NULL);
 	if (!barebox)
 		return -EINVAL;
 
+	if (data->oftree_file) {
+		fdt = bootm_get_devicetree(data);
+		if (IS_ERR(fdt)) {
+			pr_err("Failed to load dtb\n");
+			return PTR_ERR(fdt);
+		}
+	}
+
 	if (data->dryrun) {
 		free(barebox);
 		return 0;
@@ -29,7 +38,7 @@ static int do_bootm_barebox(struct image_data *data)
 
 	shutdown_barebox();
 
-	barebox();
+	barebox(-2, fdt);
 
 	restart_machine();
 }
-- 
2.39.0



