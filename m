Delivery-date: Mon, 08 Aug 2022 08:58:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKwi8-00FrHQ-MJ
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 08:58:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKwi9-0001J5-Df
	for lore@pengutronix.de; Mon, 08 Aug 2022 08:58:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VY+6A4IkiPGjHDyCV70TBHkFhgefOWn216SV4UIUFfw=; b=lENhkdBNXZHQg0Qa8T98g2i1Ba
	f+kbK7DxzV8jIttv2KtAu21ls8N/5kdsnZ6lrPAIze3NwArwRZBKg9BkGS3qYWHh89dR6m0Ocqgke
	o11wZzUqOUeetbWsMdR5ZyT+5eoebmwzJguBIhEMNvxziHDtWzOik5kXJYLVXXTQrJootw3SQ6yPs
	EXcrgodcQpWSV/0258+X2I+RYCag8xfXtrTbYKKLFWyGLsqzDHLLFNjgmVFXPu7qzf3FykzWVhoLC
	+G+kNL2pW8tFkEZG5PG+MDumsIEFsyEcIsU2rJHQYf60swcr4h67u/O64brZCBHnrYris87CvxJpM
	WPkJmdtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKwgx-00Bxx0-UQ; Mon, 08 Aug 2022 06:56:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKwgt-00Bxw7-Ik
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 06:56:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oKwgs-00017v-D6; Mon, 08 Aug 2022 08:56:42 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKwgp-002RmK-Dz; Mon, 08 Aug 2022 08:56:41 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKwgq-001v9D-8g; Mon, 08 Aug 2022 08:56:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Aug 2022 08:56:38 +0200
Message-Id: <20220808065639.453483-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220807_235643_632493_E4BB786D 
X-CRM114-Status: GOOD (  10.08  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] of: base: factor out duplication for property formatting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have the same chunk of code with minuscule difference in both
__of_print_nodes and __of_print_property. Factor it out to simplify
the follow-up commit.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 33 +++++++++++++++++++--------------
 1 file changed, 19 insertions(+), 14 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 101b2f74c74f..ac5a14f49919 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2006,6 +2006,22 @@ int of_property_read_string_helper(const struct device_node *np,
 	return i <= 0 ? -ENODATA : i;
 }
 
+static void __of_print_property_prefixed(const struct property *p, int indent,
+					 const char *prefix)
+{
+	unsigned length;
+
+	printf("%s%*s%s", prefix, indent * 8, "", p->name);
+
+	length = p->length;
+	if (length) {
+		printf(" = ");
+		of_print_property(of_property_get_value(p), length);
+	}
+
+	printf(";\n");
+}
+
 static int __of_print_nodes(struct device_node *node, int indent, const char *prefix)
 {
 	struct device_node *n;
@@ -2020,14 +2036,8 @@ static int __of_print_nodes(struct device_node *node, int indent, const char *pr
 
 	printf("%s%*s%s%s\n", prefix, indent * 8, "", node->name, node->name ? " {" : "{");
 
-	list_for_each_entry(p, &node->properties, list) {
-		printf("%s%*s%s", prefix, (indent + 1) * 8, "", p->name);
-		if (p->length) {
-			printf(" = ");
-			of_print_property(of_property_get_value(p), p->length);
-		}
-		printf(";\n");
-	}
+	list_for_each_entry(p, &node->properties, list)
+		__of_print_property_prefixed(p, indent + 1, prefix);
 
 	if (ctrlc())
 		return -EINTR;
@@ -2049,12 +2059,7 @@ void of_print_nodes(struct device_node *node, int indent)
 
 static void __of_print_property(struct property *p, int indent)
 {
-	printf("%*s%s", indent * 8, "", p->name);
-	if (p->length) {
-		printf(" = ");
-		of_print_property(of_property_get_value(p), p->length);
-	}
-	printf(";\n");
+	__of_print_property_prefixed(p, indent, "");
 }
 
 void of_print_properties(struct device_node *node)
-- 
2.30.2



