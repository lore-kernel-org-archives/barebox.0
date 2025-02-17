Delivery-date: Mon, 17 Feb 2025 19:23:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m2-003aOG-1X
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 19:23:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5lz-0003TO-Mg
	for lore@pengutronix.de; Mon, 17 Feb 2025 19:23:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cDNkXT+HY3DaDlz83Tekva1mi/xu/UTUdtY/6TV0wHc=; b=t3htc+GxbZff5a/c85md2N28T2
	9K4OKdwzRJ/tHDPpK6GC7VDW9dfOGquKLaNC76hcP2nZyOLO1VriJ2Kb+pBsZQK/py8g08IZ8cIaH
	EyoCB7F4afJ7IH3qpPvzKTd3CUEkln1FA+rkG+BP4D85IyN+JuNL1gFKXq0jvWfsX/Kg9m9DxS6yQ
	Pv6/rKBq8qS5arL0LKEyE73coEDthabxVqLkkLB+j8QCBLjmaFVMAcSv7aWd7y0f6raJIueKC319j
	oV6Pmg2utyhUPkhU5PkL6pdNvzP+w56WCq2n3pzjDMZUUV4neZk0TC3RSj4hghmKYzqqhiMEV1f9p
	cl2G1amw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5lK-00000005aar-3gMh;
	Mon, 17 Feb 2025 18:22:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Xr-00000005YyS-4Ax7
	for barebox@bombadil.infradead.org;
	Mon, 17 Feb 2025 18:08:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=cDNkXT+HY3DaDlz83Tekva1mi/xu/UTUdtY/6TV0wHc=; b=mQSy9UUnOkqFoNMG+mXGRu3nMC
	+UzzSo6jM7l2EV4Sopm67C4wgYoiqGmOoZYzoFswkCsVOMF8xhyzSIi5G3Z2hTgIitMFfdZK+F13i
	bDvwVNRSFp7dKLA9ssZWk+Eu2XhVwpPs0OydZ0xtGILzJtzj7v84oQXqKr569R/nlTeuZeKhnumJD
	LRLL5UmrH2gY3wGlTUwjZZgrwWKKLyaAM9ZIZuP/J7Y2zLxa2Ak0gvoMjCDimdgiGx86emz+M0GyK
	AE0Ch810nNvgvphPhiXM9+3YRY+1U0W4hhhJoQLLD8m+yZ+oo1BJsM8imK8zwle3ZDHN3kgmyWdpC
	KAPngnCg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Xp-00000001ril-02UB
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 18:08:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-00011M-Dc; Mon, 17 Feb 2025 19:08:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-001S7k-0i;
	Mon, 17 Feb 2025 19:08:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-00Gc9q-0P;
	Mon, 17 Feb 2025 19:08:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 19:08:32 +0100
Message-Id: <20250217180833.3955657-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
References: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_180837_178957_A162C8C5 
X-CRM114-Status: GOOD (  12.97  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] of: partition: refactor of_partition_binding checks into switch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We are going to add a new fixup mode to enum of_binding_name in the next
commit. For readability's sake, refactor the existing code to make it
easier to extend.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/partition.c | 36 +++++++++++++++++++++---------------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 4f966d900f1f..fa4847e20a2b 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -18,6 +18,14 @@
 
 static unsigned int of_partition_binding;
 
+/**
+ * enum of_binding_name - Name of binding to use for OF partition fixup
+ * @MTD_OF_BINDING_NEW:		Fix up new-style partition bindings
+ *				with compatible = "fixed-partitions" container
+ * @MTD_OF_BINDING_LEGACY:	Fix up legacy partition bindings
+ *				directly into the parent node without container
+ * @MTD_OF_BINDING_DONTTOUCH:	Don't touch partition nodes at all - no fixups
+ */
 enum of_binding_name {
 	MTD_OF_BINDING_NEW,
 	MTD_OF_BINDING_LEGACY,
@@ -185,28 +193,26 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
 		n_cells = 1;
 
 	partnode = of_get_child_by_name(np, "partitions");
-	if (partnode) {
-		if (of_partition_binding == MTD_OF_BINDING_LEGACY) {
-			of_delete_node(partnode);
-			partnode = np;
-		}
-		delete_subnodes(partnode);
-	} else {
-		delete_subnodes(np);
 
-		if (of_partition_binding == MTD_OF_BINDING_LEGACY)
-			partnode = np;
-		else
-			partnode = of_new_node(np, "partitions");
-	}
-
-	if (of_partition_binding == MTD_OF_BINDING_NEW) {
+	switch (of_partition_binding) {
+	case MTD_OF_BINDING_LEGACY:
+		of_delete_node(partnode);
+		partnode = np;
+		break;
+	case MTD_OF_BINDING_NEW:
+		partnode = partnode ?: of_new_node(np, "partitions");
 		ret = of_property_write_string(partnode, "compatible",
 					       "fixed-partitions");
 		if (ret)
 			return ret;
+		break;
 	}
 
+	if (partnode)
+		delete_subnodes(partnode);
+	else
+		delete_subnodes(np);
+
 	ret = of_property_write_u32(partnode, "#size-cells", n_cells);
 	if (ret)
 		return ret;
-- 
2.39.5



