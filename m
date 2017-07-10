Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUW1P-0005w8-Jm
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 10:34:36 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 10 Jul 2017 12:33:51 +0200
Message-Id: <20170710103355.15652-5-s.trumtrar@pengutronix.de>
In-Reply-To: <20170710103355.15652-1-s.trumtrar@pengutronix.de>
References: <20170710103355.15652-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 5/9] of: of_path: find device via partuuid
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

When a node is compatible to a fixed-partitions, support searching the
corresponding device via the partuuid, if it specified in the device tree.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes since v1:
  - add documentation

 Documentation/devicetree/bindings/mtd/partition.txt | 21 +++++++++++++++++++++
 drivers/of/of_path.c                                | 17 ++++++++++++++++-
 2 files changed, 37 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/partition.txt

diff --git a/Documentation/devicetree/bindings/mtd/partition.txt b/Documentation/devicetree/bindings/mtd/partition.txt
new file mode 100644
index 000000000000..ab21ff25bb11
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partition.txt
@@ -0,0 +1,21 @@
+Representing flash partitions in devicetree
+
+In addition to the upstream binding, another property is added:
+
+Optional properties:
+- partuuid : The partition UUID for this partition.
+
+
+Examples:
+
+flash@0 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		state_part: state {
+			partuuid = "16367da7-c518-499f-9aad-e1f366692365";
+		};
+	};
+};
diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 334eab841a01..e53041b0a16c 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -56,11 +56,26 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
 
 	dev = of_find_device_by_node_path(node->full_name);
 	if (!dev) {
+		int ret;
+		const char *uuid;
 		struct device_node *devnode = node->parent;
 
-		if (of_device_is_compatible(devnode, "fixed-partitions"))
+		if (of_device_is_compatible(devnode, "fixed-partitions")) {
 			devnode = devnode->parent;
 
+			/* when partuuid is specified short-circuit the search for the cdev */
+			ret = of_property_read_string(node, "partuuid", &uuid);
+			if (!ret) {
+				cdev = cdev_by_partuuid(uuid);
+				if (!cdev)
+					return -ENODEV;
+
+				*outpath = basprintf("/dev/%s", cdev->name);
+
+				return 0;
+			}
+		}
+
 		dev = of_find_device_by_node_path(devnode->full_name);
 		if (!dev)
 			return -ENODEV;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
