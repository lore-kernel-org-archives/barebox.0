Delivery-date: Mon, 04 Mar 2024 21:20:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEnw-008inO-1B
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 21:20:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEnv-0003pV-HR
	for lore@pengutronix.de; Mon, 04 Mar 2024 21:20:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3/LBzxdBPvRalHfvXXll+lrQ3iRtxfdsS6/wPLLjvlk=; b=KhgfgnuJwDWlz46iCnaDX7scj+
	dKvbsuCfHwSd9K82w/3+pG2Q80gtktsfJxJhT5y+fApAExA1D5HSZHrlDFNp9Q32gVKeI3RsxuXKY
	Aadyv5F28GOXdwDAo0pqcieBLe285m1A64Ip8k/7P1FUPiOLRWQSRjE3o85OxWR1wgyKZYgtvpEiM
	SBVgG6dzCFghqOAdunpRJGOekSjUYyNNwwBAQBgfre9HleBKirmS8AMjJLZWKo8eYJziDV+hHHtgh
	kCVMZaeW0OUYXEPtLb4vYfrDxorzLha1/uhijAv2tI7sjawJOJUM5PTgJ+5lWXIaxF6mAnqjVNniN
	jRwxLf0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhEnR-0000000AZRc-2BQn;
	Mon, 04 Mar 2024 20:20:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaU-0000000AIVc-3k7K
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3/LBzxdBPvRalHfvXXll+lrQ3iRtxfdsS6/wPLLjvlk=; b=V0NKBxVGUqVb6HNxnkXvEUceSL
	y2CwUhqTQARhVsaAhS06rvN9IhAuVowhbFf1RLG8rUm4Yx0daKcA8pVbl/Fk61wQw7fI2lES6LLre
	eGQUvWOeWDmYwpkZIC9FYfUVCSHgXS+f7NeFqNpCJQvkP0Oi3WdnnnkPz489pZU8G7rUszR3vBbt0
	FCXLaAy7Arm+y8XlNkXgrCjwpYUB+wCr5z6bb2L7BtAPVBYNJEnmzXy/UTlgtSY2DPFuXavPrPJkr
	D0mNHQ+LDgZ8cF8sxVEHPWjajjAOarEwGHUVbRblbS0sBoEIWdQZluo8qvwzEZm+MBVqcqyM3B6J9
	iX9aoaiA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaN-000000051w4-2jQW
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-0006Ev-A8; Mon, 04 Mar 2024 20:02:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-004PLY-Pr; Mon, 04 Mar 2024 20:02:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-00Ed9V-02;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:06 +0100
Message-Id: <20240304190038.3486881-22-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190251_803840_8CAA096F 
X-CRM114-Status: GOOD (  15.45  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 021/113] partitions: have parsers record bootable bits
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox as EFI loader can use the information about which partitions are
bootable to guide its decision. Record this information.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions.c     |  4 ++--
 common/partitions/dos.c | 10 ++++++++++
 common/partitions/efi.c | 18 ++++++++++++++++++
 include/driver.h        |  5 +++++
 include/efi/partition.h |  6 ++++--
 include/partitions.h    |  2 ++
 6 files changed, 41 insertions(+), 4 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 7bcd0973b8ff..5b861c40fca3 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -50,8 +50,8 @@ static int register_one_partition(struct block_device *blk, struct partition *pa
 		goto out;
 	}
 
-	cdev->flags |= DEVFS_PARTITION_FROM_TABLE;
-
+	cdev->flags |= DEVFS_PARTITION_FROM_TABLE | part->flags;
+	cdev->typeflags |= part->typeflags;
 	cdev->typeuuid = part->typeuuid;
 	strcpy(cdev->partuuid, part->partuuid);
 
diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 1b0051f9784f..8e4edd885bfa 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -189,6 +189,15 @@ static void dos_extended_partition(struct block_device *blk, struct dos_partitio
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
@@ -237,6 +246,7 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 		pentry->first_sec = first_sec;
 		pentry->size = get_unaligned_le32(&table[i].partition_size);
 		pentry->dos_partition_type = table[i].type;
+		extract_flags(&table[i], pentry);
 		pentry->num = i;
 
 		sprintf(pentry->partuuid, "%08x-%02d", signature, i + 1);
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 703d23c71524..9df40e3c15f3 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -444,6 +444,23 @@ static void part_set_efi_name(gpt_entry *pte, char *dest)
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
 static void part_get_efi_name(gpt_entry *pte, const char *src)
 {
 	int i;
@@ -498,6 +515,7 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 		epart = xzalloc(sizeof(*epart));
 		epart->pte = &ptes[i];
 		pentry = &epart->part;
+		extract_flags(&ptes[i], pentry);
 		pentry->first_sec = le64_to_cpu(ptes[i].starting_lba);
 		pentry->size = le64_to_cpu(ptes[i].ending_lba) - pentry->first_sec;
 		pentry->size++;
diff --git a/include/driver.h b/include/driver.h
index cda1dfac9dac..54b30d9921e0 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -565,6 +565,7 @@ struct cdev {
 	loff_t offset;
 	loff_t size;
 	unsigned int flags;
+	u16 typeflags; /* GPT type-specific attributes */
 	int open;
 	struct mtd_info *mtd;
 	struct cdev *link;
@@ -637,6 +638,10 @@ extern struct list_head cdev_list;
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
index 184b4fd961dd..8ce62c859b12 100644
--- a/include/efi/partition.h
+++ b/include/efi/partition.h
@@ -101,8 +101,10 @@ typedef struct _gpt_header {
 
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
diff --git a/include/partitions.h b/include/partitions.h
index b5379db92a03..785fb77ab167 100644
--- a/include/partitions.h
+++ b/include/partitions.h
@@ -26,6 +26,8 @@ struct partition {
 	};
 	struct list_head list;
 	int num;
+	unsigned int flags;
+	unsigned int typeflags;
 };
 
 struct partition_parser;
-- 
2.39.2



