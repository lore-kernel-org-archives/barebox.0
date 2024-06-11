Delivery-date: Tue, 11 Jun 2024 08:58:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvSF-0046xz-0Z
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 08:58:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvSE-0005U5-Im
	for lore@pengutronix.de; Tue, 11 Jun 2024 08:58:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cmg9YC2fkiynpVTbgQlVgqGMS+sDwOcayd6MLgzS/iU=; b=p0HKaWUzJZ9qmM8IQlIK5t6X7l
	Su9tKhPbe3qSbvpRLWTljDHTocJS0EDFwpXbyIKe2xX/1bz70l2qwNc7eKeuBZ0T3Gg2YDJOC9OtH
	B4dKZtpj+gqZSYxrbQfttTfWiF3tkUd4MNK+CY3J4vHc1DIOEyZHbgfH49f1O83phg+JjHEjTvSWv
	aygIrY9YXqMJ2VPwnxLvv56wbt/nKJXwY1fd4IzC41bT7GO/9+YMPi9xMLzC7Vtb1G5HjtPyW046B
	5TGrTJsP8oq/BFsDTWxoo/SnkxWgctGMgffFg7wwI6Bg00uzt7jFtgf+e4wBnrTSvOkIaTKszO5Rm
	M8pn+18A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvRd-00000007mDU-0y5R;
	Tue, 11 Jun 2024 06:57:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvRZ-00000007mBo-38Mo
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 06:57:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvRX-0005K1-Ua; Tue, 11 Jun 2024 08:57:19 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvRX-001U8c-IO; Tue, 11 Jun 2024 08:57:19 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvRX-00CAKW-1Y;
	Tue, 11 Jun 2024 08:57:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 08:57:18 +0200
Message-Id: <20240611065718.2899625-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240611065718.2899625-1-a.fatoum@pengutronix.de>
References: <20240611065718.2899625-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_235721_897305_40FDDC0C 
X-CRM114-Status: GOOD (  10.64  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 4/4] fs: legacy: gracefully handle non existent files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Semihosting file system API doesn't support listing files, so the
opendir callback returns NULL. This triggers crashes inside the legacy
dentry adapter code, so add some NULL checks to guard against this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/legacy.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/fs/legacy.c b/fs/legacy.c
index 7e886e7ae9a2..0d4d4d43ebac 100644
--- a/fs/legacy.c
+++ b/fs/legacy.c
@@ -29,6 +29,9 @@ static int legacy_iterate(struct file *file, struct dir_context *ctx)
 	pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
 
 	d = fsdev->driver->opendir(&fsdev->dev, pathname);
+	if (!d)
+		goto out;
+
 	while (1) {
 		dirent = fsdev->driver->readdir(&fsdev->dev, d);
 		if (!dirent)
@@ -38,7 +41,7 @@ static int legacy_iterate(struct file *file, struct dir_context *ctx)
 	}
 
 	fsdev->driver->closedir(&fsdev->dev, d);
-
+out:
 	free(pathname);
 
 	return 0;
@@ -55,10 +58,14 @@ static struct dentry *legacy_lookup(struct inode *dir, struct dentry *dentry,
 	int ret;
 
 	pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
+	if (!pathname)
+		return NULL;
 
 	ret = fsdev->driver->stat(&fsdev->dev, pathname, &s);
 	if (!ret) {
 		inode = legacy_get_inode(sb, dir, s.st_mode);
+		if (!inode)
+			return NULL;
 
 		inode->i_size = s.st_size;
 		inode->i_mode = s.st_mode;
-- 
2.39.2



