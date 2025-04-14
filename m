Delivery-date: Mon, 14 Apr 2025 08:32:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DNC-000Wyw-3C
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:32:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DNC-0001P0-9T
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:32:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9LxGWqf6YJVjlLKsu5yrYEGopiCuBHTlIQ7vQGNtH8s=; b=CN63C0tghcjO4FBanBKqfl+Tql
	HU9LdFNX5P1FvfD4czyjTERp8K9TsOBSH195FugoGYLHDHJOMAEfvI4r6FOEMbUGIneVrWoDysAit
	qJOmHGQ7PfOCNC47H/51pzpmH+z3igrN9O1RGFXmmGyQb5bfeez8a0cQ6YGZmVDVVwz4w4j0v4Nwl
	mgMy0L9VBj05bm9ngg/GV7oIb0P9XhstpzARTXDE+mzgx0Ms5wtgsmvq0r0ZmFHYn3o+ExJmO91jy
	9uQ2fkwalrJ9DgUYlsd3tuG2AINAo2qI78KHCS2CEynim9E3yZLV2MagvgMoQWhDKlusfRfpBvLCy
	m7Qw5+Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMk-00000000nxM-09Gu;
	Mon, 14 Apr 2025 06:32:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMJ-00000000npi-012G
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:31:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-0000kz-KN; Mon, 14 Apr 2025 08:31:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-000ChT-1O;
	Mon, 14 Apr 2025 08:31:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-00BUi8-14;
	Mon, 14 Apr 2025 08:31:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:31:35 +0200
Message-Id: <20250414063152.2736649-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233155_043711_0D9D90EA 
X-CRM114-Status: GOOD (  11.26  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/18] cdev: make cdev_find_child_by_gpt_typeuuid external
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The function is already used from two places and long enough that we
probably don't want to duplicate it more than once in the final binary.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c  | 16 ++++++++++++++++
 include/driver.h | 17 ++---------------
 2 files changed, 18 insertions(+), 15 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 2617eeea0706..f67c86b2267e 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -126,6 +126,22 @@ struct cdev *cdev_by_diskuuid(const char *diskuuid)
 	return NULL;
 }
 
+struct cdev *
+cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, guid_t *typeuuid)
+{
+	struct cdev *partcdev;
+
+	if (!cdev_is_gpt_partitioned(cdev))
+		return ERR_PTR(-EINVAL);
+
+	for_each_cdev_partition(partcdev, cdev) {
+		if (guid_equal(&partcdev->typeuuid, typeuuid))
+			return partcdev;
+	}
+
+	return ERR_PTR(-ENOENT);
+}
+
 /**
  * device_find_partition - find a partition belonging to a physical device
  *
diff --git a/include/driver.h b/include/driver.h
index 094347d4577e..d01d026b687b 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -608,21 +608,8 @@ static inline bool cdev_is_gpt_partitioned(const struct cdev *master)
 	return master && (master->flags & DEVFS_IS_GPT_PARTITIONED);
 }
 
-static inline struct cdev *
-cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, guid_t *typeuuid)
-{
-	struct cdev *partcdev;
-
-	if (!cdev_is_gpt_partitioned(cdev))
-		return ERR_PTR(-EINVAL);
-
-	for_each_cdev_partition(partcdev, cdev) {
-		if (guid_equal(&partcdev->typeuuid, typeuuid))
-			return partcdev;
-	}
-
-	return ERR_PTR(-ENOENT);
-}
+struct cdev *
+cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, guid_t *typeuuid);
 
 #ifdef CONFIG_FS_AUTOMOUNT
 void cdev_create_default_automount(struct cdev *cdev);
-- 
2.39.5



