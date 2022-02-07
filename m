Delivery-date: Mon, 07 Feb 2022 10:51:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH0gc-0088rV-H9
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 10:51:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH0ga-0003UV-TA
	for lore@pengutronix.de; Mon, 07 Feb 2022 10:51:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3SgzvH+yIbmA2DTdY6oFn0emXvw6NjX5odBHj5Izu4=; b=QisAwHCrq3sXcf
	nOPXxsr8+sKw1RuHEVTUnAAK/lq5AppRMURlixFonwQlLGdHop+zbdqueevlw+XjDPAegk1mQdWJ1
	fsbIMjmAUnyIA3gPMJhfAOHUUHAvdbyFdMEGuJthmCaEcsFOlDEzQzJeIybqxoYwMZkkPLM/ypOmt
	Scg6XECnT32iK2tMbojNtD2I3n8aTJF6gX85agJa18B/mk2GiSYRbxzHrVMBqfLvQLvFGTu2KqDV4
	UqHtLKVglOYTlKkwc21/c/0PT8BOUdhAtFPYllHQWEsfXCUBwkH9lccdcC2Np4zv7ueVnie3kC6DK
	ZzvSkNucloDWfcrfL+3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH0fC-009ds0-Ni; Mon, 07 Feb 2022 09:50:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH0eo-009dkf-Lu
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 09:50:04 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nH0en-0002te-BH; Mon, 07 Feb 2022 10:50:01 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nH0em-0040Ly-Lk; Mon, 07 Feb 2022 10:50:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Feb 2022 10:49:49 +0100
Message-Id: <20220207094953.949868-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207094953.949868-1-s.hauer@pengutronix.de>
References: <20220207094953.949868-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_015002_807163_870DF4A8 
X-CRM114-Status: GOOD (  12.65  )
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
Cc: Michael Olbrich <mol@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/8] cdev: implement cdev_open()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Implement cdev_open() with the expected semantics that takes a struct
cdev * argument. We already have an unimplemented prototype
cdev_do_open(), remove this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c  | 16 +++++++++++-----
 include/driver.h |  2 +-
 2 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 6350c3fa8b..dd6a9585bc 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -169,6 +169,14 @@ int cdev_find_free_index(const char *basename)
 	return -EBUSY;	/* all indexes are used */
 }
 
+int cdev_open(struct cdev *cdev, unsigned long flags)
+{
+	if (cdev->ops->open)
+		return cdev->ops->open(cdev, flags);
+
+	return 0;
+}
+
 struct cdev *cdev_open_name(const char *name, unsigned long flags)
 {
 	struct cdev *cdev;
@@ -178,11 +186,9 @@ struct cdev *cdev_open_name(const char *name, unsigned long flags)
 	if (!cdev)
 		return NULL;
 
-	if (cdev->ops->open) {
-		ret = cdev->ops->open(cdev, flags);
-		if (ret)
-			return NULL;
-	}
+	ret = cdev_open(cdev, flags);
+	if (ret)
+		return NULL;
 
 	return cdev;
 }
diff --git a/include/driver.h b/include/driver.h
index b4fae477a6..4f97b943c8 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -492,7 +492,7 @@ struct cdev *cdev_by_diskuuid(const char *partuuid);
 struct cdev *cdev_open_name(const char *name, unsigned long flags);
 struct cdev *cdev_create_loop(const char *path, ulong flags, loff_t offset);
 void cdev_remove_loop(struct cdev *cdev);
-int cdev_do_open(struct cdev *, unsigned long flags);
+int cdev_open(struct cdev *, unsigned long flags);
 void cdev_close(struct cdev *cdev);
 int cdev_flush(struct cdev *cdev);
 ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

