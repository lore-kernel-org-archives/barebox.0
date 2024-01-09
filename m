Delivery-date: Tue, 09 Jan 2024 17:17:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmq-00AUN7-1a
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmp-0000W7-Pn
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1ETTxvRkvQ9y3tYSDTo/Rn3E6LdI40M8MeHugmajHGk=; b=zYU8kDLoSbcHApCEdCfMhLRn89
	/6NJGuAKjaP0LNh8e+SAAvVmChgD7Icmmok3e4W6DjWWySagIULswtptWkSuzoKjPQCP8J1gSTfVa
	7Q/gCRTtYr41SuVgklmzRKTUuf/AqExe3Y85HTG/fa5GbI28QDQDx/xOg1Wy0OkvhHy6SbSOaXv2a
	UhfFuMuSpAuF1pztBk1Xhjjyuhs4S6vV1hF5po/XGuOOSa7MSU4Jcc3Pyo2uzceHmozFCT1Xkg3XD
	uZAf2YSW/X8F7f8SLLxMXdJrGAVdFw5DR1dKyBxMwWI14gHceDvepM0MiwREw240zJ9YJzsTYN+3G
	HCK65C8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNEli-008o39-0O;
	Tue, 09 Jan 2024 16:15:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElO-008nnW-1H
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007l7-2u; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WCQ-HV; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7Pp-1Y;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:11 +0100
Message-Id: <20240109161527.3237581-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081538_444403_9B1EC7D9 
X-CRM114-Status: GOOD (  14.19  )
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
Subject: [PATCH v2 05/21] ARM: Layerscape: icid: rename functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We are working on unflattened trees, so use the more appropriate
function prefix "of_" rather than "fdt_"

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/icid.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index 11fab9c3b9..f0a9dc8063 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -292,7 +292,7 @@ static int get_fman_port_icid(int port_id, const struct fman_icid_id_table *tbl,
 	return -ENODEV;
 }
 
-static void fdt_set_iommu_prop(struct device_node *np, phandle iommu_handle,
+static void of_set_iommu_prop(struct device_node *np, phandle iommu_handle,
 			       int stream_id)
 {
 	u32 prop[2];
@@ -303,7 +303,7 @@ static void fdt_set_iommu_prop(struct device_node *np, phandle iommu_handle,
 	of_set_property(np, "iommus", prop, sizeof(prop), 1);
 }
 
-static void fdt_fixup_fman_port_icid_by_compat(struct device_node *root,
+static void of_fixup_fman_port_icid_by_compat(struct device_node *root,
 					       phandle iommu_handle,
 					       const char *compat)
 {
@@ -324,11 +324,11 @@ static void fdt_fixup_fman_port_icid_by_compat(struct device_node *root,
 			continue;
 		}
 
-		fdt_set_iommu_prop(np, iommu_handle, icid);
+		of_set_iommu_prop(np, iommu_handle, icid);
 	}
 }
 
-static void fdt_fixup_fman_icids(struct device_node *root, phandle iommu_handle)
+static void of_fixup_fman_icids(struct device_node *root, phandle iommu_handle)
 {
 	static const char * const compats[] = {
 		"fsl,fman-v3-port-oh",
@@ -338,7 +338,7 @@ static void fdt_fixup_fman_icids(struct device_node *root, phandle iommu_handle)
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(compats); i++)
-		fdt_fixup_fman_port_icid_by_compat(root, iommu_handle, compats[i]);
+		of_fixup_fman_port_icid_by_compat(root, iommu_handle, compats[i]);
 }
 
 struct qportal_info {
@@ -452,7 +452,7 @@ static void setup_qbman_portals(void)
 	inhibit_portals(qpaddr, ARRAY_SIZE(qp_info), QMAN_SP_CINH_SIZE);
 }
 
-static void fdt_set_qportal_iommu_prop(struct device_node *np, phandle iommu_handle,
+static void of_set_qportal_iommu_prop(struct device_node *np, phandle iommu_handle,
 			       const struct qportal_info *qp_info)
 {
 	u32 prop[6];
@@ -467,7 +467,7 @@ static void fdt_set_qportal_iommu_prop(struct device_node *np, phandle iommu_han
 	of_set_property(np, "iommus", prop, sizeof(prop), 1);
 }
 
-static void fdt_fixup_qportals(struct device_node *root, phandle iommu_handle)
+static void of_fixup_qportals(struct device_node *root, phandle iommu_handle)
 {
 	struct device_node *np;
 	unsigned int maj, min;
@@ -487,7 +487,7 @@ static void fdt_fixup_qportals(struct device_node *root, phandle iommu_handle)
 		if (ret)
 			continue;
 
-		fdt_set_qportal_iommu_prop(np, iommu_handle, &qp_info[cell_index]);
+		of_set_qportal_iommu_prop(np, iommu_handle, &qp_info[cell_index]);
 	}
 }
 
@@ -519,14 +519,14 @@ static int icid_of_fixup(struct device_node *root, void *context)
 				continue;
 
 			if (res.start == icid->compat_addr) {
-				fdt_set_iommu_prop(np, iommu_handle, icid->id);
+				of_set_iommu_prop(np, iommu_handle, icid->id);
 				break;
 			}
 		}
 	}
 
-	fdt_fixup_fman_icids(root, iommu_handle);
-	fdt_fixup_qportals(root, iommu_handle);
+	of_fixup_fman_icids(root, iommu_handle);
+	of_fixup_qportals(root, iommu_handle);
 
 	return 0;
 }
-- 
2.39.2



