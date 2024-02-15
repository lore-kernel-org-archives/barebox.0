Delivery-date: Thu, 15 Feb 2024 08:48:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raWUE-007AUD-1h
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 08:48:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raWUD-0001QF-Qk
	for lore@pengutronix.de; Thu, 15 Feb 2024 08:48:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T0LxUuSVJnOrGDeU6UqotwsJG74VdeeAOLRhNsJscfM=; b=jV17YjPL33pWcdXeJeY0163EZ8
	KFEPM1f6alvgFwpgibyxhfJaOBSd+f64qO/dOVMXbWznZpOCPxWPWuS4fRu/3r0gTP+wRCt+mDWhg
	yZSLB7VZBZOaFf1b+HyWqZ8S7s00wXLRWDtXDx8egxi59GsSOK+A8yQT+J62Mp6cmC6dkRknx5sq4
	c07aqJuMpXr76uUhGhVrIwJJH3L0Et3et2DgftdMQd3VvaRPEo536jTMjpL/pyKzMOMZniF9OTb1Z
	mVYw5789KkYXRsLfmprqdYRrRbNhsNGJlrXesLWfwjvOS9K/h4q08xL8+X/whPkptDVPA3QQMCChc
	w309jKXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raWTb-0000000FGBh-2wx3;
	Thu, 15 Feb 2024 07:48:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raWTU-0000000FG8I-1StS
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 07:48:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-000175-Gr; Thu, 15 Feb 2024 08:47:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-000qC4-4M; Thu, 15 Feb 2024 08:47:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-0041pl-06;
	Thu, 15 Feb 2024 08:47:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 15 Feb 2024 08:47:51 +0100
Message-Id: <20240215074757.960200-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215074757.960200-1-s.hauer@pengutronix.de>
References: <20240215074757.960200-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_234804_487570_456782E1 
X-CRM114-Status: GOOD (  13.13  )
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
Subject: [PATCH 1/7] fs: move cdev open count to cdev_open()/cdev_close()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All code opening a cdev goes through cdev_open(), so open counting
must be done there and not in devfs_open() which itself only calls
cdev_open().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c | 13 +++++++++++--
 fs/devfs.c      |  4 ----
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index c7187e3c01..87d4591d99 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -175,8 +175,15 @@ int cdev_find_free_index(const char *basename)
 
 int cdev_open(struct cdev *cdev, unsigned long flags)
 {
-	if (cdev->ops->open)
-		return cdev->ops->open(cdev, flags);
+	int ret;
+
+	if (cdev->ops->open) {
+		ret = cdev->ops->open(cdev, flags);
+		if (ret)
+			return ret;
+	}
+
+	cdev->open++;
 
 	return 0;
 }
@@ -221,6 +228,8 @@ void cdev_close(struct cdev *cdev)
 {
 	if (cdev->ops->close)
 		cdev->ops->close(cdev);
+
+	cdev->open--;
 }
 
 ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
diff --git a/fs/devfs.c b/fs/devfs.c
index c30ae4f384..c8ddbbdab0 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -114,8 +114,6 @@ static int devfs_open(struct device *_dev, FILE *f, const char *filename)
 			return ret;
 	}
 
-	cdev->open++;
-
 	return 0;
 }
 
@@ -130,8 +128,6 @@ static int devfs_close(struct device *_dev, FILE *f)
 			return ret;
 	}
 
-	cdev->open--;
-
 	return 0;
 }
 
-- 
2.39.2



