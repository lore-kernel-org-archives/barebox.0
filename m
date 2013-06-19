Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x234.google.com ([2a00:1450:4008:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEPH-0004yl-E5
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:10:28 +0000
Received: by mail-bk0-f52.google.com with SMTP id d7so2223277bkh.11
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 02:10:01 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 19 Jun 2013 11:09:32 +0200
Message-Id: <1371632991-1504-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 03/22] OF: base: also update property length on
 of_property_write_u32
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Current implementation of of_property_write_u32 does free old property
values and allocates new values depending on the size passed. While
copying the new values to the property, corresponding length is not
set. This makes of_property_write_u32 set the length of the new property
values and also adds a API header describing the function.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |   20 ++++++++++++++++++--
 1 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index ab0f4cd..616b93d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -383,6 +383,21 @@ int of_property_read_u32_array(const struct device_node *np,
 }
 EXPORT_SYMBOL_GPL(of_property_read_u32_array);
 
+/**
+ * of_property_write_u32_array - Write an array of u32 to a property. If
+ * the property does not exist, it will be created and appended to the given
+ * device node.
+ *
+ * @np:		device node to which the property value is to be written.
+ * @propname:	name of the property to be written.
+ * @values:	pointer to array elements to write.
+ * @sz:		number of array elements to write.
+ *
+ * Search for a property in a device node and write 32-bit value(s) to
+ * it. If the property does not exist, it will be created and appended to
+ * the device node. Returns 0 on success, -ENOMEM if the property or array
+ * of elements cannot be created.
+ */
 int of_property_write_u32_array(struct device_node *np,
 				const char *propname, const u32 *values,
 				size_t sz)
@@ -397,14 +412,15 @@ int of_property_write_u32_array(struct device_node *np,
 
 	free(prop->value);
 
-	prop->value = malloc(sizeof(__be32) * sz);
+	prop->length = sizeof(*val) * sz;
+	prop->value = malloc(prop->length);
 	if (!prop->value)
 		return -ENOMEM;
 
 	val = prop->value;
-
 	while (sz--)
 		*val++ = cpu_to_be32(*values++);
+
 	return 0;
 }
 
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
