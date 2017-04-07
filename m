Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cwQPH-0004D3-6a
 for barebox@lists.infradead.org; Fri, 07 Apr 2017 09:42:18 +0000
Received: by mail-lf0-x241.google.com with SMTP id n78so5656043lfi.3
 for <barebox@lists.infradead.org>; Fri, 07 Apr 2017 02:41:54 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  7 Apr 2017 12:41:46 +0300
Message-Id: <20170407094146.8705-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] gui: image_renderer: fix "no previous prototype for
 'squashfs_set_rootarg'" warning
To: barebox@lists.infradead.org

The patch fixes this compiler's warning:

  fs/squashfs/squashfs.c:115:6: warning: no previous prototype for 'squashfs_set_rootarg' [-Wmissing-prototypes]
   void squashfs_set_rootarg(struct squashfs_priv *priv, struct fs_device_d *fsdev)
        ^

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/squashfs/squashfs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 4f4a307da..cf7431ee0 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -112,7 +112,8 @@ static struct inode *squashfs_findfile(struct super_block *sb,
 	return NULL;
 }
 
-void squashfs_set_rootarg(struct squashfs_priv *priv, struct fs_device_d *fsdev)
+static void squashfs_set_rootarg(struct squashfs_priv *priv,
+					struct fs_device_d *fsdev)
 {
 	struct ubi_volume_desc *ubi_vol;
 	struct ubi_volume_info vi = {};
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
