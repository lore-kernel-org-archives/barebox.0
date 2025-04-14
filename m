Delivery-date: Mon, 14 Apr 2025 08:36:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DQl-000X2e-0t
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:36:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DQk-0002no-KN
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:36:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/ufNMFeTbn+Sgf0y+DYHDtZZr4+bdFJO9ptf2IvU7ik=; b=y0wuCJyDLg/QWEantZXtR+94QM
	SnuGc7m9GF+jLLirEU17My921xfvAJorL2nIwXMMn6W/ufFUaVtgDcrm/BDwNTI3gJE+YMA0m/RhI
	cWN+HuIDQPzFF800WAOkpFtKUHmugpD7J9ioJ0Z5wkABBiUHIEKhJB90FZsETtDLmE982N7221K8a
	YYKoTGv9UmC2MQeRLAY8wzNUhz+ax5ZgTuQBYcS56pi7ovFYE1sGpftxfTyvJwWUlXQK+o/ox4zH/
	D+2QQocmo7OsNyUYiGqR8wSlGdkOQjqDoZIDn43Eh65iyWkY7P7EZ2d8jgf8vPWEWRADZ6nrJ6CSX
	hBUKgb4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DQM-00000000ovc-1Sao;
	Mon, 14 Apr 2025 06:36:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DQI-00000000osj-1bku
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:36:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DQH-0002MG-69; Mon, 14 Apr 2025 08:36:01 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DQG-000Cmt-3D;
	Mon, 14 Apr 2025 08:36:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMI-00BUi8-0F;
	Mon, 14 Apr 2025 08:31:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:31:51 +0200
Message-Id: <20250414063152.2736649-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233602_418201_AD06959A 
X-CRM114-Status: GOOD (  10.34  )
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
Subject: [PATCH 17/18] cdev: constify cdev_readlink argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use in functions that accept a const cdev, have cdev_readlink take a
const cdev as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c  | 4 ++--
 include/driver.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index eb6691b5252b..d1e4e1f0f6b5 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -50,7 +50,7 @@ int devfs_partition_complete(struct string_list *sl, char *instr)
 }
 #endif
 
-struct cdev *cdev_readlink(struct cdev *cdev)
+struct cdev *cdev_readlink(const struct cdev *cdev)
 {
 	if (!cdev)
 		return NULL;
@@ -61,7 +61,7 @@ struct cdev *cdev_readlink(struct cdev *cdev)
 	/* links to links are not allowed */
 	BUG_ON(cdev->link);
 
-	return cdev;
+	return (void *)cdev;
 }
 
 struct cdev *lcdev_by_name(const char *filename)
diff --git a/include/driver.h b/include/driver.h
index ca002c5164c2..d73c33a42a81 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -506,7 +506,7 @@ int cdev_find_free_index(const char *);
 struct cdev *cdev_find_partition(struct cdev *cdevm, const char *name);
 struct cdev *device_find_partition(struct device *dev, const char *name);
 struct cdev *lcdev_by_name(const char *filename);
-struct cdev *cdev_readlink(struct cdev *cdev);
+struct cdev *cdev_readlink(const struct cdev *cdev);
 struct cdev *cdev_by_device_node(struct device_node *node);
 struct cdev *cdev_by_partuuid(const char *partuuid);
 struct cdev *cdev_by_diskuuid(const char *partuuid);
-- 
2.39.5



