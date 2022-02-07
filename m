Delivery-date: Mon, 07 Feb 2022 08:57:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyuJ-0083Wy-Ty
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 08:57:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyuH-0002ck-O1
	for lore@pengutronix.de; Mon, 07 Feb 2022 08:57:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vxGxFF2uNXeGq9QuGyUAo4WNXHs8VvevvLHzwXneYo=; b=tbb0rEvhs6UY02
	eMDh/hj73rhV9X0Vg4IQ67EE64HwIIaJI4+Uj3XNhXLbwJO027LVIhtgXWVbYyQhroRsYCJ/0mnWg
	Oqb4YrCSttKKOYylbUM0ZRGsqfQ+sDOGGH+UuvjET6qTqI3mV3+f3OtyGOt1/jaKUn+bv/eX69byb
	FEDolkJT3PD/rO5UxS/J05rl5zhd7FCdDKKWVgOXpDfMPHA+UeG48WHQQTthuefNxJyDAfRvmLYTx
	fjB3/riQ54Q1w4EvlshDra+fiIuevzkcrSnA0PbHAtJ3llyrs17Y5ap7J5qdGO8CEMF6F53dZuxMy
	bEzUgsa5w2k3r24lFucQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGyt0-009Gfv-4W; Mon, 07 Feb 2022 07:56:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGysq-009Gbw-51
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 07:56:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nGyso-0002B3-VB; Mon, 07 Feb 2022 08:56:22 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nGyso-004Fu3-DB; Mon, 07 Feb 2022 08:56:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Feb 2022 08:56:20 +0100
Message-Id: <20220207075621.1014381-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207075621.1014381-1-a.fatoum@pengutronix.de>
References: <20220207075621.1014381-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_235624_243400_F540E1FC 
X-CRM114-Status: GOOD (  11.34  )
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
Subject: [PATCH 4/5] of: silence of_diff output for negative indents
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Negative indents just led to strange behavior so far. Repurpose them to
mean that the caller is not interested in console output. This makes
them useful for negative tests (Sanity check that two different nodes
are indeed different).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 99be24254203..ffa79785f80e 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2087,6 +2087,8 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 		bp = of_find_property(b, ap->name, NULL);
 		if (!bp) {
 			diff++;
+			if (indent < 0)
+				continue;
 			of_print_parents(a, &printed);
 			printf("- ");
 			__of_print_property(ap, indent);
@@ -2095,6 +2097,8 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 
 		if (ap->length != bp->length || memcmp(of_property_get_value(ap), of_property_get_value(bp), bp->length)) {
 			diff++;
+			if (indent < 0)
+				continue;
 			of_print_parents(a, &printed);
 			printf("- ");
 			__of_print_property(ap, indent);
@@ -2107,6 +2111,8 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 		ap = of_find_property(a, bp->name, NULL);
 		if (!ap) {
 			diff++;
+			if (indent < 0)
+				continue;
 			of_print_parents(a, &printed);
 			printf("+ ");
 			__of_print_property(bp, indent);
@@ -2116,9 +2122,11 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 	for_each_child_of_node(a, ca) {
 		cb = of_get_child_by_name(b, ca->name);
 		if (cb) {
-			diff += of_diff(ca, cb, indent + 1);
+			diff += of_diff(ca, cb, indent >= 0 ? indent + 1 : indent);
 		} else {
 			diff++;
+			if (indent < 0)
+				continue;
 			of_print_parents(a, &printed);
 			__of_print_nodes(ca, indent, "- ");
 		}
@@ -2127,12 +2135,15 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 	for_each_child_of_node(b, cb) {
 		if (!of_get_child_by_name(a, cb->name)) {
 			diff++;
+			if (indent < 0)
+				continue;
 			of_print_parents(a, &printed);
 			__of_print_nodes(cb, indent, "+ ");
 		}
 	}
 
-	of_print_close(a, &printed);
+	if (indent >= 0)
+		of_print_close(a, &printed);
 
 	return diff;
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

