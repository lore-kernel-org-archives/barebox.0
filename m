Delivery-date: Wed, 12 Feb 2025 15:33:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoH-001SlY-1H
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:33:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDoF-0006MJ-El
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:33:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zd2IjS4kmQhVZ68RaMKAzNA265dTDoVXcFXHbWQlkJI=; b=iUuOHNmrZ0s2TcWH/g5EkmiSYk
	X/Zkn6NzPJxPlW8mWHivautQFlsJIDCjm5xy3tt7nXjjvI6s5wupLgKQnojKlGy91Ey8WXP+p8oNN
	V7i3hv9lcRyLzov56JImQFJkxgLtTONNHltgpRu0hbQVghg0tfO1z7xAuBhGl0OEzfRxkftsdc/8v
	LZlMeS80BXwwuY+0sg+TqlI3eMW1gmDW4BOUR92N05Vl7GF0hdzfYPNcZgydlfWLHSVBcSPXno0zF
	mnZmgsYwsZ+0MsGNb5d7cTMqg5oWcyvfxnPY9AdpC7Y62Of+wB8m+f9CV9XuSf5DZcegh5MbHU6+j
	vv2WcmSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDni-00000007gEb-2PNz;
	Wed, 12 Feb 2025 14:33:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDnf-00000007gAu-1XeW
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:33:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDne-0005pr-44; Wed, 12 Feb 2025 15:33:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDnd-000bGo-2z;
	Wed, 12 Feb 2025 15:33:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-25;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-19-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=3555;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=cvLr8Z5MxRC/YHtgziankTx2AcG95bUOzLOfLtlVDBQ=;
 b=uiUnnP1tMUT4L811v5S6grwBROSbbgO68LaOj3+9UseGwxkhOyc/BzxdBUe0RwbLlfTspICF3
 /LCKEcOBRF/Cesj4bVlkECOpMQ4EqsiGvlpNGtt1KMj707NqmO0afm9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_063315_407121_B344ACB7 
X-CRM114-Status: GOOD (  14.30  )
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
Subject: [PATCH v2 19/20] ARM: beagleplay: cleanup board entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We used to genrate a Linux Kernel compatible image that can be started
from U-Boot. This is no longer necessary as we have full 1st stage
support now in barebox. A FIT image to be started from U-Boot can still
be generated with BOARD_GENERIC_FIT.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagleplay/Makefile   |  1 -
 arch/arm/boards/beagleplay/entry.S    | 29 -----------------------------
 arch/arm/boards/beagleplay/lowlevel.c | 18 ++++++------------
 3 files changed, 6 insertions(+), 42 deletions(-)

diff --git a/arch/arm/boards/beagleplay/Makefile b/arch/arm/boards/beagleplay/Makefile
index 396dff29a2..a8c7320bdb 100644
--- a/arch/arm/boards/beagleplay/Makefile
+++ b/arch/arm/boards/beagleplay/Makefile
@@ -1,3 +1,2 @@
 pbl-y += lowlevel.o
-pbl-$(CONFIG_MACH_K3_CORTEX_A) += entry.o
 pbl-$(CONFIG_MACH_K3_CORTEX_R5) += entry-r5.o ddr.o
diff --git a/arch/arm/boards/beagleplay/entry.S b/arch/arm/boards/beagleplay/entry.S
deleted file mode 100644
index 6e4c7196f3..0000000000
--- a/arch/arm/boards/beagleplay/entry.S
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
-.section .text_head_entry_start_beagleplay
-ENTRY("start_beagleplay")
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
-	b beagleplay
-ENTRY_PROC_END(start_beagleplay)
diff --git a/arch/arm/boards/beagleplay/lowlevel.c b/arch/arm/boards/beagleplay/lowlevel.c
index 744f78d009..9430017568 100644
--- a/arch/arm/boards/beagleplay/lowlevel.c
+++ b/arch/arm/boards/beagleplay/lowlevel.c
@@ -10,27 +10,21 @@
 #include <compressed-dtb.h>
 #include <cache.h>
 #include <mach/k3/r5.h>
+#include <mach/k3/common.h>
 
 #include "ddr.h"
 
-/* Called from assembly */
-void beagleplay(void *dtb);
-
-static noinline void beagleplay_continue(void *dtb)
+static noinline void beagleplay_continue(void)
 {
-	unsigned long membase, memsize;
+	unsigned long membase = 0x80000000, memsize;
 	extern char __dtb_k3_am625_beagleplay_start[];
-	unsigned int size;
-
-	fdt_find_mem(__dtb_k3_am625_beagleplay_start, &membase, &memsize);
 
-	if (blob_is_valid_fdt_ptr(dtb, membase, memsize, &size))
-		handoff_data_add(HANDOFF_DATA_EXTERNAL_DT, dtb, size);
+	memsize = am625_sdram_size();
 
 	barebox_arm_entry(membase, memsize, __dtb_k3_am625_beagleplay_start);
 }
 
-void beagleplay(void *dtb)
+ENTRY_FUNCTION_WITHSTACK(start_beagleplay, 0x80800000, r0, r1, r2)
 {
 	putc_ll('>');
 
@@ -40,7 +34,7 @@ void beagleplay(void *dtb)
 
 	setup_c();
 
-	beagleplay_continue(dtb);
+	beagleplay_continue();
 }
 
 extern char __dtb_k3_am625_r5_beagleplay_start[];

-- 
2.39.5



