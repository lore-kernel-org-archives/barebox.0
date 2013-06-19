Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x229.google.com ([2a00:1450:4008:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEPO-0004zE-6J
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:10:47 +0000
Received: by mail-bk0-f41.google.com with SMTP id jc3so2229608bkc.0
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 02:10:07 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 19 Jun 2013 11:09:50 +0200
Message-Id: <1371632991-1504-22-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 21/22] OF: base: convert and remove
 device_node_for_nach_child
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Remove device_node_for_nach_child and convert users to corresponding
imported OF API functions.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/i2c/i2c.c       |    2 +-
 drivers/mfd/stmpe-i2c.c |    7 ++-----
 drivers/of/partition.c  |    2 +-
 drivers/spi/spi.c       |    2 +-
 include/of.h            |    3 ---
 5 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index b63d946..3e09547 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -278,7 +278,7 @@ void of_i2c_register_devices(struct i2c_adapter *adap)
 	if (!IS_ENABLED(CONFIG_OFDEVICE) || !adap->dev.device_node)
 		return;
 
-	device_node_for_nach_child(adap->dev.device_node, n) {
+	for_each_child_of_node(adap->dev.device_node, n) {
 		struct i2c_board_info info = {};
 		struct i2c_client *result;
 		const __be32 *addr;
diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index d785430..c505bc1 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -116,11 +116,8 @@ static struct stmpe_platform_data *stmpe_of_probe(struct device_d *dev)
 
 	pdata = xzalloc(sizeof(*pdata));
 
-	device_node_for_nach_child(dev->device_node, node) {
-		if (!strcmp(node->name, "stmpe_gpio")) {
-			pdata->blocks |= STMPE_BLOCK_GPIO;
-		}
-	}
+	if (of_get_child_by_name(dev->device_node, "stmpe_gpio"))
+		pdata->blocks |= STMPE_BLOCK_GPIO;
 
 	return pdata;
 }
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 2d70cf5..e4b7d1e 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -29,7 +29,7 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 	const char *partname;
 	char *filename;
 
-	device_node_for_nach_child(node, n) {
+	for_each_child_of_node(node, n) {
 		const __be32 *reg;
 		unsigned long offset, size;
 		const char *name;
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index eebf64c..5d4dfd6 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -107,7 +107,7 @@ void spi_of_register_slaves(struct spi_master *master, struct device_node *node)
 	struct spi_board_info chip;
 	struct property *reg;
 
-	device_node_for_nach_child(node, n) {
+	for_each_child_of_node(node, n) {
 		memset(&chip, 0, sizeof(chip));
 		chip.name = xstrdup(n->name);
 		chip.bus_num = master->bus_num;
diff --git a/include/of.h b/include/of.h
index c3bcabe..c61d002 100644
--- a/include/of.h
+++ b/include/of.h
@@ -80,9 +80,6 @@ struct fdt_header *of_get_fixed_tree(struct device_node *node);
 
 int of_modalias_node(struct device_node *node, char *modalias, int len);
 
-#define device_node_for_nach_child(node, child) \
-	list_for_each_entry(child, &node->children, parent_list)
-
 /* Helper to read a big number; size is in cells (not bytes) */
 static inline u64 of_read_number(const __be32 *cell, int size)
 {
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
