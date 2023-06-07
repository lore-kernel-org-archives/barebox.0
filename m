Delivery-date: Wed, 07 Jun 2023 14:08:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryB-00EJTj-I8
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 14:08:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ry9-0003yp-1N
	for lore@pengutronix.de; Wed, 07 Jun 2023 14:08:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PNc4VaYybtx1mCdfuQuwLGlf38YXF8gkCBz+EZcFdcc=; b=1oNGGkPo4dHG2ULx/s3ynKE0Vg
	HljfrGb28+XOVbGzQ9ybax62XylqO1Bggog5KKY/cdiDkJfVkzpD0pOJrxTdVGlhyb4vJz65Ssd7P
	lmUBaFGOH3ikbzSUBS+0SI6BV6+lVzt1jlEdYg0XB+tKGMehcV33CqxA3RN6ETP56SN7MXtW2oJSl
	uvvwugEg0ZpPDUD/60ooIGhMVXU/1N87k2mZdv712Fjj8l8L8w+6hsp8jiit3VLs/4/cYdF0g1YuJ
	DLSaY4IwsoX2WyMba465VKOVnICHBayiqL7Sl3Egm80anA2loInnTc9/LOp8XFycD7DaCd+G7e/UR
	FRy9c6Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwp-005krT-0c;
	Wed, 07 Jun 2023 12:07:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwk-005knR-29
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 12:07:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwh-00031P-Qo; Wed, 07 Jun 2023 14:07:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwh-005jk0-2S; Wed, 07 Jun 2023 14:07:23 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwe-00CyMJ-Tx; Wed, 07 Jun 2023 14:07:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jun 2023 14:06:56 +0200
Message-Id: <20230607120714.3083182-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
References: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_050726_704656_D3FDC7EC 
X-CRM114-Status: GOOD (  18.20  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/19] common: partitions: decouple from EFI GUID definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have three UUID/GUID definitions in barebox:

 - efi_guid_t: for EFI GUIDs
 - uuid_t:     for RFC 4122/DCE 1.1 (Variant 1) UUIDs
 - guid_t:     Apparently UUIDs stored in little-endian

In preparation for switching efi_guid_t to be a special case of guid_t
like in Linux, let's replace non-EFI uses of efi_guid_t with guid_t.

This allows us to drop the efi.h header outside of EFI code.
This also involves two replacements of efi_char16_t with wchar_t.
This is ok, as we always build with -fshort-wchar.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 common/partitions/efi.c    |  4 ++--
 common/partitions/parser.h |  1 +
 include/efi/partition.h    | 27 ++++++++++++++-------------
 lib/Makefile               |  1 +
 lib/uuid.c                 | 15 +++++++++++++++
 5 files changed, 33 insertions(+), 15 deletions(-)
 create mode 100644 lib/uuid.c

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 0411a8b2480a..60c981666fc8 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -232,7 +232,7 @@ static int is_gpt_valid(struct block_device *blk, u64 lba,
 static inline int
 is_pte_valid(const gpt_entry *pte, const u64 lastlba)
 {
-	if ((!efi_guidcmp(pte->partition_type_guid, EFI_NULL_GUID)) ||
+	if (guid_is_null(&pte->partition_type_guid) ||
 	    le64_to_cpu(pte->starting_lba) > lastlba	 ||
 	    le64_to_cpu(pte->ending_lba)   > lastlba)
 		return 0;
@@ -287,7 +287,7 @@ compare_gpts(struct device *dev, gpt_header *pgpt, gpt_header *agpt,
 		       (unsigned long long)le64_to_cpu(agpt->last_usable_lba));
 		error_found++;
 	}
-	if (efi_guidcmp(pgpt->disk_guid, agpt->disk_guid)) {
+	if (!guid_equal(&pgpt->disk_guid, &agpt->disk_guid)) {
 		dev_warn(dev, "GPT:disk_guids don't match.\n");
 		error_found++;
 	}
diff --git a/common/partitions/parser.h b/common/partitions/parser.h
index d67f8e1d6a09..f2f692f7903b 100644
--- a/common/partitions/parser.h
+++ b/common/partitions/parser.h
@@ -9,6 +9,7 @@
 
 #include <block.h>
 #include <filetype.h>
+#include <linux/uuid.h>
 #include <linux/list.h>
 
 #define MAX_PARTITION		128
diff --git a/include/efi/partition.h b/include/efi/partition.h
index a9b10c126654..0ca2a72eb9b7 100644
--- a/include/efi/partition.h
+++ b/include/efi/partition.h
@@ -21,7 +21,8 @@
 #ifndef FS_PART_EFI_H_INCLUDED
 #define FS_PART_EFI_H_INCLUDED
 
-#include <efi.h>
+#include <linux/types.h>
+#include <linux/uuid.h>
 
 #define MSDOS_MBR_SIGNATURE 0xaa55
 #define EFI_PMBR_OSTYPE_EFI 0xEF
@@ -33,25 +34,25 @@
 #define GPT_PRIMARY_PARTITION_TABLE_LBA 1
 
 #define PARTITION_SYSTEM_GUID \
-	EFI_GUID( 0xC12A7328, 0xF81F, 0x11d2, \
+	GUID_INIT( 0xC12A7328, 0xF81F, 0x11d2, \
 		0xBA, 0x4B, 0x00, 0xA0, 0xC9, 0x3E, 0xC9, 0x3B)
 #define LEGACY_MBR_PARTITION_GUID \
-	EFI_GUID( 0x024DEE41, 0x33E7, 0x11d3, \
+	GUID_INIT( 0x024DEE41, 0x33E7, 0x11d3, \
 		0x9D, 0x69, 0x00, 0x08, 0xC7, 0x81, 0xF3, 0x9F)
 #define PARTITION_MSFT_RESERVED_GUID \
-	EFI_GUID( 0xE3C9E316, 0x0B5C, 0x4DB8, \
+	GUID_INIT( 0xE3C9E316, 0x0B5C, 0x4DB8, \
 		0x81, 0x7D, 0xF9, 0x2D, 0xF0, 0x02, 0x15, 0xAE)
 #define PARTITION_BASIC_DATA_GUID \
-	EFI_GUID( 0xEBD0A0A2, 0xB9E5, 0x4433, \
+	GUID_INIT( 0xEBD0A0A2, 0xB9E5, 0x4433, \
 		0x87, 0xC0, 0x68, 0xB6, 0xB7, 0x26, 0x99, 0xC7)
 #define PARTITION_LINUX_RAID_GUID \
-	EFI_GUID( 0xa19d880f, 0x05fc, 0x4d3b, \
+	GUID_INIT( 0xa19d880f, 0x05fc, 0x4d3b, \
 		0xa0, 0x06, 0x74, 0x3f, 0x0f, 0x84, 0x91, 0x1e)
 #define PARTITION_LINUX_SWAP_GUID \
-	EFI_GUID( 0x0657fd6d, 0xa4ab, 0x43c4, \
+	GUID_INIT( 0x0657fd6d, 0xa4ab, 0x43c4, \
 		0x84, 0xe5, 0x09, 0x33, 0xc8, 0x4b, 0x4f, 0x4f)
 #define PARTITION_LINUX_LVM_GUID \
-	EFI_GUID( 0xe6d6d379, 0xf507, 0x44c2, \
+	GUID_INIT( 0xe6d6d379, 0xf507, 0x44c2, \
 		0xa2, 0x3c, 0x23, 0x8f, 0x2a, 0x3d, 0xf9, 0x28)
 
 /* based on linux/include/genhd.h */
@@ -79,7 +80,7 @@ typedef struct _gpt_header {
 	__le64 alternate_lba;
 	__le64 first_usable_lba;
 	__le64 last_usable_lba;
-	efi_guid_t disk_guid;
+	guid_t disk_guid;
 	__le64 partition_entry_lba;
 	__le32 num_partition_entries;
 	__le32 sizeof_partition_entry;
@@ -98,14 +99,14 @@ typedef struct _gpt_entry_attributes {
         u64 type_guid_specific:16;
 } __attribute__ ((packed)) gpt_entry_attributes;
 
-#define GPT_PARTNAME_MAX_SIZE	(72 / sizeof (efi_char16_t))
+#define GPT_PARTNAME_MAX_SIZE	(72 / sizeof (wchar_t))
 typedef struct _gpt_entry {
-	efi_guid_t partition_type_guid;
-	efi_guid_t unique_partition_guid;
+	guid_t partition_type_guid;
+	guid_t unique_partition_guid;
 	__le64 starting_lba;
 	__le64 ending_lba;
 	gpt_entry_attributes attributes;
-	efi_char16_t partition_name[GPT_PARTNAME_MAX_SIZE];
+	wchar_t partition_name[GPT_PARTNAME_MAX_SIZE];
 } __attribute__ ((packed)) gpt_entry;
 
 typedef struct _legacy_mbr {
diff --git a/lib/Makefile b/lib/Makefile
index 185e6221fdd2..921e5eedf46e 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -28,6 +28,7 @@ obj-y			+= recursive_action.o
 obj-y			+= make_directory.o
 obj-y			+= math.o
 obj-y			+= math/
+obj-y			+= uuid.o
 obj-$(CONFIG_XXHASH)	+= xxhash.o
 obj-$(CONFIG_BZLIB)	+= decompress_bunzip2.o
 obj-$(CONFIG_ZLIB)	+= decompress_inflate.o zlib_inflate/
diff --git a/lib/uuid.c b/lib/uuid.c
new file mode 100644
index 000000000000..db6464e354b1
--- /dev/null
+++ b/lib/uuid.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Unified UUID/GUID definition
+ *
+ * Copyright (C) 2009, 2016 Intel Corp.
+ *	Huang Ying <ying.huang@intel.com>
+ */
+
+#include <linux/uuid.h>
+#include <linux/export.h>
+
+const guid_t guid_null;
+EXPORT_SYMBOL(guid_null);
+const uuid_t uuid_null;
+EXPORT_SYMBOL(uuid_null);
-- 
2.39.2



