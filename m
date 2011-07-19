Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj5qg-0006l1-6t
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 08:40:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jul 2011 10:39:48 +0200
Message-Id: <1311064803-6305-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
References: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/19] generic memmap: use resources
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/driver.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/driver.c b/lib/driver.c
index 50f065a..cc900e2 100644
--- a/lib/driver.c
+++ b/lib/driver.c
@@ -262,7 +262,7 @@ int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
 
 	if (flags & PROT_WRITE)
 		return -EACCES;
-	*map = (void *)cdev->dev->map_base;
+	*map = dev_get_mem_region(cdev->dev, 0);
 	return 0;
 }
 
@@ -271,7 +271,7 @@ int generic_memmap_rw(struct cdev *cdev, void **map, int flags)
 	if (!cdev->dev)
 		return -EINVAL;
 
-	*map = (void *)cdev->dev->map_base;
+	*map = dev_get_mem_region(cdev->dev, 0);
 	return 0;
 }
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
