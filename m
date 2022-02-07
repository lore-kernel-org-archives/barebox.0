Delivery-date: Mon, 07 Feb 2022 09:29:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzOl-00850H-Ef
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 09:29:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzOj-0007kf-R2
	for lore@pengutronix.de; Mon, 07 Feb 2022 09:29:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucuaXzlbwrm1Dqc6OaLkMUb1iuggfYqj4V2QEQ9CuUM=; b=yHjAuAehKJsgnX
	271+jEp+n9Ja32GIqIbCApVGuYqDXBLvuwLDZ9hwqG8pCfvgAfxXoNPCCywU/bQeemVCwZHgVmbF/
	09UeyjIy8Tn3Us+PMSItCl/ikZ0130YzbbNXaJ/Xsm53V0wRbyWGJ7mrCsWoFTWKJ+KYK1WPZzCYO
	7yH9z6+FLbVX6dsLFEuoR05MbYQOWmQGB4XD9+M+oNv1Ytf6Q9A/6tpg7MTeV555GkLK6ajJzaVX/
	uDnej3ihpnfctCSIITB5tR2NmpSyUk8RE/MNfWAgH5y2eJjAkMe6mhXGIkadoEr4I0kbxRpNax72u
	BK2Y1uSZKL3+RoVWHLZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGzNc-009LDk-5G; Mon, 07 Feb 2022 08:28:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGzNV-009LC2-4b
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 08:28:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nGzNT-0007Y4-Nl; Mon, 07 Feb 2022 09:28:03 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nGzNT-004Pw3-73; Mon, 07 Feb 2022 09:28:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Feb 2022 09:28:00 +0100
Message-Id: <20220207082801.1052894-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207082801.1052894-1-a.fatoum@pengutronix.de>
References: <20220207082801.1052894-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_002805_233475_B5B6951D 
X-CRM114-Status: GOOD (  13.01  )
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
Subject: [PATCH v2 4/5] of: silence of_diff output for negative indents
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Negative indents just led to strange behavior so far. Repurpose them to
mean that the caller is not interested in console output. This makes
them useful for negative tests (Sanity check that two different nodes
are indeed different).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - use silent variable instead of opencoding indent < 0 (Sascha)
---
 drivers/of/base.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 99be24254203..51984d7d8f61 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2082,11 +2082,14 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 	struct property *ap, *bp;
 	struct device_node *ca, *cb;
 	int printed = 0, diff = 0;
+	bool silent = indent < 0;
 
 	list_for_each_entry(ap, &a->properties, list) {
 		bp = of_find_property(b, ap->name, NULL);
 		if (!bp) {
 			diff++;
+			if (silent)
+				continue;
 			of_print_parents(a, &printed);
 			printf("- ");
 			__of_print_property(ap, indent);
@@ -2095,6 +2098,8 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 
 		if (ap->length != bp->length || memcmp(of_property_get_value(ap), of_property_get_value(bp), bp->length)) {
 			diff++;
+			if (silent)
+				continue;
 			of_print_parents(a, &printed);
 			printf("- ");
 			__of_print_property(ap, indent);
@@ -2107,6 +2112,8 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 		ap = of_find_property(a, bp->name, NULL);
 		if (!ap) {
 			diff++;
+			if (silent)
+				continue;
 			of_print_parents(a, &printed);
 			printf("+ ");
 			__of_print_property(bp, indent);
@@ -2116,9 +2123,11 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 	for_each_child_of_node(a, ca) {
 		cb = of_get_child_by_name(b, ca->name);
 		if (cb) {
-			diff += of_diff(ca, cb, indent + 1);
+			diff += of_diff(ca, cb, silent ? indent : indent + 1);
 		} else {
 			diff++;
+			if (silent)
+				continue;
 			of_print_parents(a, &printed);
 			__of_print_nodes(ca, indent, "- ");
 		}
@@ -2127,12 +2136,15 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 	for_each_child_of_node(b, cb) {
 		if (!of_get_child_by_name(a, cb->name)) {
 			diff++;
+			if (silent)
+				continue;
 			of_print_parents(a, &printed);
 			__of_print_nodes(cb, indent, "+ ");
 		}
 	}
 
-	of_print_close(a, &printed);
+	if (!silent)
+		of_print_close(a, &printed);
 
 	return diff;
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

