Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXz6d-00032e-CI
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 20:28:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Apr 2014 22:28:01 +0200
Message-Id: <1397075281-1588-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] devfs-core: return new cdev also for mtd partitions
To: barebox@lists.infradead.org

__devfs_add_partition returns the newly created cdev, but in case
of mtd partitions it accidently returns 0. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index eafdc87..455b21a 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -303,7 +303,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 				partinfo->flags, partinfo->name);
 		if (IS_ERR(mtd))
 			return (void *)mtd;
-		return 0;
+		return &mtd->cdev;
 	}
 
 	new = xzalloc(sizeof(*new));
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
