Delivery-date: Tue, 12 Mar 2024 11:10:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjz5C-002U7u-0p
	for lore@lore.pengutronix.de;
	Tue, 12 Mar 2024 11:10:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjz5B-0006Gq-JV
	for lore@pengutronix.de; Tue, 12 Mar 2024 11:10:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NxX3fpiTPXa8l8KCoQAD88js1SDw47mFFmKvigGqt2I=; b=3yKolSRsq6TF2BP0ebtBcnU0Sy
	FLSTcYb/9HFlXmoM55X+kjUOLE6cvhJKpOTz+X0z2HqH2n4FZNVK2TOjIT5sim4RuKKbam0j+EB+w
	fWBMGyQS4k9kjocn3F808WNPBOy7gLUzY/tohPKqwQXFndAFS8ln8lfneJiqDaLNPP+9euIZek8VN
	CZll9cliRERpeHCTAOReS9OUagY6aaQCceA0q/mTXPQEFCvJ+o2k30aJy8hSi0LYpGqHkl5JR0oP1
	BPCuQbAJrOzaVFdXP7MMh2y/vnte1kppsdyXqaw5e72bvf50/Iuva0kyVVXNh03Se9hYy51UopQST
	hsk3VL2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjz4a-00000005HKz-2UEn;
	Tue, 12 Mar 2024 10:09:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjz4X-00000005HKA-3nEv
	for barebox@lists.infradead.org;
	Tue, 12 Mar 2024 10:09:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rjz4U-0005kk-MQ; Tue, 12 Mar 2024 11:09:22 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rjz4U-005tYs-9z; Tue, 12 Mar 2024 11:09:22 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rjz4U-004ga0-0k;
	Tue, 12 Mar 2024 11:09:22 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 12 Mar 2024 11:09:08 +0100
Message-ID: <20240312100918.604105-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_030925_967163_79B51F46 
X-CRM114-Status: GOOD (  14.59  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of: partition: Also add partitions created by addpart to the boot dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A partition added interactively using addpart was added in
of_partition_fixup() before commit aec676b568 ("cdev: record whether
partition is parsed from OF").

Restore that behaviour. To do that a new flag DEVFS_PARTITION_FOR_FIXUP
is created that behaves very similar what DEVFS_PARTITION_FROM_OF did
before. The only difference is that addpart makes use of it (and that
stat uses a different string to describe it).

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/of/partition.c | 6 +++---
 fs/fs.c                | 2 ++
 include/driver.h       | 5 +++--
 lib/cmdlinepart.c      | 2 +-
 4 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 7c9f443ee7..abfa99820d 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -74,7 +74,7 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	}
 
 	new->device_node = node;
-	new->flags |= DEVFS_PARTITION_FROM_OF;
+	new->flags |= DEVFS_PARTITION_FROM_OF | DEVFS_PARTITION_FOR_FIXUP;
 
 	if (IS_ENABLED(CONFIG_NVMEM) && of_device_is_compatible(node, "nvmem-cells")) {
 		struct nvmem_device *nvmem = nvmem_partition_register(new);
@@ -178,7 +178,7 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
 		return 0;
 
 	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
-		if (!(partcdev->flags & DEVFS_PARTITION_FROM_OF))
+		if (!(partcdev->flags & DEVFS_PARTITION_FOR_FIXUP))
 			continue;
 		n_parts++;
 	}
@@ -229,7 +229,7 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
 		u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
 		loff_t partoffset;
 
-		if (!(partcdev->flags & DEVFS_PARTITION_FROM_OF))
+		if (!(partcdev->flags & DEVFS_PARTITION_FOR_FIXUP))
 			continue;
 
 		if (partcdev->mtd)
diff --git a/fs/fs.c b/fs/fs.c
index 68e7873e9c..9812549b9b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -92,6 +92,8 @@ void cdev_print(const struct cdev *cdev)
 			printf(" of-partition");
 		if (cdev->flags & DEVFS_PARTITION_FROM_TABLE)
 			printf(" table-partition");
+		if (cdev->flags & DEVFS_PARTITION_FOR_FIXUP)
+			printf(" fixup");
 		if (cdev->flags & DEVFS_IS_MCI_MAIN_PART_DEV)
 			printf(" mci-main-partition");
 		if (cdev->flags & DEVFS_IS_MBR_PARTITIONED)
diff --git a/include/driver.h b/include/driver.h
index b7c950620b..48b18a0ae6 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -624,8 +624,9 @@ extern struct list_head cdev_list;
 #define DEVFS_IS_MCI_MAIN_PART_DEV	(1U << 4)
 #define DEVFS_PARTITION_FROM_OF		(1U << 5)
 #define DEVFS_PARTITION_FROM_TABLE	(1U << 6)
-#define DEVFS_IS_MBR_PARTITIONED	(1U << 7)
-#define DEVFS_IS_GPT_PARTITIONED	(1U << 8)
+#define DEVFS_PARTITION_FOR_FIXUP	(1U << 7)
+#define DEVFS_IS_MBR_PARTITIONED	(1U << 8)
+#define DEVFS_IS_GPT_PARTITIONED	(1U << 9)
 
 static inline bool cdev_is_mbr_partitioned(const struct cdev *master)
 {
diff --git a/lib/cmdlinepart.c b/lib/cmdlinepart.c
index 5e95760bae..f1bfda641c 100644
--- a/lib/cmdlinepart.c
+++ b/lib/cmdlinepart.c
@@ -29,7 +29,7 @@ int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
 	loff_t size;
 	char *end;
 	char buf[PATH_MAX] = {};
-	unsigned long flags = 0;
+	unsigned long flags = DEVFS_PARTITION_FOR_FIXUP;
 	struct cdev *cdev;
 
 	memset(buf, 0, PATH_MAX);
-- 
2.39.2



