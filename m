Delivery-date: Thu, 27 Nov 2025 10:20:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAX-005NWP-16
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 10:20:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAW-0003Va-Bn
	for lore@pengutronix.de; Thu, 27 Nov 2025 10:20:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ly95GqJLQhglr1/R+hsoRa/oKobQ+LR9JUas/Nok/cU=; b=OQ7kKTY8p1CaWpomqXHLjpJcft
	L8amEmcB5kx2KnRuIJ/NgUiVDihK9OPgHElsk5W7Os4Ljsf4dUmi0o25mA+ZXoNhbgtBwZWC++haM
	pDEUci06KXTcDGE+815TFMpPX1f98xCs6oRgaTS//2aOMK4RhqWnaFJrp4eeWaFDLjiDyMmgaCuWy
	uctyX+qfldDYFI400tCk0Ylr7p+EQ6K4KBE5hD9Ny9JPTN7qxVXkjC6KVGpO3L3HiN2LGTz+2iRn/
	EAqUo+pEi6ga0JWcyKtSEdtEZKg9/AUtkGFL5cOCdrnJChWEjj4jxfKbrIWGqk6teGL6yYnloX9oH
	/zV20aBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYA0-0000000GGin-1QeY;
	Thu, 27 Nov 2025 09:19:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOY9v-0000000GGfL-3UfQ
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 09:19:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00035I-CS; Thu, 27 Nov 2025 10:19:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9t-002lPC-31;
	Thu, 27 Nov 2025 10:19:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00000000tc4-1Dvd;
	Thu, 27 Nov 2025 10:19:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2025 10:19:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-devfs-v1-4-4aff12818757@pengutronix.de>
References: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
In-Reply-To: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764235165; l=1875;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=UMLQAR+3gR1a99N6Q2nHeE11Mq/5/+MR9BHu6yXu3dw=;
 b=Pf++muepRLgnXQgKh8kngPjtnO0FLFshEb7b49BGmfJytzmBS7iU+YbQG4Rc8BGNsHkHOatOz
 QW31A/Df7lDBDloib1vevuh6XwQyXQTNtWt0A0C9erA0RCkzfOCfC5X
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_011927_937104_B56AE059 
X-CRM114-Status: GOOD (  11.66  )
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
Subject: [PATCH 04/10] cdev: add cdev_size() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We'll need the size of a cdev later, add a helper for retrieving the
size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c  | 6 ++++++
 fs/devfs.c       | 3 +--
 include/driver.h | 1 +
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 92e7c5823ed0d3a4c54cc7b2b1c9bf32ac535907..7841ac71540675c27ec3a695f0b7333cd3b02e0c 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -435,6 +435,12 @@ int cdev_truncate(struct cdev *cdev, size_t size)
 	return -EPERM;
 }
 
+loff_t cdev_size(struct cdev *cdev)
+{
+	return cdev->flags & DEVFS_IS_CHARACTER_DEV ?
+		FILE_SIZE_STREAM : cdev->size;
+}
+
 static struct cdev *cdev_alloc(const char *name)
 {
 	struct cdev *new;
diff --git a/fs/devfs.c b/fs/devfs.c
index be3272be49e66eb843823b3ff664a1565f326790..a48c6452697b47cbd3ffc6f993230e7993e565fe 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -109,8 +109,7 @@ static int devfs_open(struct inode *inode, struct file *f)
 			return -ENOENT;
 	}
 
-	f->f_size = cdev->flags & DEVFS_IS_CHARACTER_DEV ?
-			FILE_SIZE_STREAM : cdev->size;
+	f->f_size = cdev_size(cdev);
 	f->private_data = cdev;
 
 	return cdev_open(cdev, f->f_flags);
diff --git a/include/driver.h b/include/driver.h
index c130a3cd63fd5e6dc365a33c765a22dc4e2ca90a..7d93c07c402421bd449adfda3aebaddddf5d3266 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -524,6 +524,7 @@ int cdev_protect(struct cdev*, size_t count, loff_t offset, int prot);
 int cdev_discard_range(struct cdev*, loff_t count, loff_t offset);
 int cdev_memmap(struct cdev*, void **map, int flags);
 int cdev_truncate(struct cdev*, size_t size);
+loff_t cdev_size(struct cdev *cdev);
 loff_t cdev_unallocated_space(struct cdev *cdev);
 static inline bool cdev_is_partition(const struct cdev *cdev)
 {

-- 
2.47.3



