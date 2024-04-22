Delivery-date: Mon, 22 Apr 2024 12:24:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ryqqK-00BO3v-2h
	for lore@lore.pengutronix.de;
	Mon, 22 Apr 2024 12:24:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ryqqI-0007NL-89
	for lore@pengutronix.de; Mon, 22 Apr 2024 12:24:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5gw/My+NlmGmROvklx8n+MtCBirvhim99bzf0pNPF5I=; b=SL+iE6PK2jXUAZdjfZYvEvTvlD
	Vb3CPsTttp3CHV8uCJbUtxAhBaO/x0Uyo1Y9opkobr3g2DNyhIiun6aimdlCoXwewE5iFfCt9Mts8
	Ldc6m1UsdecZr/u0m17TRqsoKuQbpRmkWZj1lb4KCz++5IpcL/9vPnzXfCWPgoSqkiPYXJ+bBx0sC
	gZaRr14JzB8ZrxrUD58232tZqkzipJuRgCHye8aZM6RnGgeleCaUtwlVzHB6YmUTU93vs/mlSJVRK
	o3iq9OxOWQykou8o9JlkcCdi0HCo/bgEE+nCvAOQyLbrCXHt6VYyXKty6/HQjOVvPNFPelXTy3WIU
	80IfuU0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryqpu-0000000D8Pp-1hgP;
	Mon, 22 Apr 2024 10:23:46 +0000
Received: from mx1.emlix.com ([178.63.209.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryqpr-0000000D8OR-038H
	for barebox@lists.infradead.org;
	Mon, 22 Apr 2024 10:23:44 +0000
Received: from mailer.emlix.com (cr-emlix.sta.goetel.net [81.20.112.87])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.emlix.com (Postfix) with ESMTPS id E22CC5FDA5
	for <barebox@lists.infradead.org>; Mon, 22 Apr 2024 12:23:28 +0200 (CEST)
From: Jonas Richardsen <jonasrichardsen@emlix.com>
To: barebox@lists.infradead.org
Cc: Jonas Richardsen <jonasrichardsen@emlix.com>
Date: Mon, 22 Apr 2024 10:16:47 +0000
Message-ID: <20240422102232.551842-2-jonasrichardsen@emlix.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240422102232.551842-1-jonasrichardsen@emlix.com>
References: <20240422102232.551842-1-jonasrichardsen@emlix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_032343_227826_22300FEE 
X-CRM114-Status: GOOD (  12.41  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] raspi: add fixup method for specific properties
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add `rpi_vc_property_fixup` method to allow for fixups of specific
properties, i.e., copy a property of some node from the video core
device tree. Notably, this does override the property if it already
existed (as opposed to `rpi_vc_fixup`, which copies an entire node, but
does not override existing properties).

Signed-off-by: Jonas Richardsen <jonasrichardsen@emlix.com>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 46 +++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 7c82c740e2..2245c36cbe 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -60,6 +60,11 @@ struct rpi_priv {
 	const char *name;
 };
 
+struct rpi_property_fixup_data {
+    const struct device_node* vc_node;
+    const char *propname;
+};
+
 static void rpi_set_usbethaddr(void)
 {
 	u8 mac[ETH_ALEN];
@@ -301,6 +306,47 @@ static struct device_node *register_vc_fixup(struct device_node *root,
 	return ret;
 }
 
+static int rpi_vc_fdt_fixup_property(struct device_node *root, void *data)
+{
+	const struct rpi_property_fixup_data *fixup = data;
+	struct device_node *node;
+	struct property *prop;
+
+	node = of_create_node(root, fixup->vc_node->full_name);
+	if (!node)
+		return -ENOMEM;
+
+	prop = of_find_property(fixup->vc_node, fixup->propname, NULL);
+	if (!prop)
+		return -ENOENT;
+
+	return of_set_property(node, prop->name,
+						   of_property_get_value(prop), prop->length, 1);
+}
+
+static int register_vc_property_fixup(struct device_node *root,
+						 const char *path, const char *propname)
+{
+	struct device_node *node, *tmp;
+	struct rpi_property_fixup_data* fixup_data;
+
+	node = of_find_node_by_path_from(root, path);
+	if (node) {
+		tmp = of_dup(node);
+		tmp->full_name = xstrdup(node->full_name);
+		fixup_data = xzalloc(sizeof(*fixup_data));
+		fixup_data->vc_node = tmp;
+		fixup_data->propname = xstrdup(propname);
+
+		of_register_fixup(rpi_vc_fdt_fixup_property, fixup_data);
+	} else {
+		pr_info("no '%s' node found in vc fdt\n", path);
+		return -ENOENT;
+	}
+
+	return 0;
+}
+
 static u32 rpi_boot_mode, rpi_boot_part;
 /* Extract useful information from the VideoCore FDT we got.
  * Some parameters are defined here:
-- 
2.42.0



