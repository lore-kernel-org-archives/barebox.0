Delivery-date: Wed, 25 Feb 2026 16:29:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvGox-005ZIc-1g
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 16:29:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvGox-000566-MH
	for lore@pengutronix.de; Wed, 25 Feb 2026 16:29:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZsZna7QqonnW8JiZBv9b9b1HvP2JIHR3V9S63lTiq58=; b=iO5z1PFubbKRimMtVEDysmJRpy
	XR7Rrazs4ouuKWkxUYKCv7caIilqw0rOn47VSFird8S/+NWRO5ZtU8ganuCL+YN7eQ7Oa+52fv34C
	kA2U3z+30h3EcTbuRbgmA6cBzJCM5rD7G/Dv88YlNMC3Kw6kikDTd3fLbkEdYpHBYxO5BlIHHkFOS
	p6j6YSL+s+8WKUq1WqQpZE09JuMi/Wfhqf9cMSDuY2ZG48oi2N1m0G6xYExI0MWm5jFwvt5SeDGgW
	s9IF+cs30Iip+LH1B3PKwSSggFzAUtkx8MdOS278HAO6sB4AfS+Izfp0c/jsE82Fu2bFzNOBYk9kD
	Sl0AAsow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGoX-00000004I0R-179S;
	Wed, 25 Feb 2026 15:28:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGoV-00000004HzD-0OKE
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 15:28:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvGoT-0004um-Fg; Wed, 25 Feb 2026 16:28:33 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvGoR-002aJl-32;
	Wed, 25 Feb 2026 16:28:33 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvGoT-00000001s3s-0noS;
	Wed, 25 Feb 2026 16:28:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Feb 2026 16:28:30 +0100
Message-ID: <20260225152832.446129-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260225152832.446129-1-a.fatoum@pengutronix.de>
References: <20260225152832.446129-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_072835_128421_422DBF99 
X-CRM114-Status: GOOD (  14.68  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] ARM: Layerscape: icid: fixup ICID also for new fsl,ls1028a-dwc3 compat
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Newer kernel device trees no longer have the snps,dwc3 compatible we
match against, but instead have fsl,ls1028a-dwc3.

Adapt the code to match against both as we don't know beforehand what
flavor the kernel device tree will have.

Fixes: ea73c9d2c24e ("Revert "ARM64: dts: Layerscape: workaround v6.19-rc1 DT sync DWC3 breakage"")
Fixes: a3bf6c16f77d ("dts: update to v6.19-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-layerscape/icid.c | 47 +++++++++++++++++++++------------
 1 file changed, 30 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index ebe3896075b7..2cdeaa3a8bca 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -63,6 +63,7 @@
 
 struct icid_id_table {
 	const char *compat;
+	const char *alt_compat;
 	u32 id;
 	u32 reg;
 	phys_addr_t compat_addr;
@@ -93,6 +94,27 @@ static phandle of_get_iommu_handle(struct device_node *root)
 	return of_node_create_phandle(iommu);
 }
 
+static bool of_fixup_icid_node(struct device_node *root, phandle iommu_handle,
+			       const struct icid_id_table *icid,
+			       const char *compat)
+{
+	struct device_node *np;
+
+	for_each_compatible_node_from(np, root, NULL, compat) {
+		struct resource res;
+
+		if (of_address_to_resource(np, 0, &res))
+			continue;
+
+		if (res.start == icid->compat_addr) {
+			of_set_iommu_prop(np, iommu_handle, icid->id);
+			return true;
+		}
+	}
+
+	return false;
+}
+
 static int of_fixup_icid(struct device_node *root, phandle iommu_handle,
 			 const struct icid_id_table *icid_table, int num_icid)
 {
@@ -100,22 +122,13 @@ static int of_fixup_icid(struct device_node *root, phandle iommu_handle,
 
 	for (i = 0; i < num_icid; i++) {
 		const struct icid_id_table *icid = &icid_table[i];
-		struct device_node *np;
 
 		if (!icid->compat)
 			continue;
 
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
+		if (!of_fixup_icid_node(root, iommu_handle, icid, icid->compat)
+		    && icid->alt_compat)
+			of_fixup_icid_node(root, iommu_handle, icid, icid->alt_compat);
 	}
 
 	return 0;
@@ -168,19 +181,19 @@ static const struct icid_id_table icid_tbl_ls1046a[] = {
 		.compat_addr = LSCH2_ESDHC_ADDR,
 		.reg_addr = offsetof(struct ccsr_scfg, sdhc_icid) + LSCH2_SCFG_ADDR,
 	}, {
-		.compat = "snps,dwc3",
+		.compat = "fsl,ls1028a-dwc3", .alt_compat = "snps,dwc3",
 		.id = FSL_USB1_STREAM_ID,
 		.reg = (((FSL_USB1_STREAM_ID) << 24) | (1 << 23)),
 		.compat_addr = LSCH2_XHCI_USB1_ADDR,
 		.reg_addr = offsetof(struct ccsr_scfg, usb1_icid) + LSCH2_SCFG_ADDR,
 	}, {
-		.compat = "snps,dwc3",
+		.compat = "fsl,ls1028a-dwc3", .alt_compat = "snps,dwc3",
 		.id = FSL_USB2_STREAM_ID,
 		.reg = (((FSL_USB2_STREAM_ID) << 24) | (1 << 23)),
 		.compat_addr = LSCH2_XHCI_USB2_ADDR,
 		.reg_addr = offsetof(struct ccsr_scfg, usb2_icid) + LSCH2_SCFG_ADDR,
 	}, {
-		.compat = "snps,dwc3",
+		.compat = "fsl,ls1028a-dwc3", .alt_compat = "snps,dwc3",
 		.id = FSL_USB3_STREAM_ID,
 		.reg = (((FSL_USB3_STREAM_ID) << 24) | (1 << 23)),
 		.compat_addr = LSCH2_XHCI_USB3_ADDR,
@@ -584,13 +597,13 @@ void ls1046a_setup_icids(void)
 
 static const struct icid_id_table icid_tbl_ls1028a[] = {
 	{
-		.compat = "snps,dwc3",
+		.compat = "fsl,ls1028a-dwc3", .alt_compat = "snps,dwc3",
 		.id = 1,
 		.reg = 1,
 		.compat_addr = LSCH3_XHCI_USB1_ADDR,
 		.reg_addr = offsetof(struct lsch3_ccsr_gur, usb1_amqr) + LSCH3_GUTS_ADDR,
 	}, {
-		.compat = "snps,dwc3",
+		.compat = "fsl,ls1028a-dwc3", .alt_compat = "snps,dwc3",
 		.id = 2,
 		.reg = 2,
 		.compat_addr = LSCH3_XHCI_USB2_ADDR,
-- 
2.47.3



