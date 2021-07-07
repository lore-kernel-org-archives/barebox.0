Delivery-date: Wed, 07 Jul 2021 08:54:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m11SJ-0003Hw-Lq
	for lore@lore.pengutronix.de; Wed, 07 Jul 2021 08:54:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m11SI-0004Zc-PJ
	for lore@pengutronix.de; Wed, 07 Jul 2021 08:54:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RQs4blXTeh0JgChxQo7Ng8C+mxR+vhbyUIiq7DTdDxE=; b=TJGMrEHbXPfTVa
	rmMYg12o+WUqOK/ygEdo3rsvCBa1/1s1utEetkKBz39Hn5QolPQ121bTzvYI2Sa3Mo2OARqcU+q2v
	i+wCv7/c+h175xslSjs/AfveaeP7/xCdjEnsUH7nB0K5O0bxOazTE9AV5Gfdxu+IO5N5I0sL2yyhK
	BHl0NClObusNiYOfZ8PbT3zyFuUiH3OOzl7G1Xc8jLagYvs9K0/3DjKJYgdhlRLC2Jpih4ajm7Ay5
	tgFAkt+qt4HuiUysvyPukuW8cIiUA4BA3SQseGjxpXpzob1CqOhTDVCKCqTVDfHtZetuYjyM29ddq
	wISkOpA+gYtqSFGmj1hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m11Qg-00DnIS-0z; Wed, 07 Jul 2021 06:53:06 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m11Qa-00DnHj-KQ
 for barebox@lists.infradead.org; Wed, 07 Jul 2021 06:53:02 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id ADCB840006;
 Wed,  7 Jul 2021 06:52:56 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>,
	Xogium <contact@xogium.me>
Date: Wed,  7 Jul 2021 08:52:51 +0200
Message-Id: <20210707065251.760827-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_235300_848418_B26F4031 
X-CRM114-Status: GOOD (  11.36  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2] fs: fix NULL pointer dereference of fsdrv->truncate
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
v1 -> v2:
  - use dev parameter instead of going through &f->fsdev->dev.
    No functional change, but makes diff easier to verify.
---
 fs/fs.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index a9dbf1dd4e2f..b6431227d60c 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -208,9 +208,15 @@ int creat(const char *pathname, mode_t mode)
 }
 EXPORT_SYMBOL(creat);
 
+static int fsdev_truncate(struct device_d *dev, FILE *f, loff_t length)
+{
+	struct fs_driver_d *fsdrv = f->fsdev->driver;
+
+	return fsdrv->truncate ? fsdrv->truncate(dev, f, length) : -EROFS;
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

