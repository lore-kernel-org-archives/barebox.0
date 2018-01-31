Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egqCD-0002Rg-4H
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 11:04:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 12:04:36 +0100
Message-Id: <20180131110438.22620-2-s.hauer@pengutronix.de>
In-Reply-To: <20180131110438.22620-1-s.hauer@pengutronix.de>
References: <20180131110438.22620-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] pinctrl: do not dereference a device tree property
 directly
To: Barebox List <barebox@lists.infradead.org>

Use of_get_property() rather than of_find_property() to avoid
dereferencing a struct property directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index bef4fcdba1..0e42a31474 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -99,8 +99,7 @@ static int pinctrl_config_one(struct device_node *np)
 int of_pinctrl_select_state(struct device_node *np, const char *name)
 {
 	int state, ret;
-	char *propname;
-	struct property *prop;
+	char propname[sizeof("pinctrl-4294967295")];
 	const __be32 *list;
 	int size, config;
 	phandle phandle;
@@ -113,18 +112,13 @@ int of_pinctrl_select_state(struct device_node *np, const char *name)
 	/* For each defined state ID */
 	for (state = 0; ; state++) {
 		/* Retrieve the pinctrl-* property */
-		propname = basprintf("pinctrl-%d", state);
-		prop = of_find_property(np, propname, NULL);
-		free(propname);
-
-		if (!prop) {
+		sprintf(propname, "pinctrl-%d", state);
+		list = of_get_property(np, propname, &size);
+		if (!list) {
 			ret = -ENODEV;
 			break;
 		}
 
-		size = prop->length;
-
-		list = prop->value;
 		size /= sizeof(*list);
 
 		/* Determine whether pinctrl-names property names the state */
@@ -137,7 +131,7 @@ int of_pinctrl_select_state(struct device_node *np, const char *name)
 		 */
 		if (ret < 0) {
 			/* strlen("pinctrl-") == 8 */
-			statename = prop->name + 8;
+			statename = &propname[8];
 		}
 
 		if (strcmp(name, statename))
@@ -151,7 +145,7 @@ int of_pinctrl_select_state(struct device_node *np, const char *name)
 			np_config = of_find_node_by_phandle(phandle);
 			if (!np_config) {
 				pr_err("prop %s %s index %i invalid phandle\n",
-					np->full_name, prop->name, config);
+					np->full_name, propname, config);
 				ret = -EINVAL;
 				goto err;
 			}
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
