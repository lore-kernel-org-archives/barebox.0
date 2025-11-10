Delivery-date: Mon, 10 Nov 2025 21:35:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYcA-00HVQX-2u
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc5-0002JD-TH
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2yKHW+iyOH1pyoUUtzU0pWMVQGBDRzT+RdSmLMdzIJA=; b=O0Ve0qfawGnnTjyVZd0Si7US8H
	coN+zWxnahfNuf7QAzIVYloMwpZqpU1oPdX9BC05XrMVUNKhjkjcCRO5wo/p1eBOZOaQD8M9SCbmc
	JGLiyIGZimOE93/0ch3msbVSksn31flub2fBh6Myeb5UMkcSWIEVXqAn0GiThqJ4WfoxpOC80LADG
	gMjBDw9iBYzPW69TF2y3rHB9TpMv8b9CfnCSG1hHjkZczc5OGEIQq5qZDgy5vY5yXnPl/Ku2CiVNB
	KRLEZrnn84H7yxGObQ4ao79xwquRsQa9z3xOKahpxzGTB2GmKDoulDCjN07yWS44TXvxtRs9+FY8a
	av/RzHVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbM-000000065eq-14HI;
	Mon, 10 Nov 2025 20:35:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbG-000000065Xp-2VA7
	for barebox@bombadil.infradead.org;
	Mon, 10 Nov 2025 20:34:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=2yKHW+iyOH1pyoUUtzU0pWMVQGBDRzT+RdSmLMdzIJA=; b=Gq+cIIxJinlMpCF2ZhGtzxXOdM
	S8eBHOMuZdJXixfT0TWhn6ILzQg3jB0pguNwz46XUAYfGU4Aid5ri3n6QFQHyshPIfkLvnmoquJe1
	YMb+KNVHIrZ3did5UuDwItoL1eX8y60kyyxEBi3NmXigljakOhPWUBnpdNBcGpcdJOQD4mHdnJgqV
	bLhNKOwe3DWMP0Ae83LYYvauQvcsO+bCfloXOqId2R7CJgY5dqlPK6Af+mcKWz0+sCH1iB0vnUdx6
	ec/XT5BJHQ+23KPXcnohrmV7gIpivmMK9nM7zj4/vGXaDkMv5p+ygIduCSVZbD07u5Y+C/gVrGDeJ
	sNKChs2Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIXjW-0000000BgCs-0fAo
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 19:39:25 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb9-0001MT-1G; Mon, 10 Nov 2025 21:34:47 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:35:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-21-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_193922_364435_698925CE 
X-CRM114-Status: GOOD (  14.49  )
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
Subject: [PATCH 21/23] of: base: register optional OP-TEE overlay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The BL32 OP-TEE binary can provide an overlay which contains all
required configurations made by the secure-os, e.g. reserved-memory
nodes, the firmware-interface (smc) and so on.

This overlay can be used to uniform the OP-TEE configuration handling
for all OF platforms. While this patch is platform agnostic, the OP-TEE
overlay supply handling still depends on platform specific integrations.
Therefore only i.MX8MM/N/P platforms support this new feature yet.

However, prepare all ARMv8 platforms for the new loading mechanism.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/imx9.c          | 2 +-
 arch/arm/mach-rockchip/rockchip.c | 3 ++-
 drivers/of/base.c                 | 3 +++
 drivers/soc/imx/soc-imx8m.c       | 3 ++-
 4 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx9.c b/arch/arm/mach-imx/imx9.c
index dd4fbf099e601dda3c01a4e2d64a9552d2f616e5..7eccba4ed630c73b6b4fe266f742fe3d4ed63dd5 100644
--- a/arch/arm/mach-imx/imx9.c
+++ b/arch/arm/mach-imx/imx9.c
@@ -173,7 +173,7 @@ int imx93_init(void)
 	imx93_set_arm_clock();
 	imx93_bootsource();
 
-	if (IS_ENABLED(CONFIG_PBL_OPTEE)) {
+	if (IS_ENABLED(CONFIG_PBL_OPTEE) && !optee_overlay_applied()) {
 		static struct of_optee_fixup_data optee_fixup_data = {
 			.shm_size = OPTEE_SHM_SIZE,
 			.method = "smc",
diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index 0828f0fa72a9ad2495e012a42918c4b5431652e7..30cec0f0fe7cb651a1b157d5bb257fc67302422a 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -33,7 +33,8 @@ static int rockchip_init(void)
 {
 	const struct optee_header *hdr = rk_scratch_get_optee_hdr();
 
-	if (IS_ENABLED(CONFIG_PBL_OPTEE) && optee_verify_header(hdr) == 0) {
+	if (IS_ENABLED(CONFIG_PBL_OPTEE) && !optee_overlay_applied() &&
+	    optee_verify_header(hdr) == 0) {
 		static struct of_optee_fixup_data optee_fixup_data = {
 			.shm_size = OPTEE_SHM_SIZE,
 			.method = "smc",
diff --git a/drivers/of/base.c b/drivers/of/base.c
index c20fffb899a9c87910f424f5e4fd116f11cea546..203ebca1bf30cda5ce817a5d6b6eb437fc3befc6 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -22,6 +22,7 @@
 #include <linux/clk.h>
 #include <linux/ctype.h>
 #include <linux/err.h>
+#include <tee/optee.h>
 
 static struct device_node *root_node;
 
@@ -2129,6 +2130,8 @@ int barebox_register_fdt(const void *dtb)
 		return PTR_ERR(root);
 	}
 
+	optee_register_overlay();
+
 	return barebox_register_of(root);
 }
 
diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c
index 3b83284fcbfd56d543cc300b8d42771202aa0bbb..ecc5f30df35dfd89a485a3f6883ab33fbafb897e 100644
--- a/drivers/soc/imx/soc-imx8m.c
+++ b/drivers/soc/imx/soc-imx8m.c
@@ -207,7 +207,8 @@ static int imx8_soc_imx8m_init(struct soc_device_attribute *soc_dev_attr)
 	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
 	pr_info("%s unique ID: %s\n", cputypestr, uid);
 
-	if (IS_ENABLED(CONFIG_PBL_OPTEE) && imx8m_tzc380_is_enabled()) {
+	if (IS_ENABLED(CONFIG_PBL_OPTEE) && imx8m_tzc380_is_enabled() &&
+	    !optee_overlay_applied()) {
 		static struct of_optee_fixup_data optee_fixup_data = {
 			.shm_size = OPTEE_SHM_SIZE,
 			.method = "smc",

-- 
2.47.3



