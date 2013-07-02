Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22d.google.com ([2a00:1450:4008:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu56e-0005aC-0E
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:15:20 +0000
Received: by mail-bk0-f45.google.com with SMTP id je9so2458528bkc.4
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:14:49 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:14:36 +0200
Message-Id: <1372788879-11028-8-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v3 07/10] OF: base: remove dead device related functions
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

With recent conversion to of_platfrom_populate_some functions are now
dead code and can be removed.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |  183 -----------------------------------------------------
 1 files changed, 0 insertions(+), 183 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index eb9ac84..9d63127 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1543,94 +1543,6 @@ int of_set_property(struct device_node *np, const char *name, const void *val, i
 	return 0;
 }
 
-static struct device_d *add_of_amba_device(struct device_node *node)
-{
-	struct amba_device *dev;
-	char *name, *at;
-
-	dev = xzalloc(sizeof(*dev));
-
-	name = xstrdup(node->name);
-	at = strchr(name, '@');
-	if (at) {
-		*at = 0;
-		snprintf(dev->dev.name, MAX_DRIVER_NAME, "%s.%s", at + 1, name);
-	} else {
-		strncpy(dev->dev.name, node->name, MAX_DRIVER_NAME);
-	}
-
-	dev->dev.id = DEVICE_ID_SINGLE;
-	memcpy(&dev->res, &node->resource[0], sizeof(struct resource));
-	dev->dev.resource = node->resource;
-	dev->dev.num_resources = 1;
-	dev->dev.device_node = node;
-	node->device = &dev->dev;
-
-	of_property_read_u32(node, "arm,primecell-periphid", &dev->periphid);
-
-	debug("register device 0x%08x\n", node->resource[0].start);
-
-	amba_device_add(dev);
-
-	free(name);
-
-	return &dev->dev;
-}
-
-static struct device_d *add_of_platform_device(struct device_node *node,
-		struct device_d *parent)
-{
-	struct device_d *dev;
-	char *name, *at;
-
-	dev = xzalloc(sizeof(*dev));
-
-	dev->parent = parent;
-
-	name = xstrdup(node->name);
-	at = strchr(name, '@');
-	if (at) {
-		*at = 0;
-		snprintf(dev->name, MAX_DRIVER_NAME, "%s.%s", at + 1, name);
-	} else {
-		strncpy(dev->name, node->name, MAX_DRIVER_NAME);
-	}
-
-	dev->id = DEVICE_ID_SINGLE;
-	dev->resource = node->resource;
-	dev->num_resources = node->num_resource;
-	dev->device_node = node;
-	node->device = dev;
-
-	debug("register device 0x%08x\n", node->resource[0].start);
-
-	platform_device_register(dev);
-
-	free(name);
-
-	return dev;
-}
-
-static struct device_d *add_of_device(struct device_node *node,
-		struct device_d *parent)
-{
-	const struct property *cp;
-
-	if (!of_device_is_available(node))
-		return NULL;
-
-	cp = of_get_property(node, "compatible", NULL);
-	if (!cp)
-		return NULL;
-
-	if (IS_ENABLED(CONFIG_ARM_AMBA) &&
-	    of_device_is_compatible(node, "arm,primecell") == 1)
-		return add_of_amba_device(node);
-	else
-		return add_of_platform_device(node, parent);
-}
-EXPORT_SYMBOL(add_of_device);
-
 static u64 dt_mem_next_cell(int s, const __be32 **cellp)
 {
 	const __be32 *p = *cellp;
@@ -1678,82 +1590,6 @@ int of_add_memory(struct device_node *node, bool dump)
 	return 0;
 }
 
-static struct device_d *add_of_device_resource(struct device_node *node,
-		struct device_d *parent)
-{
-	u64 address = 0, size;
-	struct resource *res, *resp;
-	struct device_d *dev;
-	const __be32 *endp, *reg;
-	const char *resname;
-	int na, nc, n_resources;
-	int ret, len, index;
-
-	reg = of_get_property(node, "reg", &len);
-	if (!reg)
-		return add_of_device(node, parent);
-
-	of_bus_count_cells(node, &na, &nc);
-
-	n_resources = (len / sizeof(__be32)) / (na + nc);
-
-	res = resp = xzalloc(sizeof(*res) * n_resources);
-
-	endp = reg + (len / sizeof(__be32));
-
-	index = 0;
-
-	while ((endp - reg) >= (na + nc)) {
-		address = of_translate_address(node, reg);
-		if (address == OF_BAD_ADDR) {
-			ret =  -EINVAL;
-			goto err_free;
-		}
-
-		reg += na;
-		size = dt_mem_next_cell(nc, &reg);
-
-		resp->start = address;
-		resp->end = address + size - 1;
-		resname = NULL;
-		of_property_read_string_index(node, "reg-names", index, &resname);
-		if (resname)
-			resp->name = xstrdup(resname);
-		resp->flags = IORESOURCE_MEM;
-		resp++;
-		index++;
-        }
-
-	/*
-	 * A device may already be registered as platform_device.
-	 * Instead of registering the same device again, just
-	 * add this node to the existing device.
-	 */
-	for_each_device(dev) {
-		if (!dev->resource)
-			continue;
-		if (dev->resource->start == res->start &&
-				dev->resource->end == res->end) {
-			debug("connecting %s to %s\n", node->name, dev_name(dev));
-			node->device = dev;
-			dev->device_node = node;
-			node->resource = dev->resource;
-			ret = 0;
-			goto err_free;
-		}
-	}
-
-	node->resource = res;
-	node->num_resource = n_resources;
-
-	return add_of_device(node, parent);
-
-err_free:
-	free(res);
-
-	return NULL;
-}
-
 void of_free(struct device_node *node)
 {
 	struct device_node *n, *nt;
@@ -1787,25 +1623,6 @@ void of_free(struct device_node *node)
 		of_set_root_node(NULL);
 }
 
-static void __of_probe(struct device_node *node,
-		const struct of_device_id *matches,
-		struct device_d *parent)
-{
-	struct device_node *n;
-	struct device_d *dev;
-
-	if (node->device)
-		return;
-
-	dev = add_of_device_resource(node, parent);
-
-	if (!of_match_node(matches, node))
-		return;
-
-	list_for_each_entry(n, &node->children, parent_list)
-		__of_probe(n, matches, dev);
-}
-
 static void __of_parse_phandles(struct device_node *node)
 {
 	struct device_node *n;
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
