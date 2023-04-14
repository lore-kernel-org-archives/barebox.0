Delivery-date: Fri, 14 Apr 2023 20:37:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnOIK-003aFv-Ko
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 20:37:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnOIK-0004zJ-FD
	for lore@pengutronix.de; Fri, 14 Apr 2023 20:37:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GPzRP/LPVAlQzoH7t/GGhVwvr2t6XqEl2KFO7qBBtCA=; b=VB04gFXYS9ABLK94A1gSR+ftV7
	p3FlKRD+NkYv+XESD6lkA0zH1WqSrpcPRqJoGndGtBFPtFBvFL4/FBC5A51ISVPS+RbTRhwU6JDmV
	TRHluhAf+2Z/3Gond5mmYWsgDDoK/PtdhdFeuYAxT27ATjSAJguYRIOHYB2z6IEFkvAcdAPMz22l5
	gi4jgrc5qo2ejHbzWGLFuHy9my7LEzca8OjdndGfRqWG+MW4h2B0Z8ORpwTDMsi5klhkaRI0Jc0XC
	SQ0CuGN22+6dzDEnEjLONUr1vQ6AtbGqYTbtoz0G3li4VceJKDVLiU0vApwuB/hH+/ui9w1GC4tBj
	25n70zyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnOH4-00ANUk-3B;
	Fri, 14 Apr 2023 18:35:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnOH1-00ANTP-0Z
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 18:35:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pnOGz-0004on-LG; Fri, 14 Apr 2023 20:35:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnOGy-00BG4F-8X; Fri, 14 Apr 2023 20:35:48 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnOGx-008Yhu-KJ; Fri, 14 Apr 2023 20:35:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Apr 2023 20:35:44 +0200
Message-Id: <20230414183545.2039170-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_113551_234331_3CECDD37 
X-CRM114-Status: GOOD (  12.71  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] of: implement of_copy_property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For use in fixups, it can be useful to copy a property verbatim from the
barebox DT to the kernel DT. Add a helper that does just that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c           | 16 ++++++++++++++++
 include/of.h                | 10 ++++++++++
 test/self/of_manipulation.c |  2 +-
 3 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 01bb7e3906b4..5644e8e9534d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2318,6 +2318,22 @@ struct property *of_rename_property(struct device_node *np,
 	return pp;
 }
 
+struct property *of_copy_property(const struct device_node *src,
+				  const char *propname,
+				  struct device_node *dst)
+{
+	struct property *prop;
+
+	prop = of_find_property(src, propname, NULL);
+	if (!prop)
+		return NULL;
+
+	return of_new_property(dst, propname,
+			       of_property_get_value(prop), prop->length);
+}
+EXPORT_SYMBOL_GPL(of_copy_property);
+
+
 /**
  * of_set_property - create a property for a given node
  * @node - the node
diff --git a/include/of.h b/include/of.h
index 22358f5579ec..4b0266fd3118 100644
--- a/include/of.h
+++ b/include/of.h
@@ -152,6 +152,9 @@ extern struct property *__of_new_property(struct device_node *node,
 extern void of_delete_property(struct property *pp);
 extern struct property *of_rename_property(struct device_node *np,
 					   const char *old_name, const char *new_name);
+extern struct property *of_copy_property(const struct device_node *src,
+					 const char *propname,
+					 struct device_node *dst);
 
 extern struct device_node *of_find_node_by_name(struct device_node *from,
 	const char *name);
@@ -576,6 +579,13 @@ static inline struct property *__of_new_property(struct device_node *node,
 	return NULL;
 }
 
+static inline struct property *of_copy_property(const struct device_node *src,
+						const char *propname,
+						struct device_node *dst)
+{
+	return NULL;
+}
+
 static inline void of_delete_property(struct property *pp)
 {
 }
diff --git a/test/self/of_manipulation.c b/test/self/of_manipulation.c
index f7f95fa269af..64913ac1eab8 100644
--- a/test/self/of_manipulation.c
+++ b/test/self/of_manipulation.c
@@ -63,7 +63,7 @@ static void test_of_basics(struct device_node *root)
 	of_property_write_u32(node2, "property2", 2);
 
 	of_property_write_u32(node1, "property3", 1);
-	of_property_write_u32(node1, "property2", 2);
+	of_copy_property(node2, "property2", node1);
 	of_rename_property(node1, "property3", "property1");
 
 	assert_equal(node1, node2);
-- 
2.39.2



