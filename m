Delivery-date: Tue, 11 Jul 2023 13:32:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJBbD-0076cp-1Z
	for lore@lore.pengutronix.de; Tue, 11 Jul 2023 13:32:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJBbA-0000JM-EI
	for lore@pengutronix.de; Tue, 11 Jul 2023 13:32:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tHObv4iZApg+2YqBHagE51OgQvMu9yO7wrn+xTUUqHg=; b=hd/GcXuhxxwbVSCtT50Cf0XZ2f
	64fngb72y6oHusGw2Ohc3LvZNpGpDqFcOqdPaEI3i2nSfyAPhFVdlpfjpr77kf0lH0V0pWpoxQXqn
	IjdJ+X+RclJ6kGL+ikM2dpYHVpRnm+2AnyoxN/zgVf9wyl+kDz3kyzzuq2/VUxwYAGtUe53XWvTeU
	85oO1R+7lMKhvjyGGR9nlFryGcyCKovL/i/8kxajSqcdNxDBujs4Qru9cLs3jFr4vCVWfarXEC92x
	7IcJ2nptbqt14jsTTpeAqXBT/xX5UfU5QeuZfliraFLkUnJsKZYpQO25NHu3JJgu6zYXUxqbrxx5f
	WpVd198w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJBZa-00Elpn-1Z;
	Tue, 11 Jul 2023 11:30:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJASm-00EWKo-06
	for barebox@lists.infradead.org;
	Tue, 11 Jul 2023 10:19:21 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qJASZ-0008J6-Fy; Tue, 11 Jul 2023 12:19:07 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mtr@pengutronix.de
Date: Tue, 11 Jul 2023 12:19:07 +0200
Message-Id: <20230711101907.1814921-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_031920_096706_9BAC839A 
X-CRM114-Status: GOOD (  15.49  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of_firmware: fix lookup of fpga manager
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The of_parse_phandle() looks for the phandle in the root device tree,
but as np is resolved for the target device tree, the phandle refers to
the target device tree and may return a wrong node in the root tree.

Therefore, we must ensure that we look for the manager-node in the
target device tree and look for the manager with that name.

firmwaremgr_find_by_node already uses the name for the lookup.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/of/of_firmware.c | 30 ++++++++++++++++++++++++------
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
index 80feb3b90dba..0429875a26c4 100644
--- a/drivers/of/of_firmware.c
+++ b/drivers/of/of_firmware.c
@@ -9,14 +9,32 @@
 static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
 {
 	struct device_node *mgr_node;
+	const __be32 *property;
+	phandle phandle;
+	int size;
 
+	/* Find fpga-mgr phandle, which may be set in a parent fpga-region. */
 	do {
-		mgr_node = of_parse_phandle(np, "fpga-mgr", 0);
-		if (mgr_node)
-			return firmwaremgr_find_by_node(mgr_node);
-	} while ((np = of_get_parent(np)) != NULL);
-
-	return NULL;
+		property = of_get_property(np, "fpga-mgr", &size);
+		if (property && size == sizeof(*property))
+			break;
+	} while ((np = of_get_parent(np)) != NULL &&
+		 of_device_is_compatible(np, "fpga-region"));
+	if (!property)
+		return NULL;
+	phandle = be32_to_cpup(property);
+
+	/*
+	 * The phandle in the np will refer to a device node in the target
+	 * tree, which may differ from the phandle in the root tree. We need
+	 * the name of the target node, as firmwaremgr_find_by_node performs
+	 * the lookup by the node name.
+	 */
+	mgr_node = of_find_node_by_phandle_from(phandle, of_find_root_node(np));
+	if (!mgr_node)
+		return NULL;
+
+	return firmwaremgr_find_by_node(mgr_node);
 }
 
 struct fw_load_entry {
-- 
2.39.2



