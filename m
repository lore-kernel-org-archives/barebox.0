Delivery-date: Tue, 09 Jan 2024 17:17:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmj-00AUGs-12
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmh-0000Mt-1l
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9NNPoY4fKRnB5U1nIaNidXhNjXkeTt281iCc1GDBc5k=; b=JT5L48Stajr7CtD/3K22UMAq1z
	kSwNkw02gu6bg7j4YgxhJegFGmZtTQLzBYiggrdvOiM5nHQiagSmzDTfdH5J/xMxFRhr8D6tdH9jc
	W+c0siuzOKWydfTqnYRck3Ec3Hdx7GrHohrqkX0CF1kuA0QbuM2cwHcPQSn8B5ZigSLX1kVapBDFC
	lJL/rsxuvbfR4OFsONl/AG1Q39BLY8UKrSW763iAOgMflo+FktfgwqQzxDuLYFnnK8+ib7jCCW4ds
	p6yr2rKB9X3/CqFzRoQ4c277nV0pKIm68m9gD7+rgzAIp9+uUWnIC9bXrBW7WnpETaEGT+oeUiB/z
	5vMc1+tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElT-008nqY-0T;
	Tue, 09 Jan 2024 16:15:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElJ-008nip-2B
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007l8-5t; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WCT-IF; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7Pw-1c;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:12 +0100
Message-Id: <20240109161527.3237581-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081533_745374_5AED1601 
X-CRM114-Status: GOOD (  17.02  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 06/21] ARM: Layerscape: icid: move re-usable code to separate functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Create separate functions from code that can be re-used by upcoming
LS1028a support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/icid.c | 98 +++++++++++++++++++--------------
 1 file changed, 57 insertions(+), 41 deletions(-)

diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index f0a9dc8063..dd0e160bde 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -68,6 +68,58 @@ struct icid_id_table {
 	phys_addr_t reg_addr;
 };
 
+static void of_set_iommu_prop(struct device_node *np, phandle iommu_handle,
+			       int stream_id)
+{
+	u32 prop[2];
+
+	prop[0] = cpu_to_fdt32(iommu_handle);
+	prop[1] = cpu_to_fdt32(stream_id);
+
+	of_set_property(np, "iommus", prop, sizeof(prop), 1);
+}
+
+static phandle of_get_iommu_handle(struct device_node *root)
+{
+	struct device_node *iommu;
+
+	iommu = of_find_compatible_node(root, NULL, "arm,mmu-500");
+	if (!iommu) {
+		pr_info("No \"arm,mmu-500\" node found, won't fixup\n");
+		return 0;
+	}
+
+	return of_node_create_phandle(iommu);
+}
+
+static int of_fixup_icid(struct device_node *root, phandle iommu_handle,
+			 const struct icid_id_table *icid_table, int num_icid)
+{
+	int i;
+
+	for (i = 0; i < num_icid; i++) {
+		const struct icid_id_table *icid = &icid_table[i];
+		struct device_node *np;
+
+		if (!icid->compat)
+			continue;
+
+		for_each_compatible_node_from(np, root, NULL, icid->compat) {
+			struct resource res;
+
+			if (of_address_to_resource(np, 0, &res))
+				continue;
+
+			if (res.start == icid->compat_addr) {
+				of_set_iommu_prop(np, iommu_handle, icid->id);
+				break;
+			}
+		}
+	}
+
+	return 0;
+}
+
 struct fman_icid_id_table {
 	u32 port_id;
 	u32 icid;
@@ -292,17 +344,6 @@ static int get_fman_port_icid(int port_id, const struct fman_icid_id_table *tbl,
 	return -ENODEV;
 }
 
-static void of_set_iommu_prop(struct device_node *np, phandle iommu_handle,
-			       int stream_id)
-{
-	u32 prop[2];
-
-	prop[0] = cpu_to_fdt32(iommu_handle);
-	prop[1] = cpu_to_fdt32(stream_id);
-
-	of_set_property(np, "iommus", prop, sizeof(prop), 1);
-}
-
 static void of_fixup_fman_port_icid_by_compat(struct device_node *root,
 					       phandle iommu_handle,
 					       const char *compat)
@@ -491,40 +532,15 @@ static void of_fixup_qportals(struct device_node *root, phandle iommu_handle)
 	}
 }
 
-static int icid_of_fixup(struct device_node *root, void *context)
+static int of_fixup_ls1046a(struct device_node *root, void *context)
 {
-	int i;
-	struct device_node *iommu;
 	phandle iommu_handle;
 
-	iommu = of_find_compatible_node(root, NULL, "arm,mmu-500");
-	if (!iommu) {
-		pr_info("No \"arm,mmu-500\" node found, won't fixup\n");
+	iommu_handle = of_get_iommu_handle(root);
+	if (!iommu_handle)
 		return 0;
-	}
-
-	iommu_handle = of_node_create_phandle(iommu);
-
-	for (i = 0; i < ARRAY_SIZE(icid_tbl_ls1046a); i++) {
-		const struct icid_id_table *icid = &icid_tbl_ls1046a[i];
-		struct device_node *np;
-
-		if (!icid->compat)
-			continue;
-
-		for_each_compatible_node_from(np, root, NULL, icid->compat) {
-			struct resource res;
-
-			if (of_address_to_resource(np, 0, &res))
-				continue;
-
-			if (res.start == icid->compat_addr) {
-				of_set_iommu_prop(np, iommu_handle, icid->id);
-				break;
-			}
-		}
-	}
 
+	of_fixup_icid(root, iommu_handle, icid_tbl_ls1046a, ARRAY_SIZE(icid_tbl_ls1046a));
 	of_fixup_fman_icids(root, iommu_handle);
 	of_fixup_qportals(root, iommu_handle);
 
@@ -553,5 +569,5 @@ void ls1046a_setup_icids(void)
 
 	setup_qbman_portals();
 
-	of_register_fixup(icid_of_fixup, NULL);
+	of_register_fixup(of_fixup_ls1046a, NULL);
 }
-- 
2.39.2



