Delivery-date: Tue, 09 Jan 2024 10:17:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Ey-00A67l-27
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 10:17:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Ex-0000zz-VS
	for lore@pengutronix.de; Tue, 09 Jan 2024 10:17:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ckeAvsYYpZ729TV2yJJAKGJ0ZnwRRa6/cDlvZoHWRL8=; b=TYizooWa57AM686KyO47BN8Jsm
	gLSW2Jm+tveG5rabHBphOJl8WgA7FIPVg4QmR/qHVqBAjH84eSt1HTqjir3XWZK2RWoC9ea302eyw
	oL+hHwiTKL+ej1dJuPKQAMJyKKhULZlY4yLXo9KwARo/i6Jlg2mMacVIflelsSy5MpB0oFGmOhgxY
	n0cR6npuXgSE+CGN1X7vaAfHcrDHTTnEh+9Kvi5x321T9CxtzQHtb344D5AIBzG1UMqXXu3/6W+I/
	jKkzVxRHpHVjQempFELDXFTNAynCHnsOeuIjh75e9tw/v8jjWe+LR/kxvXnE60FGSfAnNIFoLutY/
	1VjJNv7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8Da-007SNN-2A;
	Tue, 09 Jan 2024 09:16:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8DS-007SIk-0j
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 09:16:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DP-0000Ol-1j; Tue, 09 Jan 2024 10:16:07 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DO-001RWY-Hf; Tue, 09 Jan 2024 10:16:06 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DO-001A8y-1X;
	Tue, 09 Jan 2024 10:16:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 10:15:56 +0100
Message-Id: <20240109091603.235589-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109091603.235589-1-s.hauer@pengutronix.de>
References: <20240109091603.235589-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_011610_262214_388DA8C5 
X-CRM114-Status: GOOD (  13.21  )
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
Subject: [PATCH 03/10] ARM: Layerscape: icid: make readonly arrays const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Several arrays used in icid.c are statically initialised and not
modified during runtime. Also they are only used locally, so make
them static const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/icid.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index f5188fc91e..11fab9c3b9 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -81,7 +81,7 @@ struct fman_icid_id_table {
 #define SEC_QIIC_LS	0x70024
 #define	SEC_IRBAR_JRn(n) 	(0x10000 * ((n) + 1))
 
-struct icid_id_table icid_tbl_ls1046a[] = {
+static const struct icid_id_table icid_tbl_ls1046a[] = {
 	{
 		.compat = "fsl,qman",
 		.id = DPAA1_SID_START,
@@ -209,7 +209,7 @@ struct icid_id_table icid_tbl_ls1046a[] = {
 	},
 };
 
-struct fman_icid_id_table fman_icid_tbl_ls1046a[] = {
+static const struct fman_icid_id_table fman_icid_tbl_ls1046a[] = {
 	{
 		.port_id = 0x02,
 		.icid = DPAA1_SID_END,
@@ -279,7 +279,7 @@ struct fman_icid_id_table fman_icid_tbl_ls1046a[] = {
 	},
 };
 
-static int get_fman_port_icid(int port_id, struct fman_icid_id_table *tbl,
+static int get_fman_port_icid(int port_id, const struct fman_icid_id_table *tbl,
 		       const int size)
 {
 	int i;
@@ -348,7 +348,7 @@ struct qportal_info {
 	u8 sdest;
 };
 
-struct qportal_info qp_info[] = {
+static const struct qportal_info qp_info[] = {
 	{
 		.dicid = DPAA1_SID_END,
 		.ficid = DPAA1_SID_END,
@@ -440,7 +440,7 @@ static void setup_qbman_portals(void)
 	out_be32(&qman->qcsp_bar, (u32)QMAN_MEM_PHYS);
 
 	for (i = 0; i < ARRAY_SIZE(qp_info); i++) {
-		struct qportal_info *qi = &qp_info[i];
+		const struct qportal_info *qi = &qp_info[i];
 
 		out_be32(&qman->qcsp[i].qcsp_lio_cfg, (qi->icid << 16) | qi->dicid);
 		/* set frame icid */
@@ -453,7 +453,7 @@ static void setup_qbman_portals(void)
 }
 
 static void fdt_set_qportal_iommu_prop(struct device_node *np, phandle iommu_handle,
-			       struct qportal_info *qp_info)
+			       const struct qportal_info *qp_info)
 {
 	u32 prop[6];
 
@@ -506,7 +506,7 @@ static int icid_of_fixup(struct device_node *root, void *context)
 	iommu_handle = of_node_create_phandle(iommu);
 
 	for (i = 0; i < ARRAY_SIZE(icid_tbl_ls1046a); i++) {
-		struct icid_id_table *icid = &icid_tbl_ls1046a[i];
+		const struct icid_id_table *icid = &icid_tbl_ls1046a[i];
 		struct device_node *np;
 
 		if (!icid->compat)
@@ -538,14 +538,14 @@ void ls1046a_setup_icids(void)
 
 	/* setup general icid offsets */
 	for (i = 0; i < ARRAY_SIZE(icid_tbl_ls1046a); i++) {
-		struct icid_id_table *icid = &icid_tbl_ls1046a[i];
+		const struct icid_id_table *icid = &icid_tbl_ls1046a[i];
 
 		out_be32((u32 *)(icid->reg_addr), icid->reg);
 	}
 
 	/* setup fman icids */
 	for (i = 0; i < ARRAY_SIZE(fman_icid_tbl_ls1046a); i++) {
-		struct fman_icid_id_table *icid = &fman_icid_tbl_ls1046a[i];
+		const struct fman_icid_id_table *icid = &fman_icid_tbl_ls1046a[i];
 
 		out_be32(&fm->fm_bmi_common.fmbm_ppid[icid->port_id - 1],
 			 icid->icid);
-- 
2.39.2



