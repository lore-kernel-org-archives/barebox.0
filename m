Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzO-0000cT-B9
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:50 +0100
Message-Id: <1361909936-2665-24-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
References: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 23/29] of: Add of property write functions for u32
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   25 +++++++++++++++++++++++++
 include/of.h      |   11 +++++++++++
 2 files changed, 36 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 8138a91..6b12979 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -349,6 +349,31 @@ int of_property_read_u32_array(const struct device_node *np,
 }
 EXPORT_SYMBOL_GPL(of_property_read_u32_array);
 
+int of_property_write_u32_array(struct device_node *np,
+				const char *propname, const u32 *values,
+				size_t sz)
+{
+	struct property *prop = of_find_property(np, propname);
+	__be32 *val;
+
+	if (!prop)
+		prop = of_new_property(np, propname, NULL, 0);
+	if (!prop)
+		return -ENOMEM;
+
+	free(prop->value);
+
+	prop->value = malloc(sizeof(__be32) * sz);
+	if (!prop->value)
+		return -ENOMEM;
+
+	val = prop->value;
+
+	while (sz--)
+		*val++ = cpu_to_be32(*values++);
+	return 0;
+}
+
 /**
  * of_parse_phandles_with_args - Find a node pointed by phandle in a list
  * @np:		pointer to a device tree node containing a list
diff --git a/include/of.h b/include/of.h
index 1db546c..b2f9ca7 100644
--- a/include/of.h
+++ b/include/of.h
@@ -94,6 +94,17 @@ static inline int of_property_read_u32(const struct device_node *np,
 	return of_property_read_u32_array(np, propname, out_value, 1);
 }
 
+int of_property_write_u32_array(struct device_node *np,
+				const char *propname, const u32 *values,
+				size_t sz);
+
+static inline int of_property_write_u32(struct device_node *np,
+					const char *propname,
+					u32 value)
+{
+	return of_property_write_u32_array(np, propname, &value, 1);
+}
+
 const void *of_get_property(const struct device_node *np, const char *name,
 			 int *lenp);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
