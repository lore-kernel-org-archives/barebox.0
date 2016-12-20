Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cJGoA-00027z-5n
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 09:34:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cJGnk-00039l-Ov
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 10:33:40 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 20 Dec 2016 10:33:32 +0100
Message-Id: <20161220093340.14404-1-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/9] fs: squashfs: don't reference UBI symbols if UBI isn't
 compiled in
To: barebox@lists.infradead.org

There is no point in trying to append a UBI root option, if there is
no UBI support in barebox.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 fs/squashfs/squashfs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index c4d0bac97443..4f4a307dafdd 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -120,6 +120,9 @@ void squashfs_set_rootarg(struct squashfs_priv *priv, struct fs_device_d *fsdev)
 	struct mtd_info *mtd;
 	char *str;
 
+	if (!IS_ENABLED(CONFIG_MTD_UBI))
+		return;
+
 	ubi_vol = ubi_open_volume_cdev(fsdev->cdev, UBI_READONLY);
 
 	if (IS_ERR(ubi_vol))
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
