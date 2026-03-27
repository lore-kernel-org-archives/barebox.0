Delivery-date: Fri, 27 Mar 2026 14:35:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w67Lv-005jm0-1u
	for lore@lore.pengutronix.de;
	Fri, 27 Mar 2026 14:35:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w67Lu-0007Ra-TO
	for lore@pengutronix.de; Fri, 27 Mar 2026 14:35:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WOSB5073df+s2r8Fv8SpMf34/DKNVUuHu+sBvD7HpAY=; b=X6hWFHRKEBVUODDUcCZM59rlvT
	H7lBk9WEYdBLa9eYQTTiOlGLBWTcIhVMU9NCzaY2iGTQueRVa8GwuFvkBrFMb7uCT4Guj/hDAMzSt
	0TTi41xl4gfHMA1q52StLGN0z7Eu2zYgThr1hEAVhW2Q4/6OgCf434GeHe64y5gdKVhmzs6P1wLJj
	QKA2DunNYPG4J2ojDe4SEnbafiWwq9KzZq5Fd/Gwv0CxlhgN+O/WiUa4cC1agkKIV45zwJzv0S4qt
	vV9mwrqU/xbVeyJoDOd62G7eiOy6nJ4G9eqvw1clLPpV9uhA3yWqlZdsRIVYv+uU4uPJDf6TeLDTb
	c03/yu6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67LN-00000007S8p-3OkS;
	Fri, 27 Mar 2026 13:35:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67LH-00000007S52-3kH7
	for barebox@lists.infradead.org;
	Fri, 27 Mar 2026 13:35:18 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w67LE-0006yD-Aj; Fri, 27 Mar 2026 14:35:12 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 27 Mar 2026 14:34:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260327-v2026-02-0-topic-sconfig_console-v7-1-67a52ff65ed3@pengutronix.de>
References: <20260327-v2026-02-0-topic-sconfig_console-v7-0-67a52ff65ed3@pengutronix.de>
In-Reply-To: <20260327-v2026-02-0-topic-sconfig_console-v7-0-67a52ff65ed3@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_063515_971736_B164C81C 
X-CRM114-Status: GOOD (  17.39  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v7 1/7] of: add of_property_write_string_array()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Helper function to write an array of string into a property.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 drivers/of/base.c             | 43 +++++++++++++++++++++++++++++++++++++++++++
 include/of.h                  |  3 +++
 test/self/of_manipulation.c   | 14 +++++++++++++-
 test/self/of_manipulation.dts |  5 +++++
 4 files changed, 64 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 460b5e2f4b..376a2ac6a8 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1570,6 +1570,49 @@ int of_property_write_u64_array(struct device_node *np,
 	return 0;
 }
 
+/**
+ * of_property_write_string_array - Write strings to a property. If
+ * the property does not exist, it will be created and appended to the given
+ * device node.
+ *
+ * @np:		device node to which the property value is to be written.
+ * @propname:	name of the property to be written.
+ * @values:	pointer to array elements to write.
+ * @sz:		number of array elements to write.
+ *
+ * Search for a property in a device node and write a string to
+ * it. If the property does not exist, it will be created and appended to
+ * the device node. Returns 0 on success, -ENOMEM if the property or array
+ * of elements cannot be created, -EINVAL if no strings specified.
+ */
+int of_property_write_string_array(struct device_node *np,
+				   const char *propname, const char **values,
+				   size_t sz)
+{
+	char *buf = NULL, *next;
+	size_t len = 0;
+	int ret = 0, i;
+
+	for (i = 0; i < sz; i++)
+		len += strlen(values[i]) + 1;
+
+	if (!len)
+		return -EINVAL;
+
+	buf = malloc(len);
+	if (!buf)
+		return -ENOMEM;
+
+	next = buf;
+
+	for (i = 0; i < sz; i++)
+		next = stpcpy(next, values[i]) + 1;
+
+	ret = of_set_property(np, propname, buf, len, 1);
+	free(buf);
+	return ret;
+}
+
 /**
  * of_property_write_strings - Write strings to a property. If
  * the property does not exist, it will be created and appended to the given
diff --git a/include/of.h b/include/of.h
index ba8d1e358d..34439ee763 100644
--- a/include/of.h
+++ b/include/of.h
@@ -310,6 +310,9 @@ extern int of_property_write_string(struct device_node *np, const char *propname
 				    const char *value);
 extern int of_property_write_strings(struct device_node *np, const char *propname,
 				    ...) __attribute__((__sentinel__));
+int of_property_write_string_array(struct device_node *np,
+				   const char *propname, const char **values,
+				   size_t sz);
 int of_property_sprintf(struct device_node *np, const char *propname, const char *fmt, ...)
 	__printf(3, 4);
 
diff --git a/test/self/of_manipulation.c b/test/self/of_manipulation.c
index 8d645b1137..faf948a17b 100644
--- a/test/self/of_manipulation.c
+++ b/test/self/of_manipulation.c
@@ -71,13 +71,19 @@ static void test_of_basics(struct device_node *root)
 
 static void test_of_property_strings(struct device_node *root)
 {
-	struct device_node *np1, *np2, *np3, *np4;
+	struct device_node *np1, *np2, *np3, *np4, *np5;
 	char properties[] = "ayy\0bee\0sea";
+	static const char * const prop_array[] = {
+		"ayy",
+		"bee\0\0\0",
+		"sea\0",
+	};
 
 	np1 = of_new_node(root, "np1");
 	np2 = of_new_node(root, "np2");
 	np3 = of_new_node(root, "np3");
 	np4 = of_new_node(root, "np4");
+	np5 = of_new_node(root, "np5");
 
 	of_property_sprintf(np1, "property-single", "%c%c%c", 'a', 'y', 'y');
 
@@ -108,6 +114,12 @@ static void test_of_property_strings(struct device_node *root)
 	of_prepend_property(np4, "property-multi", "ayy", 4);
 
 	assert_equal(np3, np4);
+
+	of_property_write_string_array(np5, "property-single", prop_array, 1);
+
+	of_property_write_string_array(np5, "property-multi", prop_array, 3);
+
+	assert_equal(np4, np5);
 }
 
 static void __init test_of_manipulation(void)
diff --git a/test/self/of_manipulation.dts b/test/self/of_manipulation.dts
index 2cc6773fa9..7a1fb1217d 100644
--- a/test/self/of_manipulation.dts
+++ b/test/self/of_manipulation.dts
@@ -34,4 +34,9 @@ np4 {
 		property-single = "ayy";
 		property-multi = "ayy", "bee", "sea";
 	};
+
+	np5 {
+		property-single = "ayy";
+		property-multi = "ayy", "bee", "sea";
+	};
 };

-- 
2.47.3



