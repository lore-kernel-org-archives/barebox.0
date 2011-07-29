Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qmpkz-0005sB-Uh
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 16:17:51 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id CE0BCFFA786
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 18:18:39 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 29 Jul 2011 17:59:41 +0200
Message-Id: <1311955207-22372-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110729155356.GF25658@game.jcrosoft.org>
References: <20110729155356.GF25658@game.jcrosoft.org>
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
Subject: [PATCH 02/23] generic_memmap_ro/rw: switch to resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/driver.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 78e9ea9..3069c49 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -263,7 +263,7 @@ int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
 
 	if (flags & PROT_WRITE)
 		return -EACCES;
-	*map = (void *)cdev->dev->map_base;
+	*map = dev_get_mem_region(cdev->dev, 0);
 	return 0;
 }
 
@@ -272,7 +272,7 @@ int generic_memmap_rw(struct cdev *cdev, void **map, int flags)
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
