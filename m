Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VWN25-0002PI-6V
 for barebox@lists.infradead.org; Wed, 16 Oct 2013 09:04:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 Oct 2013 11:04:17 +0200
Message-Id: <1381914257-9456-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs: ignore O_TRUNC open flag for devices
To: barebox@lists.infradead.org
Cc: pza@pengutronix.de

The O_TRUNC flag has to be ignored when opening devices. Otherwise
cp /somefile /dev/somedev fails. This is broken since:

| commit d4f5bb1e011ac653a167031554f0ac9e028e9e36
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Sat Sep 28 13:12:50 2013 +0200
|
|     copy_file: Add missing O_TRUNC
|
|     Without it, when copying a smaller file over a larger file the
|     resulting file still has the remaining space from the larger file.
|
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Many usecases are broken on the latest release without this patch so
I'll make a stable release with it.

 fs/fs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index ce7b425..7d558e9 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -722,8 +722,7 @@ int open(const char *pathname, int flags, ...)
 	if (ret)
 		goto out;
 
-
-	if (flags & O_TRUNC) {
+	if (!(s.st_mode & S_IFCHR) && (flags & O_TRUNC)) {
 		ret = fsdrv->truncate(&fsdev->dev, f, 0);
 		f->size = 0;
 		if (ret)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
