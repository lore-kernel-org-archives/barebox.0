Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Ggv-00021w-8s
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:40 +0200
Message-Id: <20180403074851.5411-9-s.hauer@pengutronix.de>
In-Reply-To: <20180403074851.5411-1-s.hauer@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/19] fs: Fix finding correct directory for mkdir/rmdir
To: Barebox List <barebox@lists.infradead.org>

When there are links in the path mkdir/rmdir are called with then
canonicalize_path is needed which resolves the links.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 92f336b821..b66cc9b178 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1660,7 +1660,7 @@ int mkdir (const char *pathname, mode_t mode)
 {
 	struct fs_driver_d *fsdrv;
 	struct fs_device_d *fsdev;
-	char *p = normalise_path(pathname);
+	char *p = canonicalize_path(pathname);
 	char *freep = p;
 	int ret;
 	struct stat s;
@@ -1700,7 +1700,7 @@ int rmdir (const char *pathname)
 {
 	struct fs_driver_d *fsdrv;
 	struct fs_device_d *fsdev;
-	char *p = normalise_path(pathname);
+	char *p = canonicalize_path(pathname);
 	char *freep = p;
 	int ret;
 	struct stat s;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
