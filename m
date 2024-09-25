Delivery-date: Wed, 25 Sep 2024 16:01:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSaT-002cNZ-0a
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:01:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSaT-0002lj-Ak
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:01:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P0+ej9BYK6wGWpZJd8sOEGdaXIAs/Gs8TNE4YU+iCu4=; b=hoWVlVhf2mo0PehS2s7lK5tGWB
	ASWplnh7avPatpjp0DvKgMpxFMxztPSYAQYdWpQa5L8q2html+OXJSEEDgnT9iI3ww3p0JCbMhn3+
	thcL2rNxmUwaEqUPcPjZ8N3SdkcXVQrpryH3++zvAMI28XNMLWmeZkyuioeTzjSuYyl6QXXyokdZ2
	SKK3A0B1urvOJEIivyqAiUIi9xPVTmA1WPmXb8DDvQkCfAEOp8RujMGLzUGyuwRIHQPS/m03kFQI4
	rq6GzUj/0yMBjkYaVeYN8tbt0QpKjEDHwecIuVc2OADeAs6pcduU4hAaf+OfN3yraVZA/s7IhIgDf
	VnpyjpXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSa1-00000005VbK-17z7;
	Wed, 25 Sep 2024 14:01:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSZu-00000005VWf-03HT
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:01:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-0002JM-O7; Wed, 25 Sep 2024 16:01:12 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-001SlG-7b; Wed, 25 Sep 2024 16:01:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-00DCyS-1x;
	Wed, 25 Sep 2024 16:01:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:01:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-of-graph-fixes-v1-2-c0a3ac989b0c@pengutronix.de>
References: <20240925-of-graph-fixes-v1-0-c0a3ac989b0c@pengutronix.de>
In-Reply-To: <20240925-of-graph-fixes-v1-0-c0a3ac989b0c@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727272872; l=3497;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nWIM6GnRrMGxIqQF9CPankRcFk3f76s2seOMn/kr6n8=;
 b=3Va+35dkTHnBy4ZfUiLma/50xMPvCvtJ/gjhlverKmXKasw642LQe3/wjYQx2qKOCBDbFeMzo
 vauT0plbAUnDuKgcPonaKLT7hKM5U1LWkGKCW0pW3BpMsZAio1V/8Xd
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_070114_222754_36FF229C 
X-CRM114-Status: GOOD (  17.35  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] of: fix of_graph_get_next_endpoint()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_get_child_by_name() behaves differently than the corresponding Linux
function. The barebox version matches the full name of the node whereas
the Linux version skips the part after the '@' in the node.

of_graph_get_next_endpoint() explicitly needs the Linux behaviour.

As of_get_child_by_name() is heavily used in barebox and some call sites
might depend on the different behaviour, do not alter
of_get_child_by_name(), but instead introduce a new function that has
the Linux behaviour and use that in of_graph_get_next_endpoint().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 26 ++++++++++++++++++++++++--
 include/of.h      |  8 ++++++++
 2 files changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 6fd69e7d7d..fbbc3316fc 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2139,7 +2139,7 @@ EXPORT_SYMBOL(of_get_compatible_child);
  *	@node:	parent node
  *	@name:	child name to look for.
  *
- *      This function looks for child node for given matching name
+ *      This function looks for child node for given matching full name
  *
  *	Returns a node pointer if found or NULL.
  */
@@ -2156,6 +2156,28 @@ struct device_node *of_get_child_by_name(const struct device_node *node,
 }
 EXPORT_SYMBOL(of_get_child_by_name);
 
+/**
+ *	of_get_child_by_name_stem - Find the child node by name for a given parent
+ *	@node:	parent node
+ *	@name:	child name to look for.
+ *
+ *      This function looks for child node for given matching name excluding the
+ *      unit address
+ *
+ *	Returns a node pointer if found or NULL.
+ */
+struct device_node *of_get_child_by_name_stem(const struct device_node *node,
+				const char *name)
+{
+	struct device_node *child;
+
+	for_each_child_of_node(node, child)
+		if (of_node_name_eq(child, name))
+			break;
+	return child;
+}
+EXPORT_SYMBOL(of_get_child_by_name_stem);
+
 /**
  * of_property_read_string_helper() - Utility helper for parsing string properties
  * @np:		device node from which the property value is to be read.
@@ -3296,7 +3318,7 @@ struct device_node *of_graph_get_next_endpoint(const struct device_node *parent,
 		if (node)
 			parent = node;
 
-		port = of_get_child_by_name(parent, "port");
+		port = of_get_child_by_name_stem(parent, "port");
 		if (!port) {
 			pr_err("%s(): no port node found in %pOF\n",
 			       __func__, parent);
diff --git a/include/of.h b/include/of.h
index 55f2c0cbde..05e92d41b9 100644
--- a/include/of.h
+++ b/include/of.h
@@ -218,6 +218,8 @@ extern struct device_node *of_get_compatible_child(const struct device_node *par
 					const char *compatible);
 extern struct device_node *of_get_child_by_name(const struct device_node *node,
 					const char *name);
+extern struct device_node *of_get_child_by_name_stem(const struct device_node *node,
+					const char *name);
 extern char *of_get_reproducible_name(struct device_node *node);
 extern struct device_node *of_get_node_by_reproducible_name(struct device_node *dstroot,
 							    struct device_node *srcnp);
@@ -560,6 +562,12 @@ static inline struct device_node *of_get_child_by_name(
 	return NULL;
 }
 
+static inline struct device_node *of_get_child_by_name_stem(
+			const struct device_node *node, const char *name)
+{
+	return NULL;
+}
+
 static inline char *of_get_reproducible_name(struct device_node *node)
 {
 	return NULL;

-- 
2.39.5



