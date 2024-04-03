Delivery-date: Wed, 03 Apr 2024 10:08:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrvfa-005VIY-27
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 10:08:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrvfY-0000pc-Aa
	for lore@pengutronix.de; Wed, 03 Apr 2024 10:08:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qIEhIAn7QzVvUmLYdih/rmqj7kZLiuJWA326zZul+A0=; b=DZ+cQo9zzP8D5tjAEuElisr6fO
	LLvaykAU9aXYRQhDloR4MKm7CwBfylIREB+jdhF+GYJPVmzIMbZzj8W5Izoi/SdSz8r8hB0SHYOsP
	wtyPtsuH3UwEl+HNkzvuEygwBzPRLIWTmBd4+8Q5aBBRYJvBAzC+xIzyZVRdRJfrx8dEAPNxkZbgA
	SstirQyWaH6K78ZUgwUv2lwhJmDj1cNzIPQ5zuFObcNNWShjkakpmU37kl7kWHSMCh2XjhKUz52HH
	ZlSYmwUYFWwEgRSaUphL/6DOe5r9DE/X3GTJgQsQVocls3r7Rkj/u8YTPUd8VvJ+AaekKNxvsZYnX
	x4Pe1GZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvey-0000000Ekcu-2poH;
	Wed, 03 Apr 2024 08:07:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvep-0000000EkX5-2fgv
	for barebox@bombadil.infradead.org;
	Wed, 03 Apr 2024 08:07:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=qIEhIAn7QzVvUmLYdih/rmqj7kZLiuJWA326zZul+A0=; b=HjdrZAIy3IfJaU4uVMnqohya7s
	NIPc5VURyTdSny66uC5yb+RqHut2XUVVLOca3jrdMBqXKhdc5E2ZC90617YtbAsvxkEwGvRxOsssI
	1q2vfIqb6cXaH+U8GfgL5OfHpcLN4kjuGB6s9FIcxJpr3AHTY1Jq195hfzLg4zZgfxLxhVl5BEyLO
	21P+sJ7dvs+7lbi5UuMUwmwq8m6QT/Z7wYw11v+1Ln1h10XAnMAy5hSheJ+5GxW2k1E7ByUWgk7lI
	iU6HyV7qqjeDNbuFb2FKaUHyV5n4iBeIfS+/vOVyctRxiXMj3uIvgDCIKxrnf8I5qptaS7/chT2Hg
	gDpt0mUw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvel-000000044yX-2TsW
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 08:07:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrveE-0008Ao-6j; Wed, 03 Apr 2024 10:07:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrveD-00A8Px-QW; Wed, 03 Apr 2024 10:07:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrveD-00HCBb-2H;
	Wed, 03 Apr 2024 10:07:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  3 Apr 2024 10:07:01 +0200
Message-Id: <20240403080703.4098404-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_090740_115071_DA1C5BDB 
X-CRM114-Status: GOOD (  21.56  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] of: add of_property_read_variable_uxx_array()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds of_property_read_variable_uxx_array() which allow to read
arrays from properties with min/max size boundaries. Code is directly
taken from Linux.
We already had of_property_read_variable_u64_array(), but without
min/max arguments. This one is updated to match the Kernel code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 197 ++++++++++++++++++++++++++++++++++++++++++----
 include/of.h      |  40 +++++++++-
 2 files changed, 218 insertions(+), 19 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index b22959dabe..20cfa0274c 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -773,22 +773,24 @@ int of_match(struct device *dev, struct driver *drv)
 	return 0;
 }
 EXPORT_SYMBOL(of_match);
-
 /**
  * of_find_property_value_of_size
  *
  * @np:		device node from which the property value is to be read.
  * @propname:	name of the property to be searched.
- * @len:	requested length of property value
+ * @min:	minimum allowed length of property value
+ * @max:	maximum allowed length of property value (0 means unlimited)
+ * @len:	if !=NULL, actual length is written to here
  *
  * Search for a property in a device node and valid the requested size.
- * Returns the property value on success, -EINVAL if the property does not
- *  exist, -ENODATA if property does not have a value, and -EOVERFLOW if the
- * property data isn't large enough.
+ *
+ * Return: The property value on success, -EINVAL if the property does not
+ * exist, -ENODATA if property does not have a value, and -EOVERFLOW if the
+ * property data is too small or too large.
  *
  */
 static const void *of_find_property_value_of_size(const struct device_node *np,
-			const char *propname, u32 len)
+			const char *propname, u32 min, u32 max, size_t *len)
 {
 	struct property *prop = of_find_property(np, propname, NULL);
 	const void *value;
@@ -798,8 +800,13 @@ static const void *of_find_property_value_of_size(const struct device_node *np,
 	value = of_property_get_value(prop);
 	if (!value)
 		return ERR_PTR(-ENODATA);
-	if (len > prop->length)
+	if (prop->length < min)
 		return ERR_PTR(-EOVERFLOW);
+	if (max && prop->length > max)
+		return ERR_PTR(-EOVERFLOW);
+
+	if (len)
+		*len = prop->length;
 
 	return value;
 }
@@ -824,7 +831,8 @@ int of_property_read_u32_index(const struct device_node *np,
 				       u32 index, u32 *out_value)
 {
 	const u32 *val = of_find_property_value_of_size(np, propname,
-					((index + 1) * sizeof(*out_value)));
+					((index + 1) * sizeof(*out_value)),
+							0, NULL);
 
 	if (IS_ERR(val))
 		return PTR_ERR(val);
@@ -888,7 +896,8 @@ int of_property_read_u8_array(const struct device_node *np,
 			const char *propname, u8 *out_values, size_t sz)
 {
 	const u8 *val = of_find_property_value_of_size(np, propname,
-						(sz * sizeof(*out_values)));
+						(sz * sizeof(*out_values)),
+						       0, NULL);
 
 	if (IS_ERR(val))
 		return PTR_ERR(val);
@@ -921,7 +930,8 @@ int of_property_read_u16_array(const struct device_node *np,
 			const char *propname, u16 *out_values, size_t sz)
 {
 	const __be16 *val = of_find_property_value_of_size(np, propname,
-						(sz * sizeof(*out_values)));
+						(sz * sizeof(*out_values)),
+							   0, NULL);
 
 	if (IS_ERR(val))
 		return PTR_ERR(val);
@@ -953,7 +963,8 @@ int of_property_read_u32_array(const struct device_node *np,
 			       size_t sz)
 {
 	const __be32 *val = of_find_property_value_of_size(np, propname,
-						(sz * sizeof(*out_values)));
+						(sz * sizeof(*out_values)),
+							   0, NULL);
 
 	if (IS_ERR(val))
 		return PTR_ERR(val);
@@ -981,7 +992,7 @@ int of_property_read_u64(const struct device_node *np, const char *propname,
 			 u64 *out_value)
 {
 	const __be32 *val = of_find_property_value_of_size(np, propname,
-						sizeof(*out_value));
+						sizeof(*out_value), 0, NULL);
 
 	if (IS_ERR(val))
 		return PTR_ERR(val);
@@ -992,7 +1003,154 @@ int of_property_read_u64(const struct device_node *np, const char *propname,
 EXPORT_SYMBOL_GPL(of_property_read_u64);
 
 /**
- * of_property_read_u64_array - Find and read an array of 64 bit integers
+ * of_property_read_variable_u8_array - Find and read an array of u8 from a
+ * property, with bounds on the minimum and maximum array size.
+ *
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @out_values:	pointer to found values.
+ * @sz_min:	minimum number of array elements to read
+ * @sz_max:	maximum number of array elements to read, if zero there is no
+ *		upper limit on the number of elements in the dts entry but only
+ *		sz_min will be read.
+ *
+ * Search for a property in a device node and read 8-bit value(s) from
+ * it.
+ *
+ * dts entry of array should be like:
+ *  ``property = /bits/ 8 <0x50 0x60 0x70>;``
+ *
+ * Return: The number of elements read on success, -EINVAL if the property
+ * does not exist, -ENODATA if property does not have a value, and -EOVERFLOW
+ * if the property data is smaller than sz_min or longer than sz_max.
+ *
+ * The out_values is modified only if a valid u8 value can be decoded.
+ */
+int of_property_read_variable_u8_array(const struct device_node *np,
+					const char *propname, u8 *out_values,
+					size_t sz_min, size_t sz_max)
+{
+	size_t sz, count;
+	const u8 *val = of_find_property_value_of_size(np, propname,
+						(sz_min * sizeof(*out_values)),
+						(sz_max * sizeof(*out_values)),
+						&sz);
+
+	if (IS_ERR(val))
+		return PTR_ERR(val);
+
+	if (!sz_max)
+		sz = sz_min;
+	else
+		sz /= sizeof(*out_values);
+
+	count = sz;
+	while (count--)
+		*out_values++ = *val++;
+
+	return sz;
+}
+EXPORT_SYMBOL_GPL(of_property_read_variable_u8_array);
+
+/**
+ * of_property_read_variable_u16_array - Find and read an array of u16 from a
+ * property, with bounds on the minimum and maximum array size.
+ *
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @out_values:	pointer to found values.
+ * @sz_min:	minimum number of array elements to read
+ * @sz_max:	maximum number of array elements to read, if zero there is no
+ *		upper limit on the number of elements in the dts entry but only
+ *		sz_min will be read.
+ *
+ * Search for a property in a device node and read 16-bit value(s) from
+ * it.
+ *
+ * dts entry of array should be like:
+ *  ``property = /bits/ 16 <0x5000 0x6000 0x7000>;``
+ *
+ * Return: The number of elements read on success, -EINVAL if the property
+ * does not exist, -ENODATA if property does not have a value, and -EOVERFLOW
+ * if the property data is smaller than sz_min or longer than sz_max.
+ *
+ * The out_values is modified only if a valid u16 value can be decoded.
+ */
+int of_property_read_variable_u16_array(const struct device_node *np,
+					const char *propname, u16 *out_values,
+					size_t sz_min, size_t sz_max)
+{
+	size_t sz, count;
+	const __be16 *val = of_find_property_value_of_size(np, propname,
+						(sz_min * sizeof(*out_values)),
+						(sz_max * sizeof(*out_values)),
+						&sz);
+
+	if (IS_ERR(val))
+		return PTR_ERR(val);
+
+	if (!sz_max)
+		sz = sz_min;
+	else
+		sz /= sizeof(*out_values);
+
+	count = sz;
+	while (count--)
+		*out_values++ = be16_to_cpup(val++);
+
+	return sz;
+}
+EXPORT_SYMBOL_GPL(of_property_read_variable_u16_array);
+
+/**
+ * of_property_read_variable_u32_array - Find and read an array of 32 bit
+ * integers from a property, with bounds on the minimum and maximum array size.
+ *
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @out_values:	pointer to return found values.
+ * @sz_min:	minimum number of array elements to read
+ * @sz_max:	maximum number of array elements to read, if zero there is no
+ *		upper limit on the number of elements in the dts entry but only
+ *		sz_min will be read.
+ *
+ * Search for a property in a device node and read 32-bit value(s) from
+ * it.
+ *
+ * Return: The number of elements read on success, -EINVAL if the property
+ * does not exist, -ENODATA if property does not have a value, and -EOVERFLOW
+ * if the property data is smaller than sz_min or longer than sz_max.
+ *
+ * The out_values is modified only if a valid u32 value can be decoded.
+ */
+int of_property_read_variable_u32_array(const struct device_node *np,
+			       const char *propname, u32 *out_values,
+			       size_t sz_min, size_t sz_max)
+{
+	size_t sz, count;
+	const __be32 *val = of_find_property_value_of_size(np, propname,
+						(sz_min * sizeof(*out_values)),
+						(sz_max * sizeof(*out_values)),
+						&sz);
+
+	if (IS_ERR(val))
+		return PTR_ERR(val);
+
+	if (!sz_max)
+		sz = sz_min;
+	else
+		sz /= sizeof(*out_values);
+
+	count = sz;
+	while (count--)
+		*out_values++ = be32_to_cpup(val++);
+
+	return sz;
+}
+EXPORT_SYMBOL_GPL(of_property_read_variable_u32_array);
+
+/**
+ * of_property_read_variable_u64_array - Find and read an array of 64 bit integers
  * from a property.
  *
  * @np:		device node from which the property value is to be read.
@@ -1009,15 +1167,22 @@ EXPORT_SYMBOL_GPL(of_property_read_u64);
  */
 int of_property_read_variable_u64_array(const struct device_node *np,
 			       const char *propname, u64 *out_values,
-			       size_t sz)
+			       size_t sz_min, size_t sz_max)
 {
-	size_t count;
+	size_t sz, count;
 	const __be32 *val = of_find_property_value_of_size(np, propname,
-						(sz * sizeof(*out_values)));
+						(sz_min * sizeof(*out_values)),
+						(sz_max * sizeof(*out_values)),
+						&sz);
 
 	if (IS_ERR(val))
 		return PTR_ERR(val);
 
+	if (!sz_max)
+		sz = sz_min;
+	else
+		sz /= sizeof(*out_values);
+
 	count = sz;
 	while (count--) {
 		*out_values++ = of_read_number(val, 2);
diff --git a/include/of.h b/include/of.h
index 9eef6d7f13..dbdc4a524a 100644
--- a/include/of.h
+++ b/include/of.h
@@ -240,11 +240,22 @@ extern int of_property_read_u32_array(const struct device_node *np,
 				      size_t sz);
 extern int of_property_read_u64(const struct device_node *np,
 				const char *propname, u64 *out_value);
-
+extern int of_property_read_variable_u8_array(const struct device_node *np,
+					      const char *propname, u8 *out_values,
+					      size_t sz_min, size_t sz_max);
+extern int of_property_read_variable_u16_array(const struct device_node *np,
+					       const char *propname, u16 *out_values,
+					       size_t sz_min, size_t sz_max);
+extern int of_property_read_variable_u32_array(const struct device_node *np,
+					       const char *propname,
+					       u32 *out_values,
+					       size_t sz_min,
+					       size_t sz_max);
 extern int of_property_read_variable_u64_array(const struct device_node *np,
 					const char *propname,
 					u64 *out_values,
-					size_t sz);
+					size_t sz_min,
+					size_t sz_max);
 
 extern int of_property_read_string(struct device_node *np,
 				   const char *propname,
@@ -669,6 +680,29 @@ static inline int of_property_read_u64(const struct device_node *np,
 	return -ENOSYS;
 }
 
+static inline  int of_property_read_variable_u8_array(const struct device_node *np,
+					      const char *propname, u8 *out_values,
+					      size_t sz_min, size_t sz_max)
+{
+	return -ENOSYS;
+}
+
+static inline  int of_property_read_variable_u16_array(const struct device_node *np,
+					       const char *propname, u16 *out_values,
+					       size_t sz_min, size_t sz_max)
+{
+	return -ENOSYS;
+}
+
+static inline  int of_property_read_variable_u32_array(const struct device_node *np,
+					       const char *propname,
+					       u32 *out_values,
+					       size_t sz_min,
+					       size_t sz_max)
+{
+	return -ENOSYS;
+}
+
 static inline int of_property_read_variable_u64_array(const struct device_node *np,
 					const char *propname,
 					u64 *out_values,
@@ -1166,7 +1200,7 @@ static inline int of_property_read_u64_array(const struct device_node *np,
 					     u64 *out_values, size_t sz)
 {
 	int ret = of_property_read_variable_u64_array(np, propname, out_values,
-						      sz);
+						      sz, 0);
 	if (ret >= 0)
 		return 0;
 	else
-- 
2.39.2



