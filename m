Delivery-date: Mon, 14 Apr 2025 08:36:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DQm-000X31-35
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:36:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DQm-0002p5-2H
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:36:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VLYqaoZuySPuS9d/G+gCDEXK5EFNhAOKTwDeX6bTHE8=; b=0Unwo6IVGl0qqeHcv7DKYc8BFu
	bn6XCrRhzZEj6oY3RBc0VE4r+0eaiDAqUmBiCOTiG/nE00hMxUJlyeNJ/OEf52mVvozK4vFDG2/BR
	0wp8ZXpe8HhC278ZIVhZTY4FX5yn2wx/g1HzBrksRpjg/TjV4Nuzej7863GMMi4H02uw0qFsl1UpV
	YlBYasa52UC80GxMdY90OT7A7FS/hWZx76V6roXth7wMP+pFNOc/31TkL6Kbu2R+6uO+vSFC+KriC
	Juja8sXzFI7qawWvy8U7uTjlTKrT4xckJPE9OgwGigriwq88n3nr+reQ5TlZ6DUmO7AHzv07gNfYE
	ZDvxgzMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DQO-00000000own-3gIz;
	Mon, 14 Apr 2025 06:36:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DQI-00000000osk-1yB7
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:36:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DQH-0002MR-8x; Mon, 14 Apr 2025 08:36:01 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DQH-000Cmw-0G;
	Mon, 14 Apr 2025 08:36:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-00BUi8-2Q;
	Mon, 14 Apr 2025 08:31:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:31:44 +0200
Message-Id: <20250414063152.2736649-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233602_507920_A88D2BAB 
X-CRM114-Status: GOOD (  11.08  )
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
Subject: [PATCH 10/18] cdev: implement devfs_create_link in terms of devfs_create
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

devfs_create_link and devfs_create do much of the same things, so have
them share the code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 4c5445b17aaf..eb6691b5252b 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -422,15 +422,16 @@ int devfs_create(struct cdev *new)
 			new->device_node = new->dev->of_node;
 	}
 
+	if (new->link)
+		list_add_tail(&new->link_entry, &new->link->links);
+
 	return 0;
 }
 
 int devfs_create_link(struct cdev *cdev, const char *name)
 {
 	struct cdev *new;
-
-	if (cdev_by_name(name))
-		return -EEXIST;
+	int ret;
 
 	/*
 	 * Create a link to the real cdev instead of creating
@@ -441,6 +442,12 @@ int devfs_create_link(struct cdev *cdev, const char *name)
 	new = cdev_alloc(name);
 	new->link = cdev;
 
+	ret = devfs_create(new);
+	if (ret) {
+		cdev_free(new);
+		return ret;
+	}
+
 	if (cdev->partname) {
 		size_t partnameoff = 0;
 
@@ -454,11 +461,6 @@ int devfs_create_link(struct cdev *cdev, const char *name)
 		new->partname = xstrdup(name + partnameoff);
 	}
 
-	INIT_LIST_HEAD(&new->links);
-	INIT_LIST_HEAD(&new->partitions);
-	list_add_tail(&new->list, &cdev_list);
-	list_add_tail(&new->link_entry, &cdev->links);
-
 	return 0;
 }
 
-- 
2.39.5



