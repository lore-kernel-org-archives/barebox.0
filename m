Delivery-date: Fri, 09 Sep 2022 09:50:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWYmn-00Beby-OW
	for lore@lore.pengutronix.de; Fri, 09 Sep 2022 09:50:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWYmn-0006ax-C4
	for lore@pengutronix.de; Fri, 09 Sep 2022 09:50:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=z9n1sP4QOg7+JSAjPZ99c6zQ3I2W5qeo7jAkYSwbGjc=; b=J+FVuel37KfV15j9ZhslDUWCpq
	cETj4WxVH7uIEoO1RFtad720bqonJP68eDpgSFUjR3gPQef68x+wKGqrh0nUk1dsBoMblO8bvBJda
	MGLAZ95shcthrTtvhGInDFnaLNXQ9hFo53TDCMxiCAAeAhMWuIjf6gQHxCY+aXpC1rwhoEa1PaAve
	Qm/RaghXC3f9iVF0RXqIINeZLgnUmWITqJrMm/8Zkos0SlVnvctMiwIrEUA/gHBC+C+HoAkNC8fXj
	OfmYx5fZ/K7CUk/RicX1IiijLO7ovxIrFr8FY5WWkFA9OHzU3vqJgJjUvJXAIolYWS8ETCbeqb02t
	tq0aJyFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWYlK-00E8Cj-LB; Fri, 09 Sep 2022 07:49:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWYdE-00E3Ah-JY
	for barebox@lists.infradead.org; Fri, 09 Sep 2022 07:40:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oWYdB-0004lE-Gd; Fri, 09 Sep 2022 09:40:53 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oWYd8-004mCY-Ue; Fri, 09 Sep 2022 09:40:52 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oWYdA-00GGG3-03; Fri, 09 Sep 2022 09:40:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Sep 2022 09:40:50 +0200
Message-Id: <20220909074050.3875659-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_004056_700513_B2C0CEE7 
X-CRM114-Status: GOOD (  13.29  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of: implement of_prepend_property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like of_append_property for adding at the end of properties, implement
of_prepend_property for placing data into the front.

This is especially useful to fixup most-specific compatibles into
existing nodes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c           | 35 +++++++++++++++++++++++++++++++++++
 include/of.h                |  8 ++++++++
 test/self/of_manipulation.c |  2 +-
 3 files changed, 44 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 212b226eb55c..e208949b08bd 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2378,6 +2378,41 @@ int of_append_property(struct device_node *np, const char *name, const void *val
 	return 0;
 }
 
+int of_prepend_property(struct device_node *np, const char *name, const void *val, int len)
+{
+	struct property *pp;
+	int orig_len;
+	const void *orig_buf;
+	void *buf;
+
+	if (!np)
+		return -ENOENT;
+
+	pp = of_find_property(np, name, NULL);
+	if (!pp) {
+		of_new_property(np, name, val, len);
+		return 0;
+	}
+
+	orig_len = pp->length;
+	buf = realloc(pp->value, orig_len + len);
+	if (!buf)
+		return -ENOMEM;
+
+	orig_buf = pp->value_const ?: buf;
+	if (orig_buf) {
+		memmove(buf + len, orig_buf, orig_len);
+		pp->value_const = NULL;
+	}
+
+	memcpy(buf, val, len);
+
+	pp->value = buf;
+	pp->length += len;
+
+	return 0;
+}
+
 int of_property_sprintf(struct device_node *np,
 			const char *propname, const char *fmt, ...)
 {
diff --git a/include/of.h b/include/of.h
index 153e75d3e51d..052d5fcad84c 100644
--- a/include/of.h
+++ b/include/of.h
@@ -135,6 +135,8 @@ extern int of_set_property(struct device_node *node, const char *p,
 			const void *val, int len, int create);
 extern int of_append_property(struct device_node *np, const char *p,
 			      const void *val, int len);
+extern int of_prepend_property(struct device_node *np, const char *name,
+			       const void *val, int len);
 extern struct property *of_new_property(struct device_node *node,
 				const char *name, const void *data, int len);
 extern struct property *of_new_property_const(struct device_node *node,
@@ -536,6 +538,12 @@ static inline int of_append_property(struct device_node *np, const char *p,
 	return -ENOSYS;
 }
 
+static inline int of_prepend_property(struct device_node *np, const char *name,
+				      const void *val, int len)
+{
+	return -ENOSYS;
+}
+
 static inline struct property *of_new_property(struct device_node *node,
 				const char *name, const void *data, int len)
 {
diff --git a/test/self/of_manipulation.c b/test/self/of_manipulation.c
index 7e30a60ca687..f7f95fa269af 100644
--- a/test/self/of_manipulation.c
+++ b/test/self/of_manipulation.c
@@ -103,9 +103,9 @@ static void test_of_property_strings(struct device_node *root)
 
 	of_append_property(np4, "property-single", "ayy", 4);
 
-	of_append_property(np4, "property-multi", "ayy", 4);
 	of_append_property(np4, "property-multi", "bee", 4);
 	of_append_property(np4, "property-multi", "sea", 4);
+	of_prepend_property(np4, "property-multi", "ayy", 4);
 
 	assert_equal(np3, np4);
 }
-- 
2.30.2



