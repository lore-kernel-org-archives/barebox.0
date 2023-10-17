Delivery-date: Tue, 17 Oct 2023 16:55:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTc-00Bsgw-SC
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:55:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTa-0003ov-Or
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HqHHMqnoBd+CcfDPZqIoFDZaH7cFLr1TJtXEzsYdP3s=; b=sDkddKk/qsUboYxQBGjs33iBTW
	vbWJspAkRnZKfu6o+1+Chkpl3QpCEmgMYqwgrdkbcGB4N99gnE1VZnhYD1xABzB8MzIxt2VZ+vEXl
	pp/cbiIgKc7rrcae1im8jCa97pxghezlIiyhylHq2I7008IaYyMfIcsjMWFdqjz+9ayCrawxyyOAX
	rtqAUFACXXmuoe+l+khOg1SEmqI8DOQb+9pnR4pekqdroIy02J0uPFyJWmaUytbTBf3tlRUsmYR1B
	Px1BC4cId+qFMKFefo3XPeUqysHLpK9vqTo+97ZzS97K/lC7AiJl+WcMD6pkG/rUrPpz2EHVpyW2f
	oR5x+JTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslSL-00Cerc-0l;
	Tue, 17 Oct 2023 14:54:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ2-00CcMJ-0N
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:45 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPy-0001wJ-KX
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:11 +0200
Message-Id: <20231017145131.3069283-10-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_075138_429656_4040F6B0 
X-CRM114-Status: UNSURE (   9.86  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/29] ARM: i.MX: convert i.MX8M to helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Make use of the new helper function for all .pimximg images to cleanup
the Makefile and to have possible secure-boot image builds in place.

There are 3 i.MX8MQ platforms which don't use the .pimximg. I'm not sure
if this is intended but I left these out for now.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
[m.felsch@pengutronix.de: convert all possible make targets]
[m.felsch@pengutronix.de: adapt commit message]
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- unchanged
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 images/Makefile.imx | 97 ++++++++++++---------------------------------
 1 file changed, 26 insertions(+), 71 deletions(-)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index 76a0f606fe35..7fc40132fc95 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -444,83 +444,38 @@ FILE_barebox-kamstrup-mx7-concentrator.img = start_kamstrup_mx7_concentrator.pbl
 image-$(CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR) += barebox-kamstrup-mx7-concentrator.img
 
 # ----------------------- i.MX8mm based boards --------------------------
-pblb-$(CONFIG_MACH_NXP_IMX8MM_EVK) += start_nxp_imx8mm_evk
-CFG_start_nxp_imx8mm_evk.pblb.imximg = $(board)/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
-FILE_barebox-nxp-imx8mm-evk.img = start_nxp_imx8mm_evk.pblb.pimximg
-image-$(CONFIG_MACH_NXP_IMX8MM_EVK) += barebox-nxp-imx8mm-evk.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX8MM) += start_phyboard_polis_rdk_ddr_autodetect
-CFG_start_phyboard_polis_rdk_ddr_autodetect.pblb.imximg = $(board)/phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk.imxcfg
-FILE_barebox-phyboard-polis-rdk-ddr-autodetect.img = start_phyboard_polis_rdk_ddr_autodetect.pblb.pimximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX8MM) += barebox-phyboard-polis-rdk-ddr-autodetect.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX8MM) += start_phyboard_polis_rdk_ddr_1g
-CFG_start_phyboard_polis_rdk_ddr_1g.pblb.imximg = $(board)/phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk.imxcfg
-FILE_barebox-phyboard-polis-rdk-ddr-1g.img = start_phyboard_polis_rdk_ddr_1g.pblb.pimximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX8MM) += barebox-phyboard-polis-rdk-ddr-1g.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX8MM) += start_phyboard_polis_rdk_ddr_2g
-CFG_start_phyboard_polis_rdk_ddr_2g.pblb.imximg = $(board)/phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk.imxcfg
-FILE_barebox-phyboard-polis-rdk-ddr-2g.img = start_phyboard_polis_rdk_ddr_2g.pblb.pimximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX8MM) += barebox-phyboard-polis-rdk-ddr-2g.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX8MM) += start_phyboard_polis_rdk_ddr_4g
-CFG_start_phyboard_polis_rdk_ddr_4g.pblb.imximg = $(board)/phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk.imxcfg
-FILE_barebox-phyboard-polis-rdk-ddr-4g.img = start_phyboard_polis_rdk_ddr_4g.pblb.pimximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX8MM) += barebox-phyboard-polis-rdk-ddr-4g.img
-
-pblb-$(CONFIG_MACH_PROTONIC_IMX8M) += start_prt_prt8mm
-CFG_start_prt_prt8mm.pblb.imximg = $(board)/protonic-imx8m/flash-header-prt8mm.imxcfg
-FILE_barebox-prt-prt8mm.img = start_prt_prt8mm.pblb.pimximg
-image-$(CONFIG_MACH_PROTONIC_IMX8M) += barebox-prt-prt8mm.img
-
-pblb-$(CONFIG_MACH_INNOCOMM_WB15) += start_innocomm_wb15_evk
-CFG_start_innocomm_wb15_evk.pblb.imximg = $(board)/innocomm-imx8mm-wb15/flash-header-imx8mm-wb15.imxcfg
-FILE_barebox-innocomm-imx8mm-wb15-evk.img = start_innocomm_wb15_evk.pblb.pimximg
-image-$(CONFIG_MACH_INNOCOMM_WB15) += barebox-innocomm-imx8mm-wb15-evk.img
+$(call build_imx8m_habv4img, CONFIG_MACH_NXP_IMX8MM_EVK, start_nxp_imx8mm_evk, nxp-imx8mm-evk/flash-header-imx8mm-evk, nxp-imx8mm-evk)
+
+$(call build_imx8m_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX8MM, start_phyboard_polis_rdk_ddr_autodetect, phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk, phyboard-polis-rdk-ddr-autodetect)
+
+$(call build_imx8m_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX8MM, start_phyboard_polis_rdk_ddr_1g, phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk, phyboard-polis-rdk-ddr-1g)
+
+$(call build_imx8m_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX8MM, start_phyboard_polis_rdk_ddr_2g, phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk, phyboard-polis-rdk-ddr-2g)
+
+$(call build_imx8m_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX8MM, start_phyboard_polis_rdk_ddr_4g, phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk, phyboard-polis-rdk-ddr-4g)
+
+$(call build_imx8m_habv4img, CONFIG_MACH_PROTONIC_IMX8M, start_prt_prt8mm, protonic-imx8m/flash-header-prt8mm, prt-prt8mm)
+
+$(call build_imx8m_habv4img, CONFIG_MACH_INNOCOMM_WB15, start_innocomm_wb15_evk, innocomm-imx8mm-wb15/flash-header-imx8mm-wb15, innocomm-imx8mm-wb15-evk)
 
 # ----------------------- i.MX8mn based boards --------------------------
-pblb-$(CONFIG_MACH_NXP_IMX8MN_EVK) += start_nxp_imx8mn_evk
-CFG_start_nxp_imx8mn_evk.pblb.imximg = $(board)/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
-FILE_barebox-nxp-imx8mn-evk.img = start_nxp_imx8mn_evk.pblb.pimximg
-image-$(CONFIG_MACH_NXP_IMX8MN_EVK) += barebox-nxp-imx8mn-evk.img
+$(call build_imx8m_habv4img, CONFIG_MACH_NXP_IMX8MN_EVK, start_nxp_imx8mn_evk, nxp-imx8mn-evk/flash-header-imx8mn-evk, nxp-imx8mn-evk)
 
 # ----------------------- i.MX8mp based boards --------------------------
-pblb-$(CONFIG_MACH_NXP_IMX8MP_EVK) += start_nxp_imx8mp_evk
-CFG_start_nxp_imx8mp_evk.pblb.imximg = $(board)/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
-FILE_barebox-nxp-imx8mp-evk.img = start_nxp_imx8mp_evk.pblb.pimximg
-image-$(CONFIG_MACH_NXP_IMX8MP_EVK) += barebox-nxp-imx8mp-evk.img
-
-pblb-$(CONFIG_MACH_SKOV_IMX8MP) += start_skov_imx8mp
-CFG_start_skov_imx8mp.pblb.imximg = $(board)/skov-imx8mp/flash-header-skov-imx8mp.imxcfg
-FILE_barebox-skov-imx8mp.img = start_skov_imx8mp.pblb.pimximg
-image-$(CONFIG_MACH_SKOV_IMX8MP) += barebox-skov-imx8mp.img
-
-pblb-$(CONFIG_MACH_TQ_MBA8MPXL) += start_tqma8mpxl
-CFG_start_tqma8mpxl.pblb.imximg = $(board)/tqma8mpxl/flash-header-tqma8mpxl.imxcfg
-FILE_barebox-tqma8mpxl.img = start_tqma8mpxl.pblb.pimximg
-image-$(CONFIG_MACH_TQ_MBA8MPXL) += barebox-tqma8mpxl.img
-
-pblb-$(CONFIG_MACH_POLYHEX_DEBIX) += start_polyhex_debix
-CFG_start_polyhex_debix.pblb.imximg = $(board)/polyhex-debix/flash-header-polyhex-debix.imxcfg
-FILE_barebox-polyhex-debix.img = start_polyhex_debix.pblb.pimximg
-image-$(CONFIG_MACH_POLYHEX_DEBIX) += barebox-polyhex-debix.img
-
-pblb-$(CONFIG_MACH_POLYHEX_DEBIX) += start_polyhex_debix_som_a_8g
-CFG_start_polyhex_debix_som_a_8g.pblb.imximg = $(board)/polyhex-debix/flash-header-polyhex-debix.imxcfg
-FILE_barebox-polyhex-debix-som-a-8g.img = start_polyhex_debix_som_a_8g.pblb.pimximg
-image-$(CONFIG_MACH_POLYHEX_DEBIX) += barebox-polyhex-debix-som-a-8g.img
-
-pblb-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += start_variscite_imx8mp_dart
-CFG_start_variscite_imx8mp_dart.pblb.imximg = $(board)/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg
-FILE_barebox-variscite-imx8mp-dart-cb.img = start_variscite_imx8mp_dart.pblb.pimximg
-image-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += barebox-variscite-imx8mp-dart-cb.img
+$(call build_imx8m_habv4img, CONFIG_MACH_NXP_IMX8MP_EVK, start_nxp_imx8mp_evk, nxp-imx8mp-evk/flash-header-imx8mp-evk, nxp-imx8mp-evk)
+
+$(call build_imx8m_habv4img, CONFIG_MACH_SKOV_IMX8MP, start_skov_imx8mp, skov-imx8mp/flash-header-skov-imx8mp, skov-imx8mp)
+
+$(call build_imx8m_habv4img, CONFIG_MACH_TQ_MBA8MPXL, start_tqma8mpxl, tqma8mpxl/flash-header-tqma8mpxl, tqma8mpxl)
+
+$(call build_imx8m_habv4img, CONFIG_MACH_POLYHEX_DEBIX, start_polyhex_debix, polyhex-debix/flash-header-polyhex-debix, polyhex-debix)
+
+$(call build_imx8m_habv4img, CONFIG_MACH_POLYHEX_DEBIX, start_polyhex_debix_som_a_8g, polyhex-debix/flash-header-polyhex-debix, polyhex-debix-som-a-8g)
+
+$(call build_imx8m_habv4img, CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP, start_variscite_imx8mp_dart, variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart, variscite-imx8mp-dart-cb)
 
 # ----------------------- i.MX8mq based boards --------------------------
-pblb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
-CFG_start_nxp_imx8mq_evk.pblb.imximg = $(board)/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
-FILE_barebox-nxp-imx8mq-evk.img = start_nxp_imx8mq_evk.pblb.pimximg
-image-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += barebox-nxp-imx8mq-evk.img
+$(call build_imx8m_habv4img, CONFIG_MACH_NXP_IMX8MQ_EVK, start_nxp_imx8mq_evk, nxp-imx8mq-evk/flash-header-imx8mq-evk, nxp-imx8mq-evk)
 
 pblb-$(CONFIG_MACH_ZII_IMX8MQ_DEV) += start_zii_imx8mq_dev
 CFG_start_zii_imx8mq_dev.pblb.imximg = $(board)/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
-- 
2.39.2



