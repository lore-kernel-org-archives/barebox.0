Delivery-date: Wed, 03 Jan 2024 19:33:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL638-002Ndj-1w
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL631-0003r3-Mi
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XUQaMPS6MlTG967Nrl4cAdOAzMjcLEuK6/FpV/9GhiM=; b=vBeuHDP9kotNhXZmWjJhvtfqB5
	K+uhsrZ0FChc5LbEcTF9YP1QMDSNgbG9T+mz9AGl7x2geYhspd/bGhSrJNY8HLQLUaYG9rsTjJQYU
	JCfw639J8MpuBObIu9ZkkwkQrr5711RNBXiJZWyWFqHqCu4ngm0tTEuqvAhFskpqc+F+Udunx7/XR
	obY23/0odXQdH3K/mO6zeWZ3WK38byqmLwZADQQ1kQ0XvLy9DWLRBZ4Y55vY0J2RV3EI4ATYkWbq0
	HD4nEhT/NHiBg+AppOYKh7ZwJLepDMyXLrmpdvvHtOtg0vXR5QXlqCRiaCHXa46FdWKeLwYq8+vr3
	LqfD0w4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61h-00Bhol-2M;
	Wed, 03 Jan 2024 18:31:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61A-00BhDs-1Q
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=XUQaMPS6MlTG967Nrl4cAdOAzMjcLEuK6/FpV/9GhiM=; b=REqzWRIpqW+M4hgzPz7KnB0mdR
	ieDq4J+UHGmMSVmWNnZ5vMdRkA35gzWGfM30Rxd4DpE/1ZEM2sJfnER70ip9UzzxohimHEoGr7CzU
	mIHgzGEpWFpV3uSpmgVGumnNIb3fR8qLOhOyXVymxRPMZBZ2UbPQ/JoueN2ZrtPydw1Snhk24Svbl
	K819TqFJF7kU0rMU1bIXsceUSlLs+PGTvGJlPxfETxJ99FNDB3fkqeRiQMS990BYoKdoXL523ybYk
	RTUMwgnGuBL81Ok7czboi1murVxSF16if1bY9MEeyWPUQBjlq3hGbitvvrw+9iJKIOzcQeC2ZckAr
	Xqk3u2fQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL610-005eBz-2O
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-0001RM-Jo; Wed, 03 Jan 2024 19:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000AtL-73; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-2t;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:41 +0100
Message-Id: <20240103181312.409668-22-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_241006_418F9EDF 
X-CRM114-Status: GOOD (  15.54  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 021/112] partitions: have parsers record bootable bits
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox as EFI loader can use the information about which partitions are
bootable to guide its decision. Record this information.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions.c        |  4 ++--
 common/partitions/dos.c    | 10 ++++++++++
 common/partitions/efi.c    | 18 ++++++++++++++++++
 common/partitions/parser.h |  3 +++
 include/driver.h           |  5 +++++
 include/efi/partition.h    |  6 ++++--
 6 files changed, 42 insertions(+), 4 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 8a245a1eee3d..53001a64770f 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -52,8 +52,8 @@ static int register_one_partition(struct block_device *blk,
 		goto out;
 	}
 
-	cdev->flags |= DEVFS_PARTITION_FROM_TABLE;
-
+	cdev->flags |= DEVFS_PARTITION_FROM_TABLE | part->flags;
+	cdev->typeflags |= part->typeflags;
 	cdev->typeuuid = part->typeuuid;
 	strcpy(cdev->partuuid, part->partuuid);
 
diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 7472824b00b9..bf37b2852b9e 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -163,6 +163,15 @@ static void dos_extended_partition(struct block_device *blk, struct partition_de
 	return;
 }
 
+static void extract_flags(const struct partition_entry *p,
+			  struct partition *pentry)
+{
+	if (p->boot_indicator == 0x80)
+		pentry->flags |= DEVFS_PARTITION_BOOTABLE_LEGACY;
+	if (p->type == 0xef)
+		pentry->flags |= DEVFS_PARTITION_BOOTABLE_ESP;
+}
+
 /**
  * Check if a DOS like partition describes this block device
  * @param blk Block device to register to
@@ -199,6 +208,7 @@ static void dos_partition(void *buf, struct block_device *blk,
 			pd->parts[n].first_sec = pentry.first_sec;
 			pd->parts[n].size = pentry.size;
 			pd->parts[n].dos_partition_type = pentry.dos_partition_type;
+			extract_flags(&table[i], &pd->parts[n]);
 			if (signature)
 				sprintf(pd->parts[n].partuuid, "%08x-%02d",
 						signature, i + 1);
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 0add66e6e4a6..6260702577f9 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -431,6 +431,23 @@ static void part_set_efi_name(gpt_entry *pte, char *dest)
 	dest[i] = 0;
 }
 
+static void extract_flags(const gpt_entry *p, struct partition *pentry)
+{
+	static const guid_t system_guid = PARTITION_SYSTEM_GUID;
+
+	if (p->attributes.required_to_function)
+		pentry->flags |= DEVFS_PARTITION_REQUIRED;
+	if (p->attributes.no_block_io_protocol)
+		pentry->flags |= DEVFS_PARTITION_NO_EXPORT;
+	if (p->attributes.legacy_bios_bootable)
+		pentry->flags |= DEVFS_PARTITION_BOOTABLE_LEGACY;
+
+	if (guid_equal(&p->partition_type_guid, &system_guid))
+		pentry->flags |=  DEVFS_PARTITION_BOOTABLE_ESP;
+
+	pentry->typeflags = p->attributes.type_guid_specific;
+}
+
 static void efi_partition(void *buf, struct block_device *blk,
 			  struct partition_desc *pd)
 {
@@ -466,6 +483,7 @@ static void efi_partition(void *buf, struct block_device *blk,
 		}
 
 		pentry = &pd->parts[pd->used_entries];
+		extract_flags(&ptes[i], pentry);
 		pentry->first_sec = le64_to_cpu(ptes[i].starting_lba);
 		pentry->size = le64_to_cpu(ptes[i].ending_lba) - pentry->first_sec;
 		pentry->size++;
diff --git a/common/partitions/parser.h b/common/partitions/parser.h
index 9cc41a7573fe..fce368156400 100644
--- a/common/partitions/parser.h
+++ b/common/partitions/parser.h
@@ -11,6 +11,7 @@
 #include <filetype.h>
 #include <linux/uuid.h>
 #include <linux/list.h>
+#include <driver.h>
 
 #define MAX_PARTITION		128
 #define MAX_PARTITION_NAME	38
@@ -24,6 +25,8 @@ struct partition {
 		u8 dos_partition_type;
 		guid_t typeuuid;
 	};
+	unsigned int flags;
+	unsigned int typeflags;
 };
 
 struct partition_desc {
diff --git a/include/driver.h b/include/driver.h
index c6da5a3d0d54..b6fe8712837b 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -543,6 +543,7 @@ struct cdev {
 	loff_t offset;
 	loff_t size;
 	unsigned int flags;
+	u16 typeflags; /* GPT type-specific attributes */
 	int open;
 	struct mtd_info *mtd;
 	struct cdev *link;
@@ -615,6 +616,10 @@ extern struct list_head cdev_list;
 #define DEVFS_PARTITION_FROM_TABLE	(1U << 6)
 #define DEVFS_IS_MBR_PARTITIONED	(1U << 7)
 #define DEVFS_IS_GPT_PARTITIONED	(1U << 8)
+#define DEVFS_PARTITION_REQUIRED	(1U << 9)
+#define DEVFS_PARTITION_NO_EXPORT	(1U << 10)
+#define DEVFS_PARTITION_BOOTABLE_LEGACY	(1U << 11)
+#define DEVFS_PARTITION_BOOTABLE_ESP	(1U << 12)
 
 static inline bool cdev_is_mbr_partitioned(const struct cdev *master)
 {
diff --git a/include/efi/partition.h b/include/efi/partition.h
index 0ca2a72eb9b7..29175673e351 100644
--- a/include/efi/partition.h
+++ b/include/efi/partition.h
@@ -95,8 +95,10 @@ typedef struct _gpt_header {
 
 typedef struct _gpt_entry_attributes {
 	u64 required_to_function:1;
-	u64 reserved:47;
-        u64 type_guid_specific:16;
+	u64 no_block_io_protocol:1;
+	u64 legacy_bios_bootable:1;
+	u64 reserved:45;
+	u64 type_guid_specific:16;
 } __attribute__ ((packed)) gpt_entry_attributes;
 
 #define GPT_PARTNAME_MAX_SIZE	(72 / sizeof (wchar_t))
-- 
2.39.2



