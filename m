Delivery-date: Wed, 07 Jun 2023 14:09:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryJ-00EJXE-IR
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 14:09:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryG-00045P-B4
	for lore@pengutronix.de; Wed, 07 Jun 2023 14:09:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o8Y9yhOe7viLq8Y/oubjPBMfujXLEI5CTPpwt/Lq+aE=; b=2oG03ObUudB8OjLMQpSwMKTySs
	fb/H2ghvth5bEVjkqwCr0LFTlzvmWo6HHZXIXngppTSuiaL6PX9kClJXbKryrgSDOInwoEFxZhoeL
	XxwlmBX0RTHc18nYipov6/DSOlCMg3zZtDP1AGzH36yKSG9aFlUhOmvNYPwwcn97SytiZAmhW/CnM
	XW+gDcnuZRXYHrOAfBw7ciwEbrlxZzCbgoA700uN7DlMt1WnJ0M0ma3CLKEjtgNuSJJM6wvzwOC3f
	LV9jpOmhgnOGiv5K6+ZSQcengGOscmkqE3Yf1sFPIfGkugtr+zwbbf3fU8Mx+meEIKvIgdEou9r5+
	YWc3obCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rx0-005kyo-2T;
	Wed, 07 Jun 2023 12:07:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rws-005ksm-1o
	for barebox@bombadil.infradead.org;
	Wed, 07 Jun 2023 12:07:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=o8Y9yhOe7viLq8Y/oubjPBMfujXLEI5CTPpwt/Lq+aE=; b=bsO3T7EnXwO81RQ61rXcGI0jXv
	vIWNa83XoVKru+7BiIg3eHDNMLdH/eT6mmlgNthwuLnlLmpYGpSPdqDBN8458UtrOt3896cu/Xc7v
	pC9WU/tkVmps3yMLWfJysDJXPWoh8Y3XyHt8SvkmJQ3viTrE1BAp3ET5aZodgqaZyyT0xTE4ciQPK
	i1lYksUY5W8jU7yitySeuBIQ70wV9wqdoPFmygKZr1XoMtbyODAu1GQC3OZ37CuOm8ZMssKxO5gIW
	KGnAzrH4VWO2aDr0QUQkjMgMZgEK9M3MRRqQFz+xqKbnAsXUdCKijXJo7kCQhWwQl07K1o7BkOHOK
	TEvMfvOQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwn-0058p2-1S
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 12:07:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwj-00034Z-6C; Wed, 07 Jun 2023 14:07:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwi-005jkn-Ia; Wed, 07 Jun 2023 14:07:24 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwf-00CyMw-22; Wed, 07 Jun 2023 14:07:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jun 2023 14:07:05 +0200
Message-Id: <20230607120714.3083182-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
References: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_130729_623000_79A968DA 
X-CRM114-Status: GOOD (  12.47  )
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
Subject: [PATCH v2 10/19] cdev: record whether partition is parsed from OF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Later code will make it possible to define an on-disk-described partition
in the DT as well. For this reason, we can't assume
DEVFS_PARTITION_FROM_TABLE to mean !DT, so let's add a dedicated flag
for that.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix typos (Ulrich)
---
 drivers/of/partition.c | 5 +++--
 fs/fs.c                | 2 ++
 include/driver.h       | 5 +++--
 3 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 6957e10c41bf..9ace9b437d1f 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -74,6 +74,7 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	}
 
 	new->device_node = node;
+	new->flags |= DEVFS_PARTITION_FROM_OF;
 
 	if (IS_ENABLED(CONFIG_NVMEM) && of_device_is_compatible(node, "nvmem-cells")) {
 		struct nvmem_device *nvmem = nvmem_partition_register(new);
@@ -177,7 +178,7 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
 		return 0;
 
 	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
-		if (partcdev->flags & DEVFS_PARTITION_FROM_TABLE)
+		if (!(partcdev->flags & DEVFS_PARTITION_FROM_OF))
 			continue;
 		n_parts++;
 	}
@@ -228,7 +229,7 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
 		u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
 		loff_t partoffset;
 
-		if (partcdev->flags & DEVFS_PARTITION_FROM_TABLE)
+		if (!(partcdev->flags & DEVFS_PARTITION_FROM_OF))
 			continue;
 
 		if (partcdev->mtd)
diff --git a/fs/fs.c b/fs/fs.c
index dda6e3f1d6e7..952ed73dbca5 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -88,6 +88,8 @@ void cdev_print(const struct cdev *cdev)
 			printf(" fixed-partition");
 		if (cdev->flags & DEVFS_PARTITION_READONLY)
 			printf(" readonly-partition");
+		if (cdev->flags & DEVFS_PARTITION_FROM_OF)
+			printf(" of-partition");
 		if (cdev->flags & DEVFS_PARTITION_FROM_TABLE)
 			printf(" table-partition");
 		if (cdev->flags & DEVFS_IS_MCI_MAIN_PART_DEV)
diff --git a/include/driver.h b/include/driver.h
index 5bdce8e8afb2..2cd8a6489ee6 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -584,8 +584,9 @@ extern struct list_head cdev_list;
 #define DEVFS_PARTITION_FIXED		(1U << 0)
 #define DEVFS_PARTITION_READONLY	(1U << 1)
 #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
-#define DEVFS_PARTITION_FROM_TABLE	(1U << 4)
-#define DEVFS_IS_MCI_MAIN_PART_DEV	(1U << 5)
+#define DEVFS_IS_MCI_MAIN_PART_DEV	(1U << 4)
+#define DEVFS_PARTITION_FROM_OF		(1U << 5)
+#define DEVFS_PARTITION_FROM_TABLE	(1U << 6)
 
 struct cdev *devfs_add_partition(const char *devname, loff_t offset,
 		loff_t size, unsigned int flags, const char *name);
-- 
2.39.2



