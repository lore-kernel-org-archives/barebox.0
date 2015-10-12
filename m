Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zlcut-00009N-1i
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 13:13:27 +0000
Received: by lbwr8 with SMTP id r8so140983875lbw.2
 for <barebox@lists.infradead.org>; Mon, 12 Oct 2015 06:13:05 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon, 12 Oct 2015 16:15:17 +0300
Message-Id: <1444655717-10885-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH v1] fixup! detect_fs: use device instead of file
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

---
 fs/fs.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index c041e41..c2a20e1 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1201,10 +1201,14 @@ EXPORT_SYMBOL(register_fs_driver);
 
 static const char *detect_fs(const char *filename)
 {
-	enum filetype type = cdev_detect_type(filename);
+	enum filetype type;
 	struct driver_d *drv;
 	struct fs_driver_d *fdrv;
 
+	if (!strncmp(filename, "/dev/", 5))
+		filename += 5;
+	type = cdev_detect_type(filename);
+
 	if (type == filetype_unknown)
 		return NULL;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
