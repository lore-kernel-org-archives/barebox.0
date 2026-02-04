Delivery-date: Wed, 04 Feb 2026 21:02:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4o-008rnm-22
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 21:02:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4l-0005uh-4K
	for lore@pengutronix.de; Wed, 04 Feb 2026 21:02:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/0ygQd9ybs30R7DeEQW6+x79e0twA8YQicUXoK/sobw=; b=oo3E157Acr/6NRdSarEuz1AzcJ
	dsrfucWTjY38jgTgXX0aW3tl+icx6KEScSwSpKOYWdnuCveKEIRdo4UbRyyN20sfOq2sGfqmvZRX5
	INaf2mmH38wfMrI9r35y0256z6q+m4MrEh+6tT0dhx7v3dP19OB5u728J43MUyHQCCLtI4mOPxloc
	ixdFu/wm29gy5VALIfz/LyY/nxwyc7QQF3tSZpsBnExM28mG6EDzcvzA3qcEzU3Houqb7jgmD4Ow7
	WrvdQfUNFPB63mFpRgyR9rVMaaBqlDKkQdy92Uaz633KA70ixUj4Y5CU/YYVBjuWLtcTftMQhysQC
	pICKAh8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj47-0000000912g-014h;
	Wed, 04 Feb 2026 20:01:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj42-000000090yz-3sax
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 20:01:29 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vnj41-0005Eh-5N; Wed, 04 Feb 2026 21:01:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 04 Feb 2026 21:01:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-v2025-09-0-topic-optee-of-handling-v2-14-da075e6818e0@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
In-Reply-To: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_120127_004109_EE50BCD8 
X-CRM114-Status: GOOD (  15.26  )
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
Subject: [PATCH v2 14/15] of: base: register optional OP-TEE overlay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The BL32 OP-TEE binary can provide an overlay which contains all
required configurations made by the secure-os, e.g. reserved-memory
nodes, the firmware-interface (smc) and so on.

This overlay can be used to uniform the OP-TEE configuration handling
for all OF platforms. While this patch is platform agnostic, the OP-TEE
overlay handling still depends on platform and machine specific
integrations.

The previous patches added the required platform support for all
i.MX8MM/N/P SoCs, but each i.MX8MM/N/P machine need add the machine
support by itself.

Allthough only i.MX8MM/N/P platform support was added, this commit
prepare all ARMv8 platforms for the new overlay mechanism.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/imx9.c          | 2 +-
 arch/arm/mach-rockchip/rockchip.c | 3 ++-
 drivers/of/base.c                 | 3 +++
 drivers/soc/imx/soc-imx8m.c       | 3 ++-
 4 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx9.c b/arch/arm/mach-imx/imx9.c
index 25ba7e444843ea5ae817dd8103074e5a50fb48f0..ada4048d4ca07b5a2f8a5ee5ceb3e3b3ecb24af8 100644
--- a/arch/arm/mach-imx/imx9.c
+++ b/arch/arm/mach-imx/imx9.c
@@ -174,7 +174,7 @@ int imx93_init(void)
 	imx93_set_arm_clock();
 	imx93_bootsource();
 
-	if (IS_ENABLED(CONFIG_PBL_OPTEE)) {
+	if (IS_ENABLED(CONFIG_PBL_OPTEE) && !optee_overlay_registered()) {
 		static struct of_optee_fixup_data optee_fixup_data = {
 			.shm_size = OPTEE_SHM_SIZE,
 			.method = "smc",
diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index 0828f0fa72a9ad2495e012a42918c4b5431652e7..6ed7802cc695a61253c937b24f5b1c2a1eea7732 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -33,7 +33,8 @@ static int rockchip_init(void)
 {
 	const struct optee_header *hdr = rk_scratch_get_optee_hdr();
 
-	if (IS_ENABLED(CONFIG_PBL_OPTEE) && optee_verify_header(hdr) == 0) {
+	if (IS_ENABLED(CONFIG_PBL_OPTEE) && !optee_overlay_registered() &&
+	    optee_verify_header(hdr) == 0) {
 		static struct of_optee_fixup_data optee_fixup_data = {
 			.shm_size = OPTEE_SHM_SIZE,
 			.method = "smc",
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 54fd458bd9a1e38e665768d911934960358b42a9..3110f377212b272ae09bb15b20803b718c734f32 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -23,6 +23,7 @@
 #include <linux/ctype.h>
 #include <linux/err.h>
 #include <pm_domain.h>
+#include <tee/optee.h>
 
 static struct device_node *root_node;
 
@@ -2133,6 +2134,8 @@ int barebox_register_fdt(const void *dtb)
 		return PTR_ERR(root);
 	}
 
+	optee_register_overlay();
+
 	return barebox_register_of(root);
 }
 
diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c
index 3b83284fcbfd56d543cc300b8d42771202aa0bbb..695fc3b027ae81cc8c83cbf27aff261c0459aa8a 100644
--- a/drivers/soc/imx/soc-imx8m.c
+++ b/drivers/soc/imx/soc-imx8m.c
@@ -207,7 +207,8 @@ static int imx8_soc_imx8m_init(struct soc_device_attribute *soc_dev_attr)
 	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
 	pr_info("%s unique ID: %s\n", cputypestr, uid);
 
-	if (IS_ENABLED(CONFIG_PBL_OPTEE) && imx8m_tzc380_is_enabled()) {
+	if (IS_ENABLED(CONFIG_PBL_OPTEE) && imx8m_tzc380_is_enabled() &&
+	    !optee_overlay_registered()) {
 		static struct of_optee_fixup_data optee_fixup_data = {
 			.shm_size = OPTEE_SHM_SIZE,
 			.method = "smc",

-- 
2.47.3



