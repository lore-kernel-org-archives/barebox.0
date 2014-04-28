Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wehuy-0005Z7-Jx
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 09:32:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 11:31:44 +0200
Message-Id: <1398677505-15869-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1398677505-15869-1-git-send-email-s.hauer@pengutronix.de>
References: <1398677505-15869-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] of: move of_find_device_by_node_path to
 drivers/of/of_path.c
To: barebox@lists.infradead.org

As it's generic helper function which should not stay in driver
specific code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/barebox.c | 14 --------------
 drivers/of/of_path.c | 14 ++++++++++++++
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index 44ec820..92471f8 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -34,20 +34,6 @@ struct of_partition {
 
 static LIST_HEAD(of_partition_list);
 
-struct device_d *of_find_device_by_node_path(const char *path)
-{
-	struct device_d *dev;
-
-	for_each_device(dev) {
-		if (!dev->device_node)
-			continue;
-		if (!strcmp(path, dev->device_node->full_name))
-			return dev;
-	}
-
-	return NULL;
-}
-
 static int environment_probe(struct device_d *dev)
 {
 	char *path;
diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index ab8618e..20eb771 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -31,6 +31,20 @@ struct of_path_type {
 	int (*parse)(struct of_path *op, const char *str);
 };
 
+struct device_d *of_find_device_by_node_path(const char *path)
+{
+	struct device_d *dev;
+
+	for_each_device(dev) {
+		if (!dev->device_node)
+			continue;
+		if (!strcmp(path, dev->device_node->full_name))
+			return dev;
+	}
+
+	return NULL;
+}
+
 /**
  * of_path_type_partname - find a partition based on physical device and
  *                         partition name
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
