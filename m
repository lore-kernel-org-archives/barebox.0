Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zlxgq-0008BW-Hd
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 11:24:21 +0000
Received: by lbcao8 with SMTP id ao8so15870709lbc.3
 for <barebox@lists.infradead.org>; Tue, 13 Oct 2015 04:23:58 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 13 Oct 2015 14:26:23 +0300
Message-Id: <1444735583-21222-1-git-send-email-pmamonov@gmail.com>
In-Reply-To: <20151013074411.GB7858@pengutronix.de>
References: <20151013074411.GB7858@pengutronix.de>
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
Subject: [PATCH v1 resend] fixup! detect_fs: use device instead of file
To: s.hauer@pengutronix.de, barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
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
