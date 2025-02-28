Delivery-date: Fri, 28 Feb 2025 09:02:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnvKd-007yWG-2y
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 09:02:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnvKc-00006R-Ng
	for lore@pengutronix.de; Fri, 28 Feb 2025 09:02:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w00yyP1g+NnmPTgr0fEl/wknCgEvjXTcynCkGxHm++I=; b=KoaWbIAXYoyhfM
	LBTlg4hZOSBlOFoqq4NS2va6t4UQy+gpZ6qd95afNcifMjgtR6PmWxTZkPD/Ha65QjxBQz4KUotZx
	DaPwLvHbeykmOvdKCqw5wambYC6Npx9mrq8fy5eyTEScDEuX/u54N1C32GnR4x2Qb3ydZYvJOF/uH
	JG2Qc5ncLGhzCs8rynNlrfeJSuqzGo7/GDqDXJ9oSmH2/VWkAGhHeFWaEJXJb2876H6boLRDjohet
	epTXvoDhBbvtbTxV4jrYRnkMbFLW3KoPphdpTRRaJs4SnH2tufLtV6oPbSjwTpEwLi2ws2gNjUNnS
	Y7Tsmy/jDIQDb+mLTkdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnvK7-0000000A53l-1RWY;
	Fri, 28 Feb 2025 08:02:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnvK5-0000000A53M-0Hek
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 08:02:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnvK3-0008SF-MM; Fri, 28 Feb 2025 09:02:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnvK3-003G2c-1C;
	Fri, 28 Feb 2025 09:02:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnvK3-005XGM-0p;
	Fri, 28 Feb 2025 09:02:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 28 Feb 2025 09:02:14 +0100
Message-Id: <20250228080214.1319495-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_000217_101866_F1CFCAD2 
X-CRM114-Status: GOOD (  13.59  )
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
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] barebox-environment: Use default mount path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When using a file inside a partition for the barebox environment we
mount the partition to a non standard path ("/boot") which can cause
problems with autmounting. Mount the partition to the standard location
and create a symlink from /boot to the mounted path.

Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/barebox.c | 25 ++++++++++++++++++-------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index e6bcff7116..e52cdcf52a 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -35,7 +35,9 @@ static char *environment_probe_2node_binding(struct device *dev)
 {
 	const char *filepath;
 	char *devpath = NULL;
+	const char *path = NULL;
 	int ret;
+	struct cdev *cdev;
 
 	ret = of_find_path(dev->of_node, "device-path", &devpath,
 			   OF_FIND_PATH_FLAGS_BB);
@@ -55,22 +57,31 @@ static char *environment_probe_2node_binding(struct device *dev)
 		goto out;
 	}
 
-	/* Get device env is on and mount it */
-	mkdir(ENV_MNT_DIR, 0777);
-	ret = mount(devpath, "fat", ENV_MNT_DIR, NULL);
-	if (ret) {
-		dev_err(dev, "Failed to load environment: mount %s failed (%d)\n",
-			devpath, ret);
+	cdev = cdev_by_name(kbasename(devpath));
+	if (!cdev) {
+		dev_err(dev, "Cannot find device for %s\n", devpath);
+		ret = -ENOENT;
 		goto out;
 	}
 
+	path = cdev_mount_default(cdev, NULL);
+	if (IS_ERR(path)) {
+		dev_err(dev, "Cannot mount %s\n", devpath);
+		ret = PTR_ERR(path);
+		goto out;
+	}
+
+	symlink(path, ENV_MNT_DIR);
+
 	/* Set env to be in a file on the now mounted device */
 	dev_dbg(dev, "Loading default env from %s on device %s\n",
 		filepath, devpath);
 
+	ret = 0;
+
 out:
 	free(devpath);
-	return ret ? ERR_PTR(ret) : basprintf("%s/%s", ENV_MNT_DIR, filepath);
+	return ret ? ERR_PTR(ret) : basprintf("%s/%s", path, filepath);
 }
 
 static int environment_probe(struct device *dev)
-- 
2.39.5



