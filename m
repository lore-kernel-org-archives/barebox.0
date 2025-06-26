Delivery-date: Thu, 26 Jun 2025 16:46:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUnrg-00BIlH-2O
	for lore@lore.pengutronix.de;
	Thu, 26 Jun 2025 16:46:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUnrf-0007xA-Ff
	for lore@pengutronix.de; Thu, 26 Jun 2025 16:46:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rZaJB8AWwCh9JdEJSFm0SCfgRILKAVCkbnIo+jFkyos=; b=MdDMOAcc8C/bBnX39HJcomqGAD
	Afmgy/K3gojtg6MDTivIP5uGCwIYhQ5YEsBECo6KQbJvZCssiWb5hGw3jaQhMIyhUraG/aGCHyPwv
	aozVE82rkx2SgpvI8y63lF6Twar1KbioAX4btdsr/z/lSRfOoBTBNafj38/8Bhckwf2zBKmJRWw7b
	ieTFbGl/O4aJ2jBEp04qZTXwzngt+/90eenVZ1Dz5y/mpngqM/jZH1vpUIe/sEtpR277ECcFp8gsS
	d8aQoWV6N7StJIkwb1zw36lMnKPNx2n0qGEvkuPsd24N9pjJoq2+6AxEOQPBI21qcQ/cnVqGTf6G5
	2snzPPDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnrA-0000000BySF-3AnD;
	Thu, 26 Jun 2025 14:45:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnr8-0000000ByPv-00HR
	for barebox@lists.infradead.org;
	Thu, 26 Jun 2025 14:45:39 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uUnr4-0006pw-TK; Thu, 26 Jun 2025 16:45:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 26 Jun 2025 16:45:23 +0200
Message-Id: <20250626144527.416697-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250626144527.416697-1-m.felsch@pengutronix.de>
References: <20250626144527.416697-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_074538_037780_C091D22D 
X-CRM114-Status: UNSURE (   8.36  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/6] ARM: i.MX6Q: add imx6_get_mmdc_sdram_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a helper to query the MMDC configured SDRAM size.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- Add Ahmad r-b

 arch/arm/mach-imx/esdctl.c | 5 +++++
 include/mach/imx/esdctl.h  | 1 +
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 701ca0ac1f37..7a09f43071c2 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -286,6 +286,11 @@ static inline resource_size_t imx6_mmdc_sdram_size(void __iomem *mmdcbase)
 	return size;
 }
 
+resource_size_t imx6_get_mmdc_sdram_size(void)
+{
+	return imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR));
+}
+
 static int imx6_mmdc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 {
 	return arm_add_mem_device("ram0", data->base0,
diff --git a/include/mach/imx/esdctl.h b/include/mach/imx/esdctl.h
index d79bf17959e6..97bd444b1a4c 100644
--- a/include/mach/imx/esdctl.h
+++ b/include/mach/imx/esdctl.h
@@ -151,6 +151,7 @@ void __noreturn imx7d_barebox_entry(void *boarddata);
 void __noreturn imx93_barebox_entry(void *boarddata);
 #define imx6sx_barebox_entry(boarddata) imx6ul_barebox_entry(boarddata)
 void imx_esdctl_disable(void);
+resource_size_t imx6_get_mmdc_sdram_size(void);
 resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth);
 resource_size_t imx9_ddrc_sdram_size(void);
 #endif
-- 
2.39.5



