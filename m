Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1csNoB-0002Tm-IP
 for barebox@lists.infradead.org; Mon, 27 Mar 2017 06:07:17 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 27 Mar 2017 08:06:47 +0200
Message-Id: <20170327060647.14269-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2] bootm: fit: support multiple configuration nodes
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/image-fit.c | 39 +++++++++++++++++++++++++++++++++++++--
 1 file changed, 37 insertions(+), 2 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 0536c49b1..cd2d7519a 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -491,6 +491,37 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
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
+		return -ENOSYS;
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
@@ -503,8 +534,12 @@ static int fit_open_configuration(struct fit_handle *handle, const char *name)
 
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
