Delivery-date: Mon, 05 Sep 2022 17:44:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVEGp-007f89-1O
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:44:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVEGp-0003fa-7k
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:44:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=W2Jn6gL0/n2B8z45XR6bJeJYzGaP6UrCH/zzQlMUXMc=; b=h2xKfj3hvnU7wCxW9BXURnohll
	Y11um4Pfq2+cPFJz/oIcZPQTZOpzhRy7kOu277v8ftEfNeUggsUZ6t7HsgDMt/UPleRRlGQ9BHUwp
	Rdy63tX2o9psi1XdI1UXR92BJsb8/HAFjOajaPWVhCJpftTOnHEio5l5/LbmxwSyBhw88YS/J5lGM
	f4b7rQM2qFYLOy32kJcJIDyx0/OICZme7LpLyFsnUxmBmCvTB0DRCehYNzlIy38pkYsoc/7uR4mxN
	uw4GwPJkn5P/UTRXk90P9maZxbA3YoflB1a4260kJC1fcRyrJRBcwp3qRvHxpRrty4EY9KVlpQtd1
	GDDKbdsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVEFO-006A4z-SX; Mon, 05 Sep 2022 15:42:50 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9T9-000ReH-GQ
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 10:36:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9T8-0005w9-1o; Mon, 05 Sep 2022 12:36:42 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9T5-0042k6-Bm; Mon, 05 Sep 2022 12:36:41 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9T6-007LSB-DG; Mon, 05 Sep 2022 12:36:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 12:36:39 +0200
Message-Id: <20220905103639.1750714-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_033643_577530_58C08356 
X-CRM114-Status: GOOD (  13.87  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of: implement of_rename_property()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It's often desirable to have the same barebox binary for multiple
variants. DT-level differences between the variants are often handled
by having extra device tree nodes that are disabled by default and
patched as appropriate by board code. It can be useful to have a finer
granularity for patching though, that covers only a select property, e.g.:

   usbotg1 {
	vbus-supply = <&reg_vbus_common>;
	vendor,specialvariant-vbus-supply = <&reg_vbus_specialvariant>;
   };

The new of_rename_property allows board code to easily activate the
alternative vbus supply on the specialvariant:

  of_rename_property(np, "vendor,specialvariant-vbus-supply",
			 "vbus-supply");

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c             | 16 ++++++++++++++++
 include/of.h                  |  8 ++++++++
 test/self/of_manipulation.c   | 10 ++++++++++
 test/self/of_manipulation.dts |  6 ++++--
 4 files changed, 38 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 6a51dd71793d..212b226eb55c 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2301,6 +2301,22 @@ void of_delete_property(struct property *pp)
 	free(pp);
 }
 
+struct property *of_rename_property(struct device_node *np,
+				    const char *old_name, const char *new_name)
+{
+	struct property *pp;
+
+	pp = of_find_property(np, old_name, NULL);
+	if (!pp)
+		return NULL;
+
+	of_property_write_bool(np, new_name, false);
+
+	free(pp->name);
+	pp->name = xstrdup(new_name);
+	return pp;
+}
+
 /**
  * of_set_property - create a property for a given node
  * @node - the node
diff --git a/include/of.h b/include/of.h
index 29df7d912b33..153e75d3e51d 100644
--- a/include/of.h
+++ b/include/of.h
@@ -143,6 +143,8 @@ extern struct property *of_new_property_const(struct device_node *node,
 extern struct property *__of_new_property(struct device_node *node,
 					  const char *name, void *data, int len);
 extern void of_delete_property(struct property *pp);
+extern struct property *of_rename_property(struct device_node *np,
+					   const char *old_name, const char *new_name);
 
 extern struct device_node *of_find_node_by_name(struct device_node *from,
 	const char *name);
@@ -550,6 +552,12 @@ static inline void of_delete_property(struct property *pp)
 {
 }
 
+static inline struct property *of_rename_property(struct device_node *np,
+						  const char *old_name, const char *new_name)
+{
+	return NULL;
+}
+
 static inline int of_property_read_u32_index(const struct device_node *np,
 				const char *propname, u32 index, u32 *out_value)
 {
diff --git a/test/self/of_manipulation.c b/test/self/of_manipulation.c
index 6eb6062e126b..7e30a60ca687 100644
--- a/test/self/of_manipulation.c
+++ b/test/self/of_manipulation.c
@@ -57,6 +57,16 @@ static void test_of_basics(struct device_node *root)
 	of_property_write_bool(node1, "property1", true);
 
 	assert_equal(node1, node2);
+
+	of_property_write_bool(node2, "property1", false);
+	of_property_write_u32(node2, "property1", 1);
+	of_property_write_u32(node2, "property2", 2);
+
+	of_property_write_u32(node1, "property3", 1);
+	of_property_write_u32(node1, "property2", 2);
+	of_rename_property(node1, "property3", "property1");
+
+	assert_equal(node1, node2);
 }
 
 static void test_of_property_strings(struct device_node *root)
diff --git a/test/self/of_manipulation.dts b/test/self/of_manipulation.dts
index a69d944c1eb5..2cc6773fa98e 100644
--- a/test/self/of_manipulation.dts
+++ b/test/self/of_manipulation.dts
@@ -4,12 +4,14 @@
 
 / {
 	node1 {
-		property1;
+		property1 = <1>;
+		property2 = <2>;
 		node21 { };
 	};
 
 	node2 {
-		property1;
+		property1 = <1>;
+		property2 = <2>;
 		node21 { };
 	};
 
-- 
2.30.2



