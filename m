Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PnNJ6-0000Vr-9I
	for barebox@lists.infradead.org; Thu, 10 Feb 2011 03:35:01 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 10 Feb 2011 04:31:59 +0100
Message-Id: <1297308720-26390-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1297308720-26390-1-git-send-email-plagnioj@jcrosoft.com>
References: <1297308720-26390-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] driver/memmap: fix generic_memmap_rw and generic_memmap_ro
To: barebox@lists.infradead.org

we check before the RW access for generic_memmap_ro instead of
generic_memmap_rw

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/driver.c |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index ff92e44..bd7464e 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -223,8 +223,6 @@ int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
 	if (!cdev->dev)
 		return -EINVAL;
 
-	if (flags & PROT_WRITE)
-		return -EACCES;
 	*map = (void *)cdev->dev->map_base;
 	return 0;
 }
@@ -234,6 +232,9 @@ int generic_memmap_rw(struct cdev *cdev, void **map, int flags)
 	if (!cdev->dev)
 		return -EINVAL;
 
+	if (flags & PROT_WRITE)
+		return -EACCES;
+
 	*map = (void *)cdev->dev->map_base;
 	return 0;
 }
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
