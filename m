Delivery-date: Wed, 07 Jul 2021 00:10:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m0tGm-0002ax-4E
	for lore@lore.pengutronix.de; Wed, 07 Jul 2021 00:10:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m0tGk-0002Y7-Vj
	for lore@pengutronix.de; Wed, 07 Jul 2021 00:10:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+vI57iRgFwoOncR5llPdbaiXJNT4uqbUYIiIEtzpo60=; b=Q9RdOjMi7IdhC5
	OvkxV1c/BjscKayPtadWoUW2ANpQOWx6XtYUvIQc6V5v17lMurjf0MWhtWc/KcdMYOOEuo2S6aBgx
	Yar7CjcDA8LEeYOH4j9b6bEO+TpY2RaJzpf+wVwtlwuBpH04qR4r2CNAciKEue1Oot8evPE17sUJo
	2O1SO2bsG9UuKPk2aF9HN1j25CXhw3DqdVizSC/A9u8mQDj169+5mLZYtvvRLw83vQEcpD6hi6qIO
	ery5GpOu6dsJnZ0H2+zNkEJKkBKdchg3BhgtKY6jaiHNvg9/gdSIDLKxwORhHzQLJLoQ1y1o5y++/
	M3i/x3s30Jf9tug1Yz+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0tEv-00Cw17-C9; Tue, 06 Jul 2021 22:08:25 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0tEp-00Cw0O-M4
 for barebox@lists.infradead.org; Tue, 06 Jul 2021 22:08:21 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 54CAE200003;
 Tue,  6 Jul 2021 22:08:13 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>,
	Xogium <contact@xogium.me>
Date: Wed,  7 Jul 2021 00:08:09 +0200
Message-Id: <20210706220809.729815-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_150819_901180_0C236EE3 
X-CRM114-Status: GOOD (  10.48  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] fs: fix NULL pointer dereference of fsdrv->truncate
 for read-only FS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

fsdrv->truncate is dereferenced at times without checking for NULL before,
leading to crashes, e.g. doing:

  edit -o /mnt/myext4/FILE some text

on ext4 crashes. Fix this by returning -EROFS when truncate is unimplemented.

Reported-by: Xogium <contact@xogium.me>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 fs/fs.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index a9dbf1dd4e2f..2f4b642b3952 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -208,9 +208,15 @@ int creat(const char *pathname, mode_t mode)
 }
 EXPORT_SYMBOL(creat);
 
+static int fsdev_truncate(struct device_d *dev, FILE *f, loff_t length)
+{
+	struct fs_driver_d *fsdrv = f->fsdev->driver;
+
+	return fsdrv->truncate ? fsdrv->truncate(&f->fsdev->dev, f, length) : -EROFS;
+}
+
 int ftruncate(int fd, loff_t length)
 {
-	struct fs_driver_d *fsdrv;
 	FILE *f = fd_to_file(fd);
 	int ret;
 
@@ -220,9 +226,7 @@ int ftruncate(int fd, loff_t length)
 	if (f->size == FILE_SIZE_STREAM)
 		return 0;
 
-	fsdrv = f->fsdev->driver;
-
-	ret = fsdrv->truncate(&f->fsdev->dev, f, length);
+	ret = fsdev_truncate(&f->fsdev->dev, f, length);
 	if (ret) {
 		errno = -ret;
 		return ret;
@@ -332,7 +336,7 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 		assert_command_context();
 
 	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size) {
-		ret = fsdrv->truncate(&f->fsdev->dev, f, f->pos + count);
+		ret = fsdev_truncate(&f->fsdev->dev, f, f->pos + count);
 		if (ret) {
 			if (ret != -ENOSPC)
 				goto out;
@@ -2463,7 +2467,7 @@ int open(const char *pathname, int flags, ...)
 	}
 
 	if (flags & O_TRUNC) {
-		error = fsdrv->truncate(&fsdev->dev, f, 0);
+		error = fsdev_truncate(&fsdev->dev, f, 0);
 		f->size = 0;
 		inode->i_size = 0;
 		if (error)
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

