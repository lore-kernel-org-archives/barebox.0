Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ef9tZ-0004bz-EH
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 19:42:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jan 2018 20:42:27 +0100
Message-Id: <20180126194227.32088-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs: Fix memory leak in mount()
To: Barebox List <barebox@lists.infradead.org>

"path" is allocated by normalise_path() and thus must be
freed. This was done in the error path, but not in the success
path.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 6f15e93ba9..7d0d97906d 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1392,6 +1392,8 @@ int mount(const char *device, const char *fsname, const char *_path,
 		fsdev_set_linux_rootarg(fsdev, str);
 	}
 
+	free(path);
+
 	return 0;
 
 err_no_driver:
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
