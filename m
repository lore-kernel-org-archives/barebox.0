Delivery-date: Thu, 27 Jul 2023 17:59:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qP3OM-00CM7b-R8
	for lore@lore.pengutronix.de; Thu, 27 Jul 2023 17:59:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qP3OJ-0005pr-DI
	for lore@pengutronix.de; Thu, 27 Jul 2023 17:59:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=94HkRfUWCyFsPFvAPfeS1BN3p17I+ZTCWM5jEkKIKgc=; b=ld2mivMFKhUO3C
	Mnpb2JvIaeUhN3UP1PAWHsy3jnmg4fsu2kV7zlOw0x9KxmoWpbH8E9RRPXl0nYvAhibijG3ARuPJl
	wAu4E4liJ6J/Q6jRU+f/ImsFWaL+7/2VOcsJre/4uKKfPMWLD+nHDkGFOO8/5wLBvRuSAuj78GliX
	TZXYou3VNstsRq6uHPjrlv1HWdOqVAKZAok63xWnqaCK/EoUjwL/G7kUXCWADT5EKVz8O4cnpiNUs
	gYBd28OSp1Y1Wfe0vEOCqyCBrd1Xy/EGlyID7FRWY0yk3SknQj1XRhBvREXAS+FjHhF2abWMHSSPX
	ipq1qYegeXJVd9qFeOQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qP3Mw-00GDBq-0c;
	Thu, 27 Jul 2023 15:57:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qP3Mr-00GD69-1v
	for barebox@lists.infradead.org;
	Thu, 27 Jul 2023 15:57:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qP3Mm-0005hF-RQ; Thu, 27 Jul 2023 17:57:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qP3Mm-002Vi3-66; Thu, 27 Jul 2023 17:57:28 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qP3Ml-008x4n-36;
	Thu, 27 Jul 2023 17:57:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 27 Jul 2023 17:57:26 +0200
Message-Id: <20230727155726.2133700-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_085733_640387_57FCAFAB 
X-CRM114-Status: GOOD (  13.05  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] FIT: don't verify signature of non-signature nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

One would expect that all children of a configuration node are signature
nodes, but OpenEmbedded's core kernel-fitimage.bbclass always generates
a dummy hash-1 node into configurations with just an algo and no digest,
which barebox would try to interpret as a FIT configuration leading to
an error verifying the FIT image:

  ERROR: FIT: hashed-strings start not found in
  /configurations/conf-something/hash-1

Make it possible to boot such FIT images by only verifying nodes that
are supposed to be signatures. This aligns us with U-Boot behavior, but
introduces theoretical breakage for FIT images that have signature nodes
with funny names. Given that everyone uses signature@1 or signature-1 and we even
hardcode it as places and that the failure mode is to refuse boot of old
images with new barebox version when FIT image verification is required,
this is deemed acceptable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c |  4 ++++
 drivers/of/base.c  | 15 +++++++++++++++
 include/of.h       |  6 ++++++
 3 files changed, 25 insertions(+)

diff --git a/common/image-fit.c b/common/image-fit.c
index 9bea62bb34a0..e73ed581a2be 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -670,8 +670,12 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
 	}
 
 	for_each_child_of_node(conf_node, sig_node) {
+		if (!of_node_has_prefix(sig_node, "signature"))
+			continue;
+
 		if (handle->verbose)
 			of_print_nodes(sig_node, 0, ~0);
+
 		ret = fit_verify_signature(sig_node, handle->fit);
 		if (ret < 0)
 			return ret;
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 4dc1c76b136d..03cceeffc0df 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -24,6 +24,21 @@
 
 static struct device_node *root_node;
 
+/**
+ * of_node_has_prefix - Test if a node name has a given prefix
+ * @np: The node name to test
+ * @prefix: The prefix to see if @np starts with
+ *
+ * Returns:
+ * * strlen(@prefix) if @np starts with @prefix
+ * * 0 if @np does not start with @prefix
+ */
+size_t of_node_has_prefix(const struct device_node *np, const char *prefix)
+{
+	return np ? str_has_prefix(kbasename(np->full_name), prefix) : 0;
+}
+EXPORT_SYMBOL(of_node_has_prefix);
+
 bool of_node_name_eq(const struct device_node *np, const char *name)
 {
 	const char *node_name;
diff --git a/include/of.h b/include/of.h
index 92a15f5c4a13..b3e4d4699248 100644
--- a/include/of.h
+++ b/include/of.h
@@ -131,6 +131,7 @@ extern int of_n_addr_cells(struct device_node *np);
 extern int of_bus_n_size_cells(struct device_node *np);
 extern int of_n_size_cells(struct device_node *np);
 extern bool of_node_name_eq(const struct device_node *np, const char *name);
+extern size_t of_node_has_prefix(const struct device_node *np, const char *prefix);
 
 extern struct property *of_find_property(const struct device_node *np,
 					const char *name, int *lenp);
@@ -377,6 +378,11 @@ static inline bool of_node_name_eq(const struct device_node *np, const char *nam
 	return false;
 }
 
+static inline size_t of_node_has_prefix(const struct device_node *np, const char *prefix)
+{
+	return 0;
+}
+
 static inline int of_parse_partitions(struct cdev *cdev,
 					  struct device_node *node)
 {
-- 
2.39.2



