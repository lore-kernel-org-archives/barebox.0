Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZluNj-0006vB-KY
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 07:52:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 Oct 2015 09:51:53 +0200
Message-Id: <1444722714-30445-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1444722714-30445-1-git-send-email-s.hauer@pengutronix.de>
References: <1444722714-30445-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] filetype: Use cdev_open
To: Barebox List <barebox@lists.infradead.org>

a cdev has to be opened before usage. Use cdev_open instead of
cdev_by_name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c | 4 +++-
 fs/fs.c           | 2 --
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index dc2ff3f..9ec8ebf 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -369,9 +369,10 @@ enum filetype cdev_detect_type(const char *name)
 	struct cdev *cdev;
 	void *buf;
 
-	cdev = cdev_by_name(name);
+	cdev = cdev_open(name, O_RDONLY);
 	if (!cdev)
 		return type;
+
 	buf = xzalloc(FILE_TYPE_SAFE_BUFSIZE);
 	ret = cdev_read(cdev, buf, FILE_TYPE_SAFE_BUFSIZE, 0, 0);
 	if (ret < 0)
@@ -396,5 +397,6 @@ enum filetype cdev_detect_type(const char *name)
 
 err_out:
 	free(buf);
+	cdev_close(cdev);
 	return type;
 }
diff --git a/fs/fs.c b/fs/fs.c
index c2a20e1..2d7578b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1205,8 +1205,6 @@ static const char *detect_fs(const char *filename)
 	struct driver_d *drv;
 	struct fs_driver_d *fdrv;
 
-	if (!strncmp(filename, "/dev/", 5))
-		filename += 5;
 	type = cdev_detect_type(filename);
 
 	if (type == filetype_unknown)
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
