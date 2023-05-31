Delivery-date: Wed, 31 May 2023 17:01:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NK7-004OAw-OO
	for lore@lore.pengutronix.de; Wed, 31 May 2023 17:01:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NK4-00011o-Hd
	for lore@pengutronix.de; Wed, 31 May 2023 17:01:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3w8n1ee3HqjWVh7z9c6d6JTqCFAW4Qe67flyF78jZpA=; b=cl0S2JA14A/zlTk4Tx+CaaYMOg
	MvHNRIj49FPF9Mn35ON4nNm112OBZMGVtnSRtNGQc2lYJXuTKDLTXvg6zf+19XMaWWZNUOD7XfWhV
	ktFsSzAzMk2wxrgQiXMbKOsg6L96Dwwbignwri3DZtzgNuFAgxNL5K+8DgL5+vx+owfkZKjUXKxII
	x8X5R9I2o9kwi3rcCxtXdXcM2kEjZNfIQmaFWYA8KcOTOXLPIRqX6tmEJyC8rWyoc1X9vyN4xI5is
	gQXzcD6GhgUM6jS2YGF5tOvxYcoxyIjrQHcaCfdFDo6KdzXdlbR0DtpP0AzFDYqsY6k5ahpg7mgfI
	S2bzTAjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIu-000C97-2u;
	Wed, 31 May 2023 15:00:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIb-000BsU-1h
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 14:59:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0008F3-Qp; Wed, 31 May 2023 16:59:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0048Hg-5t; Wed, 31 May 2023 16:59:34 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIQ-005sDC-8y; Wed, 31 May 2023 16:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 May 2023 16:59:21 +0200
Message-Id: <20230531145927.1399282-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_075941_689402_953CEE60 
X-CRM114-Status: GOOD (  14.20  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/18] common: partitions: record whether disk is GPT or MBR partitioned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently, the only way to differentiate between a GPT disk and a MBR
one is to check whether the cdev's device has a guid (=> GPT) or a
nt_signature (=> MBR) device parameter. We already have a flag parameter
though, so let's record this info there for easy retrieval.

We intentionally don't use the struct cdev::filetype member, because
we don't want to change behavior of file_detect_type().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/dos.c |  2 ++
 common/partitions/efi.c |  2 ++
 fs/fs.c                 |  4 ++++
 include/driver.h        | 20 +++++++++++++++++---
 4 files changed, 25 insertions(+), 3 deletions(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index ad60c0b27b46..7472824b00b9 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -185,6 +185,8 @@ static void dos_partition(void *buf, struct block_device *blk,
 	if (signature)
 		sprintf(blk->cdev.diskuuid, "%08x", signature);
 
+	blk->cdev.flags |= DEVFS_IS_MBR_PARTITIONED;
+
 	table = (struct partition_entry *)&buffer[446];
 
 	for (i = 0; i < 4; i++) {
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 780a8695e8a8..df63b82afe24 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -449,6 +449,8 @@ static void efi_partition(void *buf, struct block_device *blk,
 	snprintf(blk->cdev.diskuuid, sizeof(blk->cdev.diskuuid), "%pUl", &gpt->disk_guid);
 	dev_add_param_string_fixed(blk->dev, "guid", blk->cdev.diskuuid);
 
+	blk->cdev.flags |= DEVFS_IS_GPT_PARTITIONED;
+
 	nb_part = le32_to_cpu(gpt->num_partition_entries);
 
 	if (nb_part > MAX_PARTITION) {
diff --git a/fs/fs.c b/fs/fs.c
index 9d8aab268ca4..2d2d327c5fbc 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -94,6 +94,10 @@ void cdev_print(const struct cdev *cdev)
 			printf(" table-partition");
 		if (cdev->flags & DEVFS_IS_MCI_MAIN_PART_DEV)
 			printf(" mci-main-partition");
+		if (cdev->flags & DEVFS_IS_GPT_PARTITIONED)
+			printf(" gpt-partitioned");
+		if (cdev->flags & DEVFS_IS_MBR_PARTITIONED)
+			printf(" mbr-partitioned");
 		if (cdev->mtd)
 			printf(" mtd");
 		printf(" )");
diff --git a/include/driver.h b/include/driver.h
index 118d2adb6750..5f2eae65466f 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -584,9 +584,23 @@ extern struct list_head cdev_list;
 #define DEVFS_PARTITION_FIXED		(1U << 0)
 #define DEVFS_PARTITION_READONLY	(1U << 1)
 #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
-#define DEVFS_IS_MCI_MAIN_PART_DEV	(1U << 4)
-#define DEVFS_PARTITION_FROM_OF		(1U << 5)
-#define DEVFS_PARTITION_FROM_TABLE	(1U << 6)
+#define DEVFS_PARTITION_FROM_OF		(1U << 4)
+#define DEVFS_PARTITION_FROM_TABLE	(1U << 5)
+#define DEVFS_IS_GPT_PARTITIONED	(1U << 6)
+#define DEVFS_IS_MBR_PARTITIONED	(1U << 7)
+#define DEVFS_IS_MCI_MAIN_PART_DEV	(1U << 8)
+
+static inline bool cdev_is_gpt_partitioned(const struct cdev *master)
+{
+	return master && (master->flags & DEVFS_IS_GPT_PARTITIONED)
+		== DEVFS_IS_GPT_PARTITIONED;
+}
+
+static inline bool cdev_is_mbr_partitioned(const struct cdev *master)
+{
+	return master && (master->flags & DEVFS_IS_MBR_PARTITIONED)
+		== DEVFS_IS_MBR_PARTITIONED;
+}
 
 struct cdev *devfs_add_partition(const char *devname, loff_t offset,
 		loff_t size, unsigned int flags, const char *name);
-- 
2.39.2



