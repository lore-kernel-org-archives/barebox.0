Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f47.google.com ([74.125.83.47])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbfOd-0000YW-3b
 for barebox@lists.infradead.org; Sun, 12 May 2013 23:09:39 +0000
Received: by mail-ee0-f47.google.com with SMTP id t10so608282eei.20
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 16:09:17 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 13 May 2013 01:09:06 +0200
Message-Id: <1368400146-30443-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH] of: add ranges address translation for default bus
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This patch adds address translation for default bus types. It has been
shamelessly ported from Linux device tree address translation with the
following exceptions:
- only default bus map and translate are supported
- of_bus has not been ported
- check for #size-cells > 0 has been removed

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |  131 ++++++++++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 114 insertions(+), 17 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 8383549..cad7baa 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -28,6 +28,12 @@
 #include <linux/amba/bus.h>
 #include <linux/err.h>
 
+/* Max address size we deal with */
+#define OF_MAX_ADDR_CELLS	4
+#define OF_CHECK_ADDR_COUNT(na)	((na) > 0 && (na) <= OF_MAX_ADDR_CELLS)
+/* do not check for #size-cells > 0 as no size cells is perfectly valid */
+#define OF_CHECK_COUNTS(na, ns)	(OF_CHECK_ADDR_COUNT(na))
+
 /**
  * struct alias_prop - Alias property in 'aliases' node
  * @link:	List node to link the structure in aliases_lookup list
@@ -212,28 +218,119 @@ int of_alias_get_id(struct device_node *np, const char *stem)
 }
 EXPORT_SYMBOL_GPL(of_alias_get_id);
 
-u64 of_translate_address(struct device_node *node, const __be32 *in_addr)
+static u64 of_bus_default_map(__be32 *addr, const __be32 *range,
+			      int na, int ns, int pna)
 {
-	struct property *p;
-	u64 addr = be32_to_cpu(*in_addr);
+	u64 cp, s, da;
+
+	cp = of_read_number(range, na);
+	s = of_read_number(range + na + pna, ns);
+	da = of_read_number(addr, na);
+
+	/*
+	 * If #address-cells > 2 we assume the mapping does not specify a
+	 * physical address. Rather, the address specifies an identifier
+	 * that must match exactly.
+	 */
+	if (na > 2 && memcmp(range, addr, 4 * na) != 0)
+		return OF_BAD_ADDR;
+
+	/* check if address is outside mapping range */
+	if (da < cp || da >= (cp + s))
+		return OF_BAD_ADDR;
+	return da - cp;
+}
+
+static int of_bus_default_translate(__be32 *addr, u64 offset, int na)
+{
+	u64 a = of_read_number(addr, na);
+	memset(addr, 0, 4 * na);
+	a += offset;
+	if (na > 1)
+		addr[na - 2] = cpu_to_be32(a >> 32);
+	addr[na - 1] = cpu_to_be32(a & 0xffffffffu);
+	return 0;
+}
+
+static int of_translate_one(struct device_node *parent,
+			    __be32 *addr, int na, int ns, int pna,
+			    const char *rprop)
+{
+	const __be32 *ranges;
+	unsigned int rlen;
+	int rone;
+	u64 offset = OF_BAD_ADDR;
+
+	ranges = of_get_property(parent, rprop, &rlen);
+	if (!ranges)
+		return 1;
+
+	/* walk through ranges */
+	rlen /= 4;
+	rone = na + pna + ns;
+	for (; rlen >= rone; rlen -= rone, ranges += rone) {
+		offset = of_bus_default_map(addr, ranges, na, ns, pna);
+		if (offset != OF_BAD_ADDR)
+			break;
+	}
+	if (offset == OF_BAD_ADDR)
+		return 1;
+
+	memcpy(addr, ranges + na, 4 * pna);
+	/* translate into parent address space */
+	return of_bus_default_translate(addr, offset, pna);
+}
+
+u64 __of_translate_address(struct device_node *node,
+			   const __be32 *in_addr, const char *rprop)
+{
+	struct device_node *parent = node->parent;
+	__be32 addr[OF_MAX_ADDR_CELLS];
+	int na, ns, pna, pns;
+	u64 result = OF_BAD_ADDR;
+
+	/* count address cells & copy address locally */
+	of_bus_count_cells(node, &na, &ns);
+	if (!OF_CHECK_COUNTS(na, ns)) {
+		printk(KERN_ERR "of: bad cell count (%d, %d) for %s\n",
+		       na, ns, node->full_name);
+		return OF_BAD_ADDR;
+	}
+	memcpy(addr, in_addr, na * 4);
 
 	while (1) {
-		int na, nc;
-
-		if (!node->parent)
-			return addr;
-
-		node = node->parent;
-		p = of_find_property(node, "ranges");
-		if (!p && node->parent)
-			return OF_BAD_ADDR;
-		of_bus_count_cells(node, &na, &nc);
-		if (na != 1 || nc != 1) {
-			printk("%s: #size-cells != 1 or #address-cells != 1 "
-					"currently not supported\n", node->name);
-			return OF_BAD_ADDR;
+		node = parent;
+		parent = node->parent;
+
+		/* exit at root node */
+		if (!parent) {
+			result = of_read_number(addr, na);
+			break;
 		}
+
+		/* get new parent bus and counts */
+		of_bus_count_cells(node, &pna, &pns);
+		if (!OF_CHECK_COUNTS(pna, pns)) {
+			printk(KERN_ERR "of: bad cell count (%d, %d) for %s\n",
+			       pna, pns, node->full_name);
+			break;
+		}
+
+		/* apply bus translation */
+		if (of_translate_one(node, addr, na, ns, pna, rprop))
+			break;
+
+		/* ascend device tree */
+		na = pna;
+		ns = pns;
 	}
+
+	return result;
+}
+
+u64 of_translate_address(struct device_node *node, const __be32 *in_addr)
+{
+	return __of_translate_address(node, in_addr, "ranges");
 }
 EXPORT_SYMBOL(of_translate_address);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
