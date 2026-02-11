Delivery-date: Wed, 11 Feb 2026 23:42:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuO-000gDA-15
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 23:42:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuM-0005Aa-Jo
	for lore@pengutronix.de; Wed, 11 Feb 2026 23:42:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KFYt1cQ43yFG1POuoa6jMMvaLnzg+EEVjQJk0zAavYc=; b=A+yoKMIfGEgaTp1gEB5WeuCnDz
	7Ov9j2ju47oYUNpmuh4XPEFmE1x0CoDX2eji35XGBPbVCaULIs+MkvgWR+A2gOnn36aYtcG15h3mu
	kmlzRsaUvShx8PxmFd/MRO8UJ0VyUsi5sZ4sEwsYwYnnpjYA3Y5gfbbxi5xeGbVIr/qIaGc6JYtBD
	iokgxbIzEudLIbjgkK+aMJFXOqVZJZ8pLWU1p+cbefXdqSuNsu+8CNmfSzTB1SeFB15+Oiv6PfmV7
	1wtzv9TUVpCvudjhZztDkrb+PdcMltex4oMbuJkPBYwRjX0FI/ywZOyUqOyB8aUJewQGKq3nAukTQ
	vQBsak9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqItn-000000018wY-3eL1;
	Wed, 11 Feb 2026 22:41:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqIth-000000018nn-47ei
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 22:41:28 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqItb-0004Xa-En; Wed, 11 Feb 2026 23:41:19 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 11 Feb 2026 23:41:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-v2025-09-0-topic-optee-of-handling-v3-13-dd83358ae624@pengutronix.de>
References: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
In-Reply-To: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_144126_811795_78F56DD4 
X-CRM114-Status: GOOD (  14.71  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 13/14] ARM: i.MX8M: Pass optional OP-TEE overlay to
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This commit adds the support to pass the optional OP-TEE overlay from
pbl to barebox for all i.MX8M SoCs.

There is no difference between ARMv7 and ARMv8, therefore the helper
name to pass the overlay is generic.

That being said, on ARMv8 it's required to use the
ARCH_IMX_ATF_PASS_BL_PARAMS mechanism, else the devicetree location
can't be passed to OP-TEE. Therefore a sanity check for ARMv8 is added.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index e4b4ca561094e2dac99f475b93efc8fc7e962d9e..f8b8089cb03f3d80e6684fc01d5d19cafd1d7856 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -877,6 +877,45 @@ upper_or_coalesced_range(unsigned long base0, unsigned long size0,
 	}
 }
 
+static void imx_optee_handoff_overlay(void)
+{
+	unsigned int early_fdt_sz;
+	u8 *early_fdt;
+
+	/*
+	 * On ARMv8 i.MX SoCs CONFIG_ARCH_IMX_ATF_PASS_BL_PARAMS must be enabled
+	 * else no FDT is passed to OP-TEE.
+	 */
+	if (IS_ENABLED(CONFIG_CPU_V8) &&
+	    !IS_ENABLED(CONFIG_ARCH_IMX_ATF_PASS_BL_PARAMS))
+		return;
+
+	early_fdt = imx_scratch_get_fdt(&early_fdt_sz);
+	if (IS_ERR(early_fdt)) {
+		pr_warn("Failed to get FDT scratch mem, skip register OP-TEE DTBO\n");
+		return;
+	}
+
+	/* Early FDT is optional */
+	if (!early_fdt)
+		return;
+
+	/*
+	 * OP-TEE DT handling is really cumbersome. In case an external DT was
+	 * supplied, OP-TEE re-use this DT and appends overlays if enabled.
+	 *
+	 * Register the whole early FDT as overlay and let the barebox common
+	 * code extract the __fragment__'s from the early FDT which should be
+	 * faster than doing it here manually via libfdt and no MMU.
+	 *
+	 * Note: This assumes that OP-TEE is the only one adding __fragment__'s.
+	 * This is always the case on ARMv7, but on ARMv8 the BL31 (TF-A) could
+	 * add __fragment__'s too. Since the barebox i.MX port doesn't pass the
+	 * FDT to the TF-A this is fine for now.
+	 */
+	optee_handoff_overlay(early_fdt, early_fdt_sz);
+}
+
 void __noreturn imx1_barebox_entry(void *boarddata)
 {
 	unsigned long base, size;
@@ -1020,6 +1059,7 @@ static void __noreturn imx8m_barebox_entry(void *boarddata, unsigned buswidth)
 {
 	imx8m_init_scratch_space(buswidth, false);
 	optee_set_membase(imx_scratch_get_optee_hdr());
+	imx_optee_handoff_overlay();
 	barebox_arm_entry(MX8M_DDR_CSD1_BASE_ADDR,
 			  imx8m_barebox_earlymem_size(buswidth), boarddata);
 }

-- 
2.47.3



