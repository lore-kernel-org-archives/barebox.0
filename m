Delivery-date: Mon, 15 Aug 2022 18:14:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNcj1-006cO0-8A
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 18:14:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNcj1-0005NF-Ok
	for lore@pengutronix.de; Mon, 15 Aug 2022 18:14:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UTXIy0qDb8ztXEi1N9Nc+JvS/xmnAGJMcK+ezK+UnH0=; b=RM324a5g4Da1QaC8l2XpcgO2tK
	m1CrKe+nbb2F0xCNf1JqPjDXeo8SPlMvvMG71FAnLBFVsNbXBh/Fpd1PtgbBLRqH1kh1Re3DAFWKY
	ki/SMeNWWAk+t/sDuSWSXf+7ZCC1pQ3CaW1LwZkRtjcEQ15Jpi5n31LyMnM2SEiV+6bEir8jgIo6A
	6XDJXTXa2tprcarkCfe3r7X2lDiClYmiZZxoDKGbL3f1ZWG/oHH3DjAd6v+QEVLUTTGvBN3zzyo2i
	WVOXqtjICLtgp1OtSvr1MyZTFu40eGR7z2KN2oQDelnzX0ZoJJzqn0wEjrkjlitXCzt3iU8DQH2Mg
	QR6xo/BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNchL-001N0b-K8; Mon, 15 Aug 2022 16:12:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNccR-001IJG-Mh
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 16:07:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNccQ-0004df-4N; Mon, 15 Aug 2022 18:07:10 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNccN-003xFg-5e; Mon, 15 Aug 2022 18:07:09 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNccO-00ACHO-SL; Mon, 15 Aug 2022 18:07:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 18:07:08 +0200
Message-Id: <20220815160708.2430433-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_090711_804353_E223D0A4 
X-CRM114-Status: GOOD (  11.82  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of: move of_get_node_by_reproducible_name() into common code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The function already has a good generic name and can be useful for board
code or for other drivers seeking to fix up the kernel device tree
according to information within the barebox DT.
Thus move it to a central location.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c                 | 13 +++++++++++++
 drivers/power/reset/reboot-mode.c | 13 -------------
 include/of.h                      |  9 +++++++++
 3 files changed, 22 insertions(+), 13 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index b91ee92e1b88..52e6a9294e11 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2865,6 +2865,19 @@ struct device_node *of_find_node_by_reproducible_name(struct device_node *from,
 	return NULL;
 }
 
+struct device_node *of_get_node_by_reproducible_name(struct device_node *dstroot,
+						     struct device_node *srcnp)
+{
+	struct device_node *dstnp;
+	char *name;
+
+	name = of_get_reproducible_name(srcnp);
+	dstnp = of_find_node_by_reproducible_name(dstroot, name);
+	free(name);
+
+	return dstnp;
+}
+
 /**
  * of_graph_parse_endpoint() - parse common endpoint node properties
  * @node: pointer to endpoint device_node
diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index 1316af4213fb..5761128f8e5a 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -48,19 +48,6 @@ static int reboot_mode_add_param(struct device_d *dev,
 	return PTR_ERR_OR_ZERO(param);
 }
 
-static struct device_node *of_get_node_by_reproducible_name(struct device_node *dstroot,
-							    struct device_node *srcnp)
-{
-	struct device_node *dstnp;
-	char *name;
-
-	name = of_get_reproducible_name(srcnp);
-	dstnp = of_find_node_by_reproducible_name(dstroot, name);
-	free(name);
-
-	return dstnp;
-}
-
 static int of_reboot_mode_fixup(struct device_node *root, void *ctx)
 {
 	struct reboot_mode_driver *reboot = ctx;
diff --git a/include/of.h b/include/of.h
index 91c3766992aa..995e9b591399 100644
--- a/include/of.h
+++ b/include/of.h
@@ -195,6 +195,9 @@ extern struct device_node *of_get_compatible_child(const struct device_node *par
 extern struct device_node *of_get_child_by_name(const struct device_node *node,
 					const char *name);
 extern char *of_get_reproducible_name(struct device_node *node);
+extern struct device_node *of_get_node_by_reproducible_name(struct device_node *dstroot,
+							    struct device_node *srcnp);
+
 extern struct device_node *of_find_node_by_reproducible_name(struct device_node
 							     *from,
 							     const char *name);
@@ -493,6 +496,12 @@ of_find_node_by_reproducible_name(struct device_node *from, const char *name)
 	return NULL;
 }
 
+
+static iline struct device_node *of_get_node_by_reproducible_name(struct device_node *dstroot,
+								  struct device_node *srcnp)
+{
+	return NULL;
+}
 static inline struct property *of_find_property(const struct device_node *np,
 						const char *name,
 						int *lenp)
-- 
2.30.2



