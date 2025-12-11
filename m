Delivery-date: Thu, 11 Dec 2025 21:43:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnV7-00AQT0-0Q
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:43:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnV6-0000sc-Fs
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:43:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IiwT4v4wYxxNm6zl8nn8zd45Di9gU3x0PRx5pEgY4tU=; b=Hbak/RXi1KTW7Hyi0BquGNUwgg
	urXiI9jBLvV6SmlsHIniUiC0z3c9VN3KFohK0j6UFuYVH2uwMoSWTOEIk+7Da18kIb4ifSEPXdt8q
	fZCaoIvbFtB2spCO3jj3oNRjX2eQQYa26+EEE2KWXYRtG3EH+Ny1tejjhU3Qu6roFIc6tmspNoGUi
	uxEl0G9ZXeXHvYdlcenXNeypkFCtLc6dFyKRKwW3uj9M1prAT9cvVut6KhTHEttIABKSsljcHMHZt
	azaakSCJBZ6a8g/rJXP5xAtqQy9WjVyLAmySisOkcLRkCFisHbfjZtxuX2zq+cd2KtZC5YKd8Lv12
	lg8lZcoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnUl-0000000HH66-09bW;
	Thu, 11 Dec 2025 20:42:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnUj-0000000HH5p-37Hr
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:42:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=IiwT4v4wYxxNm6zl8nn8zd45Di9gU3x0PRx5pEgY4tU=; b=K5v1ENetM4qXaTaJdHK+TXK6Fc
	PHHN7sVus3tJI3iNjYYD4XcNz9jyBYZXBY9HWByJ8AZPW9putrcBmODoENuUfd1oEqBg+yAqOAyUf
	3R5pFj5f9Neqej/KDKGrf86FyWmYpLSJATWsLbArPC2p70lsPOu0HSFKOVApOVrdMqmA//FUyHZyg
	RfipqAgCe6dE6nXEtginBvpRtuftG8iNQlHgrRlg+Lmj7fZUGRdqW4PL7HNIg5VLZ7fAbxue9jnQo
	Z5SRjWsTJxk+ZBWTzYMXEDRKFotJMzQOKhLVZb1J3sseDAR8B2hsJS8E5MDMVda/deXtadcv7Sfok
	AfGz459A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmdC-0000000Fa0b-03Ha
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:47:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnUg-0000kg-J8; Thu, 11 Dec 2025 21:42:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnUg-005BXW-1J;
	Thu, 11 Dec 2025 21:42:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnUg-0000000At5p-1Hkb;
	Thu, 11 Dec 2025 21:42:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:42:32 +0100
Message-ID: <20251211204233.2594385-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_194718_163841_3746ACAC 
X-CRM114-Status: GOOD (  12.97  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] cdev: maintain partition index in struct cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by the EFI loader, we will need to know a partition's number
within the disk, so have the devfs-core keep track of that.

If all cdevs are deleted because of reparenting, we also reset the
counting back to zero.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c  | 6 +++++-
 fs/fs.c          | 8 ++++++--
 include/driver.h | 3 +++
 3 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 67ce67851769..3c6e146d78ff 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -599,8 +599,11 @@ int devfs_remove(struct cdev *cdev)
 	list_for_each_entry_safe(c, tmp, &cdev->partitions, partition_entry)
 		cdevfs_del_partition(c);
 
-	if (cdev_is_partition(cdev))
+	if (cdev_is_partition(cdev)) {
 		list_del(&cdev->partition_entry);
+		if (list_empty(&cdev->master->partitions))
+			cdev->master->partition_table_index = 0;
+	}
 
 	return 0;
 }
@@ -736,6 +739,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 	new->size = size;
 	new->offset = cdev->offset + offset;
 	new->flags = inherited_flags;
+	new->partition_table_index = cdev->partition_table_index++;
 
 	new->dev = cdev->dev;
 	new->master = cdev;
diff --git a/fs/fs.c b/fs/fs.c
index 77f22d69ea49..55f9174f945d 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -78,8 +78,12 @@ void cdev_print(const struct cdev *cdev)
 		printf("Origin: %s", dev_name(cdev->dev) ?: "None");
 		if (cdev->master)
 			printf("\tMaster: %s", cdev->master->name);
-		if (cdev->partname)
-			printf("\tPartition: %s", cdev->partname);
+		if (cdev->partname) {
+			printf("\tPartition:");
+			if (cdev->flags & DEVFS_PARTITION_FROM_TABLE)
+				printf(" #%d", cdev->partition_table_index);
+			printf(" \"%s\"", cdev->partname);
+		}
 		printf("\n");
 	}
 	printf("Ocount: %d\tFlags: 0x%02x", cdev->open, cdev->flags);
diff --git a/include/driver.h b/include/driver.h
index de5a63c379eb..6d13042f0757 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -431,6 +431,9 @@ struct cdev {
 	loff_t size;
 	unsigned int flags;
 	u16 typeflags; /* GPT type-specific attributes */
+	s8 partition_table_index;    /* For GPT/MBR-formatted disks only: 0-based index of partition
+				      * or number of index of next free child partition otherwise
+				      */
 	int open;
 	struct mtd_info *mtd;
 	struct list_head aliases;
-- 
2.47.3



