Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by casper.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PGyGu-0008Eb-3t
	for barebox@lists.infradead.org; Fri, 12 Nov 2010 18:22:52 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 12 Nov 2010 19:18:55 +0100
Message-Id: <1289585938-22813-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101112180228.GC13661@game.jcrosoft.org>
References: <20101112180228.GC13661@game.jcrosoft.org>
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
Subject: [PATCH 2/5] mem: add multiple resource support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/mem.c |   21 +++++++++++++--------
 1 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index 05956ab..d35c8c0 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -589,18 +589,23 @@ static struct file_operations memops = {
 
 static int mem_probe(struct device_d *dev)
 {
-	struct resource *res = &dev->resource[0];
+	int i;
+	struct resource *res;
 	struct cdev *cdev;
 
-	cdev = xzalloc(sizeof (*cdev));
-	dev->priv = cdev;
+	for (i = 0; i < dev->num_resources; i++) {
+		res = &dev->resource[i];
 
-	cdev->name = (char*)res->name;
-	cdev->size = res->size;
-	cdev->ops = &memops;
-	cdev->dev = dev;
+		cdev = xzalloc(sizeof (*cdev));
+		dev->priv = cdev;
 
-	devfs_create(cdev);
+		cdev->name = (char*)res->name;
+		cdev->size = res->size;
+		cdev->ops = &memops;
+		cdev->dev = dev;
+
+		devfs_create(cdev);
+	}
 
 	return 0;
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
