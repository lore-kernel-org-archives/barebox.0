Delivery-date: Mon, 14 Apr 2025 08:32:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DND-000WzS-2c
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:32:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DND-0001QA-4J
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:32:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ki+/X0TtTbTLhYyHUx+6f1wEpG6un9pc4Vo36ZCVpjs=; b=hhB8++BuqAJS6foG4/FcQOlNFw
	tcLBeP08TlRXmA2W2FUvq83z+KEgmrWrA9T1TKwOpthLpUTPDavwbncl5BLyOO9/3k7DIM75JH7zP
	Ha3lfVazzG9dV0qXUla9Cws9bsGXnB41JXVv6JLlVfDUN4xwlDOFKi8UsC4AJq9GprHdlEDAwPi9O
	xLMa+t+2BlfSkPG8R9KSU+MLDanguVs+tLKi8FCtZcLlaMVO48jXlpkEYEHqarPWd59Dzs7d2TNm4
	fjz7DOdm0wJ8V8oAqSasZ+E9YmO3GDRVIRrs6f6aBZAHL6ycQbpI9mkL3wJ9QwAAXiEceI1SlKLrW
	pCW0p9qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMk-00000000nyN-2SjN;
	Mon, 14 Apr 2025 06:32:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMJ-00000000npn-0srE
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:31:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMI-0000lg-0g; Mon, 14 Apr 2025 08:31:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-000Chv-2a;
	Mon, 14 Apr 2025 08:31:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-00BUi8-2G;
	Mon, 14 Apr 2025 08:31:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:31:43 +0200
Message-Id: <20250414063152.2736649-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233155_254172_206137BC 
X-CRM114-Status: GOOD (  10.26  )
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
X-Spam-Status: No, score=-1.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/18] cdev: use common cdev_free helper internally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We duplicate the same three lines at three places and a fourth is
incoming, so create a helper function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 04bf866a67e0..4c5445b17aaf 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -397,6 +397,13 @@ static struct cdev *cdev_alloc(const char *name)
 	return new;
 }
 
+static void cdev_free(struct cdev *cdev)
+{
+	free(cdev->name);
+	free(cdev->partname);
+	free(cdev);
+}
+
 int devfs_create(struct cdev *new)
 {
 	struct cdev *cdev;
@@ -476,11 +483,8 @@ int devfs_remove(struct cdev *cdev)
 	if (cdev_is_partition(cdev))
 		list_del(&cdev->partition_entry);
 
-	if (cdev->link) {
-		free(cdev->name);
-		free(cdev->partname);
-		free(cdev);
-	}
+	if (cdev->link)
+		cdev_free(cdev);
 
 	return 0;
 }
@@ -669,9 +673,7 @@ int cdevfs_del_partition(struct cdev *cdev)
 	if (ret)
 		return ret;
 
-	free(cdev->name);
-	free(cdev->partname);
-	free(cdev);
+	cdev_free(cdev);
 
 	return 0;
 }
@@ -797,8 +799,7 @@ void cdev_remove_loop(struct cdev *cdev)
 	devfs_remove(cdev);
 	close(priv->fd);
 	free(priv);
-	free(cdev->name);
-	free(cdev);
+	cdev_free(cdev);
 }
 
 ssize_t mem_copy(struct device *dev, void *dst, const void *src,
-- 
2.39.5



