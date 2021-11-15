Delivery-date: Mon, 15 Nov 2021 10:28:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmYI8-00087P-OC
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 10:28:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmYI7-0006oz-3i
	for lore@pengutronix.de; Mon, 15 Nov 2021 10:28:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbJcxegNZeNLpkcH6A1WJGJcZli5fTfQlgTrTj8N84w=; b=r5NKCzB8CsRlD4
	4A0gH37l+G49c48Ho32Tx+aMhDeDlkz2LTUWiYnthUbOevFLb4kTQMoPvsNP5DvS4jr5Wm4AqTCUg
	bhgh7dzg+Oiw0ZJ/PONsxXlhNPAR9kUvSkFFcNLRcIXd/AM09s4PqtcaHS1ASqETU734nplZvdX+J
	qUoaF+AfuHkwD2A2tkKVQD7rgQz0JzJdZ7Tqzf3Tjf+nG6E9IeyfEwSRruOsLvFvPDWCn4CfTEs94
	b526IIsB/TeX/PoEmIyqRo5ikX/VQcOorwp8+/t3I/SAKvLQDnX58uUEcFfDNE9KcsS6NCMIpxAat
	+xdtW/PhyD9//WzXoIew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmYGf-00Ev4e-MY; Mon, 15 Nov 2021 09:27:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmXqn-00EoCn-4u
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 09:00:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mmXqj-0002sk-6k; Mon, 15 Nov 2021 10:00:25 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mmXqi-00HaqY-Na; Mon, 15 Nov 2021 10:00:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Nov 2021 10:00:23 +0100
Message-Id: <20211115090023.4192546-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211115090023.4192546-1-a.fatoum@pengutronix.de>
References: <20211115090023.4192546-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_010029_242582_BCDD31A7 
X-CRM114-Status: GOOD (  12.50  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] efi: efi-iomem: fix erroneous use of IS_ENABLED()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

IS_ENABLED() is supposed to be used for CONFIG_ macros, which a
local #define DEBUG isn't. Fix by using __is_defined instead.

The reason, we have this as a compile time switch is that the memory
map can be very extensive (> 100 entries) and is usually only
interesting during development.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/efi-iomem.c | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/common/efi/efi-iomem.c b/common/efi/efi-iomem.c
index 11ea94f6a2a6..4d34328a5802 100644
--- a/common/efi/efi-iomem.c
+++ b/common/efi/efi-iomem.c
@@ -10,7 +10,7 @@
 #include <memory.h>
 #include <linux/sizes.h>
 
-static int efi_parse_mmap(struct efi_memory_desc *desc)
+static int efi_parse_mmap(struct efi_memory_desc *desc, bool verbose)
 {
 	struct resource *res;
 	u32 flags;
@@ -30,7 +30,7 @@ static int efi_parse_mmap(struct efi_memory_desc *desc)
 
 	switch (desc->type) {
 	case EFI_RESERVED_TYPE:
-		if (!IS_ENABLED(DEBUG))
+		if (verbose)
 			return 0;
 		name = "reserved";
 		flags = IORESOURCE_MEM | IORESOURCE_DISABLED;
@@ -44,67 +44,67 @@ static int efi_parse_mmap(struct efi_memory_desc *desc)
 		flags = IORESOURCE_MEM;
 		break;
 	case EFI_BOOT_SERVICES_CODE:
-		if (!IS_ENABLED(DEBUG))
+		if (!verbose)
 			return 0;
 		name = "boot services code";
 		flags = IORESOURCE_MEM | IORESOURCE_READONLY;
 		break;
 	case EFI_BOOT_SERVICES_DATA:
-		if (!IS_ENABLED(DEBUG))
+		if (!verbose)
 			return 0;
 		name = "boot services data";
 		flags = IORESOURCE_MEM;
 		break;
 	case EFI_RUNTIME_SERVICES_CODE:
-		if (!IS_ENABLED(DEBUG))
+		if (!verbose)
 			return 0;
 		name = "runtime services code";
 		flags = IORESOURCE_MEM | IORESOURCE_READONLY;
 		break;
 	case EFI_RUNTIME_SERVICES_DATA:
-		if (!IS_ENABLED(DEBUG))
+		if (!verbose)
 			return 0;
 		name = "runtime services data";
 		flags = IORESOURCE_MEM;
 		break;
 	case EFI_CONVENTIONAL_MEMORY:
-		if (!IS_ENABLED(DEBUG))
+		if (!verbose)
 			return 0;
 		name = "conventional memory";
 		flags = IORESOURCE_MEM | IORESOURCE_PREFETCH | IORESOURCE_CACHEABLE;
 		break;
 	case EFI_UNUSABLE_MEMORY:
-		if (!IS_ENABLED(DEBUG))
+		if (!verbose)
 			return 0;
 		name = "unusable";
 		flags = IORESOURCE_MEM | IORESOURCE_DISABLED;
 		break;
 	case EFI_ACPI_RECLAIM_MEMORY:
-		if (!IS_ENABLED(DEBUG))
+		if (!verbose)
 			return 0;
 		name = "ACPI reclaim memory";
 		flags = IORESOURCE_MEM | IORESOURCE_READONLY;
 		break;
 	case EFI_ACPI_MEMORY_NVS:
-		if (!IS_ENABLED(DEBUG))
+		if (!verbose)
 			return 0;
 		name = "ACPI NVS memory";
 		flags = IORESOURCE_MEM | IORESOURCE_READONLY;
 		break;
 	case EFI_MEMORY_MAPPED_IO:
-		if (!IS_ENABLED(DEBUG))
+		if (!verbose)
 			return 0;
 		name = "MMIO";
 		flags = IORESOURCE_MEM;
 		break;
 	case EFI_MEMORY_MAPPED_IO_PORT_SPACE:
-		if (!IS_ENABLED(DEBUG))
+		if (!verbose)
 			return 0;
 		name = "MMIOPORT";
 		flags = IORESOURCE_IO;
 		break;
 	case EFI_PAL_CODE:
-		if (!IS_ENABLED(DEBUG))
+		if (!verbose)
 			return 0;
 		name = "PAL code";
 		flags = IORESOURCE_MEM | IORESOURCE_ROM_BIOS_COPY;
@@ -116,7 +116,7 @@ static int efi_parse_mmap(struct efi_memory_desc *desc)
 			return -EINVAL;
 		}
 
-		if (!IS_ENABLED(DEBUG))
+		if (!verbose)
 			return 0;
 
 		name = "vendor reserved";
@@ -169,8 +169,8 @@ static int efi_barebox_populate_mmap(void)
 		goto out;
 	}
 
-	for (desc = mmap_buf; (u8 *)desc < &mmap_buf[mmap_size]; desc += descsz)
-		efi_parse_mmap(desc);
+	for (desc = mmap_buf; (u8 *)desc < mmap_buf + mmap_size; desc += descsz)
+		efi_parse_mmap(desc, __is_defined(DEBUG));
 
 out:
 	free(mmap_buf);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

