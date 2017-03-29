Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ct8WE-0006Zc-Oh
 for barebox@lists.infradead.org; Wed, 29 Mar 2017 07:59:53 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 29 Mar 2017 09:59:27 +0200
Message-Id: <20170329075927.1131-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3] bootm: fit: support multiple configuration nodes
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/image-fit.c | 40 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 0536c49b1..81433e6ec 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -491,6 +491,38 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
 	return ret;
 }
 
+static int fit_find_compatible_unit(struct device_node *conf_node,
+				    const char **unit)
+{
+	struct device_node *child = NULL;
+	struct device_node *barebox_root;
+	const char *machine;
+	int ret;
+
+	barebox_root = of_get_root_node();
+	if (!barebox_root)
+		goto default_unit;
+
+	ret = of_property_read_string(barebox_root, "compatible", &machine);
+	if (ret)
+		return -ENOENT;
+
+	for_each_child_of_node(conf_node, child) {
+		if (of_device_is_compatible(child, machine)) {
+			*unit = child->name;
+			pr_info("matching unit '%s' found\n", *unit);
+			return 0;
+		}
+	}
+
+default_unit:
+	pr_info("No match found. Trying default.\n");
+	if (of_property_read_string(conf_node, "default", unit) == 0)
+		return 0;
+
+	return -ENOENT;
+}
+
 static int fit_open_configuration(struct fit_handle *handle, const char *name)
 {
 	struct device_node *conf_node = NULL;
@@ -503,8 +535,12 @@ static int fit_open_configuration(struct fit_handle *handle, const char *name)
 
 	if (name) {
 		unit = name;
-	} else if (of_property_read_string(conf_node, "default", &unit)) {
-		unit = "conf@1";
+	} else {
+		ret = fit_find_compatible_unit(conf_node, &unit);
+		if (ret) {
+			pr_info("Couldn't get a valid configuration. Aborting.\n");
+			return ret;
+		}
 	}
 
 	conf_node = of_get_child_by_name(conf_node, unit);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
