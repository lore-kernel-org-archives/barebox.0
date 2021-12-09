Delivery-date: Thu, 09 Dec 2021 11:59:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvH8k-0010iG-N6
	for lore@lore.pengutronix.de; Thu, 09 Dec 2021 11:59:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvH8j-0000we-6F
	for lore@pengutronix.de; Thu, 09 Dec 2021 11:59:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AD7ipE38xVAB9UpUj1TIBJX2LIIKR+lf5BnCHM4Odlg=; b=TL3asvSIrTTS6P
	ItS2xOnH2Deyjpt/9txTq2YtSTHRbr2mkdK/RH28LvpfrKdJbTJv9rpEaI/7Etu5iqzLUX8ehnSlF
	raSWB8XwhxWttYImQUfoMPtGQ8ldLGKaxPTiCfRyT2C/gNJlQoSSLH5bCcnCQBWcAbeKgsiwJSfYs
	C6p7pisYvdvbQ9oysNiUInZGq+0Su+GS8i7w/gIxUj4lQLGJwXjFO4+BCCYyVXNlC1PHJmcyd8iXy
	9MDkElCmuDHC138tmBAY7pfmhZnrb906feDrZl2JCbxCFfMuboYzYIbOJ8zGOacricFpZd1asSgOy
	+KOgHyWbspA/ZRllR2Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvH7T-00Fh3H-GM; Thu, 09 Dec 2021 10:57:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvH7O-00Fh1f-Fp
 for barebox@lists.infradead.org; Thu, 09 Dec 2021 10:57:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mvH7N-0000d2-A2; Thu, 09 Dec 2021 11:57:41 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mvH7M-00ElCp-RN; Thu, 09 Dec 2021 11:57:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Dec 2021 11:57:39 +0100
Message-Id: <20211209105739.3517998-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211209_025742_550505_534F100E 
X-CRM114-Status: GOOD (  10.40  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: of_diff: don't mix tabs and spaces for indentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Nodes are indented with spaces, while properties are indented with tabs,
leading to discrepancies when the indentation doesn't start at a tab
stop, like when using of_diff:

chosen {
+ 	barebox-version = "barebox-2021.06.0-20210716-2";
+ 	reset-source = "POR";
+ 	reset-source-instance = <0x0>;
+        subnode {

Fix this by using spaces throughout.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 664a3a411eaf..06e37b0fca4a 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2011,12 +2011,7 @@ void of_print_nodes(struct device_node *node, int indent)
 
 static void __of_print_property(struct property *p, int indent)
 {
-	int i;
-
-	for (i = 0; i < indent; i++)
-		printf("\t");
-
-	printf("%s", p->name);
+	printf("%*s%s", indent * 8, "", p->name);
 	if (p->length) {
 		printf(" = ");
 		of_print_property(of_property_get_value(p), p->length);
@@ -2034,17 +2029,14 @@ void of_print_properties(struct device_node *node)
 
 static int __of_print_parents(struct device_node *node)
 {
-	int indent, i;
+	int indent;
 
 	if (!node->parent)
 		return 0;
 
 	indent = __of_print_parents(node->parent);
 
-	for (i = 0; i < indent; i++)
-		printf("\t");
-
-	printf("%s {\n", node->name);
+	printf("%*s%s {\n", indent * 8, "", node->name);
 
 	return indent + 1;
 }
@@ -2124,14 +2116,14 @@ void of_diff(struct device_node *a, struct device_node *b, int indent)
 			of_diff(ca, cb, indent + 1);
 		} else {
 			of_print_parents(a, &printed);
-			__of_print_nodes(ca, indent, "-");
+			__of_print_nodes(ca, indent, "- ");
 		}
 	}
 
 	for_each_child_of_node(b, cb) {
 		if (!of_get_child_by_name(a, cb->name)) {
 			of_print_parents(a, &printed);
-			__of_print_nodes(cb, indent, "+");
+			__of_print_nodes(cb, indent, "+ ");
 		}
 	}
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

