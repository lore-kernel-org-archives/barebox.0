Delivery-date: Wed, 05 Jul 2023 16:43:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH3jb-00GKRd-VI
	for lore@lore.pengutronix.de; Wed, 05 Jul 2023 16:43:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH3jZ-0001TM-HJ
	for lore@pengutronix.de; Wed, 05 Jul 2023 16:43:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mo8XYOktWDq6Q5UZXHfDcsolBXPirLA+lS3koO70TMk=; b=TbItW7O92BXkGMa+I3MiVbksQI
	XsQZRTrxg7b0pZGxjgqssngs6pvd8YBx5DMZv9oYHX6Ia6gpN8WWZo+JO074DNglwiIb+hipOLgs0
	0t+2zU4icNCXbQDvNpm1C9dD8iGa9irEuuzxZIHj9vOjD7t6UOazIBBA0SE+JvqyUUWnQkQ+LpedT
	SjJDEBbmdLtDdXnoMpFJ6hMtor8vdJV3rOFulfcrAnez3WPlb4E9YT20VXQjLsl4bvEqlte68Fxqg
	4mDxCEAD3DhdCQvVs6VHAhRsVLmqX4CRMsaazl4qdGPrUUPVns34gDd4AuoSj6PQLN4WodTWQ4eRJ
	snRnhUhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3iH-00GAqi-0J;
	Wed, 05 Jul 2023 14:42:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3iC-00GAoN-0f
	for barebox@lists.infradead.org;
	Wed, 05 Jul 2023 14:42:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1qH3iA-00013O-TA; Wed, 05 Jul 2023 16:42:31 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed,  5 Jul 2023 16:42:19 +0200
Message-ID: <20230705144219.504194-6-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
References: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_074232_243136_436B51D2 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/6] ARM: i.MX: convert i.MX8MP/MM EVK to helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use the new helper for i.MX8MP/MM EVK boards. Also add the necessary
gencsf header to the imxcfg.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 .../nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg      |  1 +
 .../nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg      |  1 +
 images/Makefile.imx                                    | 10 ++--------
 3 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg b/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
index d6a536053e..a89243a78a 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
@@ -8,3 +8,4 @@ ivtofs 0x400
 
 flexspi_ivtofs 0x1000
 flexspi_fcfbofs 0x0
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg b/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
index 3bb44d199c..6b05c2c38c 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
@@ -8,3 +8,4 @@ ivtofs 0x0
 
 flexspi_ivtofs 0x0
 flexspi_fcfbofs 0x400
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 5691f2d70f..c988c68ded 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -444,10 +444,7 @@ FILE_barebox-kamstrup-mx7-concentrator.img = start_kamstrup_mx7_concentrator.pbl
 image-$(CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR) += barebox-kamstrup-mx7-concentrator.img
 
 # ----------------------- i.MX8mm based boards --------------------------
-pblb-$(CONFIG_MACH_NXP_IMX8MM_EVK) += start_nxp_imx8mm_evk
-CFG_start_nxp_imx8mm_evk.pblb.imximg = $(board)/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
-FILE_barebox-nxp-imx8mm-evk.img = start_nxp_imx8mm_evk.pblb.pimximg
-image-$(CONFIG_MACH_NXP_IMX8MM_EVK) += barebox-nxp-imx8mm-evk.img
+$(call build_imx8m_habv4img, CONFIG_MACH_NXP_IMX8MM_EVK, start_nxp_imx8mm_evk, nxp-imx8mm-evk/flash-header-imx8mm-evk, nxp-imx8mm-evk)
 
 pblb-$(CONFIG_MACH_PROTONIC_IMX8M) += start_prt_prt8mm
 CFG_start_prt_prt8mm.pblb.imximg = $(board)/protonic-imx8m/flash-header-prt8mm.imxcfg
@@ -466,10 +463,7 @@ FILE_barebox-nxp-imx8mn-evk.img = start_nxp_imx8mn_evk.pblb.pimximg
 image-$(CONFIG_MACH_NXP_IMX8MN_EVK) += barebox-nxp-imx8mn-evk.img
 
 # ----------------------- i.MX8mp based boards --------------------------
-pblb-$(CONFIG_MACH_NXP_IMX8MP_EVK) += start_nxp_imx8mp_evk
-CFG_start_nxp_imx8mp_evk.pblb.imximg = $(board)/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
-FILE_barebox-nxp-imx8mp-evk.img = start_nxp_imx8mp_evk.pblb.pimximg
-image-$(CONFIG_MACH_NXP_IMX8MP_EVK) += barebox-nxp-imx8mp-evk.img
+$(call build_imx8m_habv4img, CONFIG_MACH_NXP_IMX8MP_EVK, start_nxp_imx8mp_evk, nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg, nxp-imx8mp-evk)
 
 pblb-$(CONFIG_MACH_TQ_MBA8MPXL) += start_tqma8mpxl
 CFG_start_tqma8mpxl.pblb.imximg = $(board)/tqma8mpxl/flash-header-tqma8mpxl.imxcfg
-- 
2.41.0



