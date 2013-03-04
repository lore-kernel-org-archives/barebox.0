Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5d-0005q8-PO
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:28 +0100
Message-Id: <1362390820-10333-26-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 25/37] of: Add of property write functions for u32
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   25 +++++++++++++++++++++++++
 include/of.h      |   11 +++++++++++
 2 files changed, 36 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index b9db261..9f9d9a0 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -350,6 +350,31 @@ int of_property_read_u32_array(const struct device_node *np,
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
index fe9f65d..eeea016 100644
--- a/include/of.h
+++ b/include/of.h
@@ -124,6 +124,17 @@ static inline int of_property_read_u32(const struct device_node *np,
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
