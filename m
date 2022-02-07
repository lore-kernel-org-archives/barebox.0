Delivery-date: Mon, 07 Feb 2022 09:29:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzOs-00851g-Ll
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 09:29:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzOr-0007mx-Aa
	for lore@pengutronix.de; Mon, 07 Feb 2022 09:29:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JKO3Xx900eS3vy5Xpyzh+iFHRFHuFcPfSXH+sP8FtAM=; b=WdJyFvTiW5g6zI
	/jqvK0NEqlKzAdv4XV9J+eZi8g5HjWxCbq72e4QVllo4T7viLIp5yHVKOeTYlHgys9Y3KWhR1XmPD
	f/Fx9tXDf26RmHt0P0Yun1gF6amEjXBEuJr6Gf2kL97LTnp13wmDM+LC6Id/bbusnm9dFXbQeREof
	ISiwl6+qu/8us9M6ShLWQM1N6f4I5kwk8Pf1DIHoKQ0t2OpCZIiw0rQnLh2FooOphJ0H2AWELkqL0
	1CBPTBBBlD9FZRd3E0gQO6qZhBPAuH3tcDwM5EWvD71hTMVslClIAzMX/xxK0c+g3gq5IPTBOLhKZ
	KUZwTAB+L8RoobJ+T6uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGzNh-009LF0-Bj; Mon, 07 Feb 2022 08:28:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGzNV-009LC3-4c
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 08:28:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nGzNT-0007Y3-OL; Mon, 07 Feb 2022 09:28:03 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nGzNT-004Pw0-6V; Mon, 07 Feb 2022 09:28:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Feb 2022 09:27:59 +0100
Message-Id: <20220207082801.1052894-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207082801.1052894-1-a.fatoum@pengutronix.de>
References: <20220207082801.1052894-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_002805_238555_20A0E3CA 
X-CRM114-Status: GOOD (  13.55  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/5] of: report whether of_diff found differences in return
 code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Tests may want to leverage of_diff to verify that fixups proceeded as
expected. of_diff lends itself nicely to that by being silent in case of
success and just reporting diff on error. Add a return code to make it
usable in follow-up tests.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - invert of_diff command error code (success on match, error on diff)
---
 commands/of_diff.c |  4 +---
 drivers/of/base.c  | 13 ++++++++++---
 include/of.h       |  2 +-
 3 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/commands/of_diff.c b/commands/of_diff.c
index fa99fcd641da..6a78263200d7 100644
--- a/commands/of_diff.c
+++ b/commands/of_diff.c
@@ -77,9 +77,7 @@ static int do_of_diff(int argc, char *argv[])
 		goto out;
 	}
 
-	of_diff(a, b, 0);
-
-	ret = 0;
+	ret = of_diff(a, b, 0) ? COMMAND_ERROR : COMMAND_SUCCESS;
 out:
 	if (a && a != root)
 		of_delete_node(a);
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 80465d6d5062..99be24254203 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2077,15 +2077,16 @@ static void of_print_close(struct device_node *node, int *printed)
  * This function compares two device trees against each other and prints
  * a diff-like result.
  */
-void of_diff(struct device_node *a, struct device_node *b, int indent)
+int of_diff(struct device_node *a, struct device_node *b, int indent)
 {
 	struct property *ap, *bp;
 	struct device_node *ca, *cb;
-	int printed = 0;
+	int printed = 0, diff = 0;
 
 	list_for_each_entry(ap, &a->properties, list) {
 		bp = of_find_property(b, ap->name, NULL);
 		if (!bp) {
+			diff++;
 			of_print_parents(a, &printed);
 			printf("- ");
 			__of_print_property(ap, indent);
@@ -2093,6 +2094,7 @@ void of_diff(struct device_node *a, struct device_node *b, int indent)
 		}
 
 		if (ap->length != bp->length || memcmp(of_property_get_value(ap), of_property_get_value(bp), bp->length)) {
+			diff++;
 			of_print_parents(a, &printed);
 			printf("- ");
 			__of_print_property(ap, indent);
@@ -2104,6 +2106,7 @@ void of_diff(struct device_node *a, struct device_node *b, int indent)
 	list_for_each_entry(bp, &b->properties, list) {
 		ap = of_find_property(a, bp->name, NULL);
 		if (!ap) {
+			diff++;
 			of_print_parents(a, &printed);
 			printf("+ ");
 			__of_print_property(bp, indent);
@@ -2113,8 +2116,9 @@ void of_diff(struct device_node *a, struct device_node *b, int indent)
 	for_each_child_of_node(a, ca) {
 		cb = of_get_child_by_name(b, ca->name);
 		if (cb) {
-			of_diff(ca, cb, indent + 1);
+			diff += of_diff(ca, cb, indent + 1);
 		} else {
+			diff++;
 			of_print_parents(a, &printed);
 			__of_print_nodes(ca, indent, "- ");
 		}
@@ -2122,12 +2126,15 @@ void of_diff(struct device_node *a, struct device_node *b, int indent)
 
 	for_each_child_of_node(b, cb) {
 		if (!of_get_child_by_name(a, cb->name)) {
+			diff++;
 			of_print_parents(a, &printed);
 			__of_print_nodes(cb, indent, "+ ");
 		}
 	}
 
 	of_print_close(a, &printed);
+
+	return diff;
 }
 
 struct device_node *of_new_node(struct device_node *parent, const char *name)
diff --git a/include/of.h b/include/of.h
index 216d0ee76368..b449d10ec774 100644
--- a/include/of.h
+++ b/include/of.h
@@ -107,7 +107,7 @@ void of_print_cmdline(struct device_node *root);
 
 void of_print_nodes(struct device_node *node, int indent);
 void of_print_properties(struct device_node *node);
-void of_diff(struct device_node *a, struct device_node *b, int indent);
+int of_diff(struct device_node *a, struct device_node *b, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
 struct device_node *of_unflatten_dtb(const void *fdt, int size);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

