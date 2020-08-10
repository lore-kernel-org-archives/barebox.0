Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k55jF-0003LI-Ap
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 11:12:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Aug 2020 13:12:10 +0200
Message-Id: <20200810111212.31286-2-s.hauer@pengutronix.de>
In-Reply-To: <20200810111212.31286-1-s.hauer@pengutronix.de>
References: <20200810111212.31286-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] fs: squashfs: set s_op in time
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

When calling squashfs_mount() s_op needs to be set already, otherwise
calling alloc_inode() yields in a NULL pointer derefence.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/squashfs/squashfs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 69451f7b84..be03618b2f 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -101,6 +101,7 @@ static int squashfs_probe(struct device_d *dev)
 	if (ret)
 		goto err_out;
 
+	sb->s_op = &squashfs_super_ops;
 
 	ret = squashfs_mount(fsdev, 0);
 	if (ret) {
@@ -110,8 +111,6 @@ static int squashfs_probe(struct device_d *dev)
 
 	squashfs_set_rootarg(fsdev);
 
-	sb->s_op = &squashfs_super_ops;
-
 	return 0;
 
 err_out:
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
