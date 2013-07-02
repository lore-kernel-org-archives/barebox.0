Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x236.google.com ([2a00:1450:4008:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu56e-0005aD-5u
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:15:19 +0000
Received: by mail-bk0-f54.google.com with SMTP id it16so2503813bkc.27
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:14:50 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:14:38 +0200
Message-Id: <1372788879-11028-10-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v3 09/10] OF: base: convert of_add_memory to OF API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Convert of_add_memory parsing to make use of of_address_to_resource
instead of parsing memory ranges itself. This makes some functions
dead code which are also removed.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- fix check for return value of of_address_to_resource (Reported by
  Sascha Hauer)

Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |   57 +++++++---------------------------------------------
 1 files changed, 8 insertions(+), 49 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 0244281..1cf7a5f 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -99,21 +99,6 @@ int of_n_size_cells(struct device_node *np)
 }
 EXPORT_SYMBOL(of_n_size_cells);
 
-static void of_bus_default_count_cells(struct device_node *dev,
-				       int *addrc, int *sizec)
-{
-	if (addrc)
-		*addrc = of_n_addr_cells(dev);
-	if (sizec)
-		*sizec = of_n_size_cells(dev);
-}
-
-static void of_bus_count_cells(struct device_node *dev,
-			int *addrc, int *sizec)
-{
-	of_bus_default_count_cells(dev, addrc, sizec);
-}
-
 struct property *of_find_property(const struct device_node *np,
 				  const char *name, int *lenp)
 {
@@ -1543,48 +1528,22 @@ int of_set_property(struct device_node *np, const char *name, const void *val, i
 	return 0;
 }
 
-static u64 dt_mem_next_cell(int s, const __be32 **cellp)
-{
-	const __be32 *p = *cellp;
-
-	*cellp = p + s;
-	return of_read_number(p, s);
-}
-
 int of_add_memory(struct device_node *node, bool dump)
 {
-	int na, nc;
-	const __be32 *reg, *endp;
-	int len, r = 0, ret;
 	const char *device_type;
+	struct resource res;
+	int n = 0, ret;
 
 	ret = of_property_read_string(node, "device_type", &device_type);
-	if (ret)
+	if (ret || of_node_cmp(device_type, "memory"))
 		return -ENXIO;
 
-	if (of_node_cmp(device_type, "memory"))
-		return -ENXIO;
-
-	of_bus_count_cells(node, &na, &nc);
-
-	reg = of_get_property(node, "reg", &len);
-	if (!reg)
-		return -EINVAL;
-
-	endp = reg + (len / sizeof(__be32));
-
-	while ((endp - reg) >= (na + nc)) {
-		u64 base, size;
-
-		base = dt_mem_next_cell(na, &reg);
-		size = dt_mem_next_cell(nc, &reg);
-
-		if (size == 0)
+	while (!of_address_to_resource(node, n, &res)) {
+		if (!resource_size(&res))
 			continue;
-
-		of_add_memory_bank(node, dump, r, base, size);
-
-		r++;
+		of_add_memory_bank(node, dump, n,
+				res.start, resource_size(&res));
+		n++;
 	}
 
 	return 0;
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
