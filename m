Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zjqze-0007B9-OG
 for barebox@lists.infradead.org; Wed, 07 Oct 2015 15:51:03 +0000
Received: by lbos8 with SMTP id s8so16209872lbo.0
 for <barebox@lists.infradead.org>; Wed, 07 Oct 2015 08:50:40 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Wed,  7 Oct 2015 18:52:57 +0300
Message-Id: <1444233177-21491-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH] fixup! detect_fs: use device instead of file
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, vicencb@gmail.com

---
 fs/fs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index c041e41..6283cea 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1201,7 +1201,7 @@ EXPORT_SYMBOL(register_fs_driver);
 
 static const char *detect_fs(const char *filename)
 {
-	enum filetype type = cdev_detect_type(filename);
+	enum filetype type = cdev_detect_type(basename(filename));
 	struct driver_d *drv;
 	struct fs_driver_d *fdrv;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
