Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4lqT-0005oy-VD
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 04:50:11 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 91D91DC0FA3
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 06:55:06 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Aug 2012 06:50:05 +0200
Message-Id: <1345783818-28784-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/18] fs: open: add symlink support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/fs.c |   15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 9f2e82c..ca6340c 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -606,13 +606,20 @@ int open(const char *pathname, int flags, ...)
 	struct fs_device_d *fsdev;
 	struct fs_driver_d *fsdrv;
 	FILE *f;
-	int exist_err;
+	int exist_err = 0;
 	struct stat s;
-	char *path = normalise_path(pathname);
-	char *freep = path;
+	char *path;
+	char *freep;
 	int ret;
 
-	exist_err = lstat(path, &s);
+	path = realfile(pathname, &s);
+
+	if (IS_ERR(path)) {
+		exist_err = PTR_ERR(path);
+		path = normalise_path(pathname);
+	}
+
+	freep = path;
 
 	if (!exist_err && S_ISDIR(s.st_mode)) {
 		ret = -EISDIR;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
