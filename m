Delivery-date: Thu, 11 Dec 2025 16:19:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTiRe-00AL1G-1b
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 16:19:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTiRd-0002sM-U4
	for lore@pengutronix.de; Thu, 11 Dec 2025 16:19:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jp85a0M9MS6470mA4K9TDKicRffV5JsB/ETMrIiEtzE=; b=YztpWpLRTlPWIS0EsMJ7oXGexA
	ePVMrJm7wJu3F6qZYcDhhmWGJsg2TdSUA4ythrE+hl54aWrlfrHlL8ntvnStXgYWToJlhDe4Dsjo8
	p4J6yapCrl/OBcCurokz51p8DKekW1LPVINk77Q1g55Y+YqFt3xSqL4CclX3bk9JGWGt8wP4dHNVB
	1iYPzLvEiiPPn2fn/ZMT8Ps/3FMBuBWV7stEatO37R+UrRvmS+BkUQPpJEZpnIgcdw/pi9Vp28h34
	mKgUz/nbWLoNfHHRc/bRFWqWATXd/sL9RbSV5DMVnHFu9X2HLEsfHCPR53PGxkP7qXCzC4q856HXA
	Prpm4cgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTiR1-0000000GlKc-1Svf;
	Thu, 11 Dec 2025 15:18:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTiQx-0000000GlJ7-0WN6
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 15:18:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTiQv-0002fg-HI; Thu, 11 Dec 2025 16:18:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTiQv-0059M7-16;
	Thu, 11 Dec 2025 16:18:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTiQv-0000000Fe1B-0zsv;
	Thu, 11 Dec 2025 16:18:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 16:18:16 +0100
Message-ID: <20251211151820.3726093-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211151820.3726093-1-a.fatoum@pengutronix.de>
References: <20251211151820.3726093-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_071823_158974_754170C0 
X-CRM114-Status: GOOD (  11.43  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] fs: implement new resolve_fsdevice_path helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by the EFI loader, we will want to split off the file path
within a device from the device path.

As we have no function that generates a path relative to a mountpoint's
root, add a function that does this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c      | 25 +++++++++++++++++++++++++
 include/fs.h |  1 +
 2 files changed, 26 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 28378989f91b..77f22d69ea49 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2454,6 +2454,31 @@ struct fs_device *get_fsdevice_by_path(int dirfd, const char *pathname)
 	return fsdev;
 }
 
+struct fs_device *resolve_fsdevice_path(int dirfd, const char *pathname, char **filepath)
+{
+	struct fs_device *fsdev;
+	char *res = NULL;
+	struct path path;
+	int ret;
+
+	fsdev = get_fsdevice_by_path(dirfd, pathname);
+	if (!fsdev)
+		return NULL;
+
+	ret = filename_lookup(dirfd, getname(pathname), LOOKUP_FOLLOW, &path);
+	if (ret)
+		goto out;
+
+	res = dpath(path.dentry, fsdev->vfsmount.mnt_root);
+	if (res)
+		*filepath = res;
+
+	path_put(&path);
+out:
+	errno_set(ret);
+	return res ? fsdev : NULL;
+}
+
 static int vfs_rmdir(struct inode *dir, struct dentry *dentry)
 {
 	int error;
diff --git a/include/fs.h b/include/fs.h
index b9bd14da81a7..9c3c8d95123a 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -141,6 +141,7 @@ void cdev_print(const struct cdev *cdev);
 char *canonicalize_path(int dirfd, const char *pathname);
 
 struct fs_device *get_fsdevice_by_path(int dirfd, const char *path);
+struct fs_device *resolve_fsdevice_path(int dirfd, const char *pathname, char **filepath);
 
 const char *get_mounted_path(const char *path);
 
-- 
2.47.3



