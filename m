Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkI2v-0003Av-Hh
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 20:12:00 +0000
Received: by wiax7 with SMTP id x7so91916085wia.0
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 13:11:35 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 20 Apr 2015 22:11:18 +0200
Message-Id: <1429560686-11391-7-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 06/14] bus: mvebu-mbus: Drop device reference
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Prior converting mbus driver from a platform device back to directly
called SoC driver, drop the device_d reference and covert dev_foo to
pr_foo.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 drivers/bus/mvebu-mbus.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/bus/mvebu-mbus.c b/drivers/bus/mvebu-mbus.c
index 75c357a869ef..077d7ccb83ca 100644
--- a/drivers/bus/mvebu-mbus.c
+++ b/drivers/bus/mvebu-mbus.c
@@ -50,6 +50,8 @@
  *   configuration (file 'devices').
  */
 
+#define pr_fmt(fmt)	"mvebu-mbus: " fmt
+
 #include <common.h>
 #include <init.h>
 #include <io.h>
@@ -100,7 +102,7 @@ struct mvebu_mbus_soc_data {
 };
 
 struct mvebu_mbus_state {
-	struct device_d *dev;
+	struct device_node *np;
 	void __iomem *mbuswins_base;
 	void __iomem *sdramwins_base;
 	struct dentry *debugfs_root;
@@ -496,7 +498,7 @@ int mvebu_mbus_add_window_remap_by_id(unsigned int target,
 	struct mvebu_mbus_state *s = &mbus_state;
 
 	if (!mvebu_mbus_window_conflicts(s, base, size, target, attribute)) {
-		dev_err(s->dev, "cannot add window '%x:%x', conflicts with another window\n",
+		pr_err("cannot add window '%x:%x', conflicts with another window\n",
 		       target, attribute);
 		return -EINVAL;
 	}
@@ -552,14 +554,14 @@ static int mbus_dt_setup_win(struct mvebu_mbus_state *mbus,
 			     u32 base, u32 size, u8 target, u8 attr)
 {
 	if (!mvebu_mbus_window_conflicts(mbus, base, size, target, attr)) {
-		dev_err(mbus->dev, "cannot add window '%04x:%04x', conflicts with another window\n",
+		pr_err("cannot add window '%04x:%04x', conflicts with another window\n",
 		       target, attr);
 		return -EBUSY;
 	}
 
 	if (mvebu_mbus_alloc_window(mbus, base, size, MVEBU_MBUS_NO_REMAP,
 				    target, attr)) {
-		dev_err(mbus->dev, "cannot add window '%04x:%04x', too many windows\n",
+		pr_err("cannot add window '%04x:%04x', too many windows\n",
 		       target, attr);
 		return -ENOMEM;
 	}
@@ -571,7 +573,7 @@ static int mbus_parse_ranges(struct mvebu_mbus_state *mbus, int *addr_cells,
 			     int *cell_count, const __be32 **ranges_start,
 			     const __be32 **ranges_end)
 {
-	struct device_node *node = mbus->dev->device_node;
+	struct device_node *node = mbus->np;
 	const __be32 *prop;
 	int ranges_len, tuple_len;
 
@@ -596,8 +598,7 @@ static int mbus_parse_ranges(struct mvebu_mbus_state *mbus, int *addr_cells,
 	tuple_len = (*cell_count) * sizeof(__be32);
 
 	if (ranges_len % tuple_len) {
-		dev_warn(mbus->dev, "malformed ranges entry '%s'\n",
-			node->name);
+		pr_warn("malformed ranges entry '%s'\n", node->name);
 		return -EINVAL;
 	}
 	return 0;
@@ -679,36 +680,35 @@ static int mvebu_mbus_probe(struct device_d *dev)
 	const __be32 *prop;
 	int win;
 
-	mbus_state.dev = dev;
-
 	np = of_find_matching_node_and_match(NULL, mvebu_mbus_dt_ids, &match);
 	if (!np) {
-		dev_err(dev, "could not find a matching SoC family\n");
+		pr_err("could not find a matching SoC family\n");
 		return -ENODEV;
 	}
+	mbus_state.np = np;
 	mbus_state.soc = (struct mvebu_mbus_soc_data *)match->data;
 
 	prop = of_get_property(np, "controller", NULL);
 	if (!prop) {
-		dev_err(dev, "required 'controller' property missing\n");
+		pr_err("required 'controller' property missing\n");
 		return -EINVAL;
 	}
 
 	controller = of_find_node_by_phandle(be32_to_cpup(prop));
 	if (!controller) {
-		dev_err(dev, "could not find an 'mbus-controller' node\n");
+		pr_err("could not find an 'mbus-controller' node\n");
 		return -ENODEV;
 	}
 
 	mbus_state.mbuswins_base = of_iomap(controller, 0);
 	if (!mbus_state.mbuswins_base) {
-		dev_err(dev, "cannot get MBUS register address\n");
+		pr_err("cannot get MBUS register address\n");
 		return -ENOMEM;
 	}
 
 	mbus_state.sdramwins_base = of_iomap(controller, 1);
 	if (!mbus_state.sdramwins_base) {
-		dev_err(dev, "cannot get SDRAM register address\n");
+		pr_err("cannot get SDRAM register address\n");
 		return -ENOMEM;
 	}
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
