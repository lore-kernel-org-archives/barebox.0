Delivery-date: Wed, 12 Feb 2025 15:33:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoH-001Slj-2Q
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:33:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoF-0006MB-E9
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:33:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rjV2hs5KWAqdMhGsZVUbryqsLFOu4LBvVwdGDm6qNMU=; b=CbfZArz5zest21PXruKayWiD85
	WzxyX7XU//bGNBPEG9HLtNLCpdTTMpxwGqmIwPHZ/P/y228yCWANWpQR7fuR8BnCR/t99QAQoA3A4
	0aJUG2TDaZSpsGaZfLbBUt/NR22qQOYV1TAF+fQxuncBiWLxHoD6YoATa5bV26wyGPbQQnJolLWJA
	JfdwSKXO92RQDSXl9arhl3mMf0YEUF98BpoFv7mEvsBsTvggatvdibjV63K9tJnZX/mFj7Le7cgre
	e0nQTbaC/GJBJgh4WsBiyqO1pTaQm7oz+rPJFaOyW0IBXaDDDQ9IYKrj/C+sdYl2cthyFw+VQBtNj
	uAfDWGdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDnl-00000007gIt-37rP;
	Wed, 12 Feb 2025 14:33:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDnf-00000007gB0-3Tdk
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:33:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDne-0005r1-MQ; Wed, 12 Feb 2025 15:33:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDne-000bHB-1Z;
	Wed, 12 Feb 2025 15:33:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-24;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-18-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=3511;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=TYsLOtV1De46VZkf+KoNXRX5WFlJ9joo0pBZn8KyleY=;
 b=AfsO1YPOZR5N/5K5u/nIUC3yMmxUjcftqVRn2K6Fq3wts0G2LWe2TyX4JIk/ValbT6OhRx7ra
 IGzNIugnU8HDJO3CvNsZuVMs0PpJGNgetoFOLAacI3VXrYeeHwTWdY4
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_063315_871496_69B4286A 
X-CRM114-Status: GOOD (  14.80  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 18/20] ARM: am625-sk: cleanup board entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We used to genrate a Linux Kernel compatible image that can be started
from U-Boot. This is no longer necessary as we have full 1st stage
support now in barebox. A FIT image to be started from U-Boot can still
be generated with BOARD_GENERIC_FIT.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/am625-sk/Makefile   |  1 -
 arch/arm/boards/am625-sk/entry.S    | 29 -----------------------------
 arch/arm/boards/am625-sk/lowlevel.c | 13 +++----------
 3 files changed, 3 insertions(+), 40 deletions(-)

diff --git a/arch/arm/boards/am625-sk/Makefile b/arch/arm/boards/am625-sk/Makefile
index 8c45b1e154..8cba450528 100644
--- a/arch/arm/boards/am625-sk/Makefile
+++ b/arch/arm/boards/am625-sk/Makefile
@@ -1,4 +1,3 @@
 pbl-y += lowlevel.o
 obj-y += board.o
-pbl-$(CONFIG_MACH_K3_CORTEX_A) += entry.o
 pbl-$(CONFIG_MACH_K3_CORTEX_R5) += entry-r5.o am625-sk-ddr.o am625sip-sk-ddr.o
diff --git a/arch/arm/boards/am625-sk/entry.S b/arch/arm/boards/am625-sk/entry.S
deleted file mode 100644
index 5fc9297d50..0000000000
--- a/arch/arm/boards/am625-sk/entry.S
+++ /dev/null
@@ -1,29 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-#include <linux/linkage.h>
-#include <asm/barebox-arm64.h>
-#include <asm/image.h>
-
-#define IMAGE_FLAGS \
-	(ARM64_IMAGE_FLAG_PAGE_SIZE_4K << ARM64_IMAGE_FLAG_PAGE_SIZE_SHIFT) | \
-	(ARM64_IMAGE_FLAG_PHYS_BASE << ARM64_IMAGE_FLAG_PHYS_BASE_SHIFT)
-
-.section .text_head_entry_start_vivavis_cu33d
-ENTRY("start_am625_sk")
-	adr x1, 0	   	   /* code0 */
-	b 2f                       /* code1 */
-	.xword 0x80000             /* Image load offset */
-	.xword _barebox_image_size /* Effective Image size */
-	.xword IMAGE_FLAGS	   /* Kernel flags */
-	.xword 0                   /* reserved */
-	.xword 0                   /* reserved */
-	.xword 0                   /* reserved */
-	.ascii ARM64_IMAGE_MAGIC   /* magic number */
-	.int   0                   /* reserved (PE-COFF offset) */
-	.asciz "barebox"	   /* unused for now */
-2:
-	mov sp, x1
-	/* Stack now grows into the 0x80000 image load offset specified
-	 * above. This is more than enough until FDT /memory is decoded.
-	 */
-	b am625_sk
-ENTRY_PROC_END(start_am625_sk)
diff --git a/arch/arm/boards/am625-sk/lowlevel.c b/arch/arm/boards/am625-sk/lowlevel.c
index 5c1c38e325..10da8731ca 100644
--- a/arch/arm/boards/am625-sk/lowlevel.c
+++ b/arch/arm/boards/am625-sk/lowlevel.c
@@ -14,14 +14,10 @@
 
 #include "ddr.h"
 
-/* Called from assembly */
-void am625_sk(void *dtb);
-
-static noinline void am625_sk_continue(void *dtb)
+static noinline void am625_sk_continue(void)
 {
 	unsigned long membase = 0x80000000, memsize;
 	extern char __dtb_z_k3_am625_sk_start[];
-	unsigned int size;
 
 	memsize = am625_sdram_size();
 
@@ -33,13 +29,10 @@ static noinline void am625_sk_continue(void *dtb)
 	if (memsize == SZ_512M)
 		memsize = SZ_512M - 0x04000000; /* substract space needed for TF-A, OP-TEE, ... */
 
-	if (blob_is_valid_fdt_ptr(dtb, membase, memsize, &size))
-		handoff_data_add(HANDOFF_DATA_EXTERNAL_DT, dtb, size);
-
 	barebox_arm_entry(membase, memsize, __dtb_z_k3_am625_sk_start);
 }
 
-void am625_sk(void *dtb)
+ENTRY_FUNCTION_WITHSTACK(start_am625_sk, 0x80800000, r0, r1, r2)
 {
 	putc_ll('>');
 
@@ -49,7 +42,7 @@ void am625_sk(void *dtb)
 
 	setup_c();
 
-	am625_sk_continue(dtb);
+	am625_sk_continue();
 }
 
 static noinline void am625_sk_r5_continue(void)

-- 
2.39.5



