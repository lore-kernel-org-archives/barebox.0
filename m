Delivery-date: Mon, 30 Jan 2023 19:27:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYsO-007syy-E2
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 19:27:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYsL-00029x-M5
	for lore@pengutronix.de; Mon, 30 Jan 2023 19:27:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f8t+h03+2OPY6kMTExNb2uc5yaKBYnU1Y8ycydRw7ek=; b=EMNkbLBof2VkSNTdJf/dk5cb4X
	UzL6V36/kTBFun2VscidWnW+AYHG/PKn9mhlTbDCi6DadiR5D8XH8JfFE+5ltcH4VqkYTCBUKfk7c
	xJX2PmwORqs/YfMUl4gV1rWo9eHDaM6fQW3jBabWbH8dtQL6dQvwYDsGfhDPWKmy6VvoHv9JESHAd
	2uOetS+SKxPJYuVufzhb9BDsUc88yLxlD7d+0HCRCeja2RG6tIoUm3ilqqDDU7vplkjb5BGT+hADJ
	vypUmUgcDrw4K1RGaex0c942JjeYUGK2mCTLFBFd5U6nltBSTzwezFPXQdIaehp87YeCN/lcSw4Ru
	YiIQKuqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMOZW-002Xe5-Vz; Mon, 30 Jan 2023 07:27:23 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMOZQ-002Xc0-BQ
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 07:27:17 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id B85C91C0006;
	Mon, 30 Jan 2023 07:27:12 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Jan 2023 08:27:04 +0100
Message-Id: <20230130072707.2423294-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230130072707.2423294-1-ahmad@a3f.at>
References: <20230130072707.2423294-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_232716_538786_568C3AEF 
X-CRM114-Status: GOOD (  10.46  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] fs: devfs: implement cdev_fdopen
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

As an alternative to cdev_open and using cdev_read/write, we define a
new cdev_fdopen function that returns a file descriptor. The benefit of
this is that code using it may use all the more high level helpers we
have for reading/writing file descriptors.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 fs/devfs-core.c  | 20 ++++++++++++++++++++
 include/driver.h |  1 +
 2 files changed, 21 insertions(+)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 2a259c2fe0ef..fbcf68e81597 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -177,6 +177,26 @@ int cdev_open(struct cdev *cdev, unsigned long flags)
 	return 0;
 }
 
+int cdev_fdopen(struct cdev *cdev, unsigned long flags)
+{
+	char *path;
+	int fd;
+
+	if (!cdev)
+		return -ENODEV;
+	if (IS_ERR(cdev))
+		return PTR_ERR(cdev);
+
+	path = basprintf("/dev/%s", cdev->name);
+	if (!path)
+		return -ENOMEM;
+
+	fd = open(path, flags);
+
+	free(path);
+	return fd;
+}
+
 struct cdev *cdev_open_by_name(const char *name, unsigned long flags)
 {
 	struct cdev *cdev;
diff --git a/include/driver.h b/include/driver.h
index f0a0b9d6ae8f..f53668711b81 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -535,6 +535,7 @@ struct cdev *cdev_open_by_name(const char *name, unsigned long flags);
 struct cdev *cdev_create_loop(const char *path, ulong flags, loff_t offset);
 void cdev_remove_loop(struct cdev *cdev);
 int cdev_open(struct cdev *, unsigned long flags);
+int cdev_fdopen(struct cdev *cdev, unsigned long flags);
 void cdev_close(struct cdev *cdev);
 int cdev_flush(struct cdev *cdev);
 ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
-- 
2.38.1



