Delivery-date: Wed, 10 Jan 2024 17:06:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb62-00Bojs-0F
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 17:06:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb61-0003n4-EX
	for lore@pengutronix.de; Wed, 10 Jan 2024 17:06:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x75ICdJAbvrL70Y7ZaAONYisPtS0nHBEwH3Ntk8y1LA=; b=H2JE6ml1FYjwInugBOAkIcgIk2
	WaPjjaI5CqFhtdyciFWdmp5PokbG7Emi+1yuG7wyRSglRsTj+7OumZPTTo+phdmdq/VjK1kDer/6V
	muKxAKcYMizORtO19A60EMcAaAU6qJW21nSetfJrWP/5PFMyxx5wmP5dJMnzF6MgOovYzGEdalUlQ
	JzJl5NfK6coREZLa/QnngXiYCnULs8C9OKwNplw7ay7iTQ/bVEfSzaqkkHA7sVWnIpkG5Qr8q/D1A
	dJaSULyWiZ3SlIt/I6/3eSOtrVWxb7fIFHMB+QM7bkMJySLBgEmy1qd45WO4Rns7PDtOMxWG4ifpp
	pIG9N7Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb53-00Cmlk-2u;
	Wed, 10 Jan 2024 16:05:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb50-00Cmjk-2x
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 16:05:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb4z-0003XD-ND; Wed, 10 Jan 2024 17:05:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb4z-001jy4-AQ; Wed, 10 Jan 2024 17:05:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-00HLtL-0A;
	Wed, 10 Jan 2024 17:01:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jan 2024 17:01:12 +0100
Message-Id: <20240110160112.4134162-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
References: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_080522_992481_792FE75B 
X-CRM114-Status: GOOD (  14.47  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 10/11] ARM: layerscape: configure all DMA masters to be cache-coherent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Upstream device tree now has /soc/dma-coherent, which breaks USB in
Linux v6.1 when kernel is booted with barebox. Fix this by:

  - setting the snoop bits for the DMA masters, so we properly support
    Linux >= v6.1 DTs

  - fixing up cache coherency setting into kernel DT whenever barebox
    DT has /soc/dma-coherent to support older device trees

The latter is done automatically when OF_DMA_COHERENCY is selected, so
add the missing snoop bits here.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - remove DT fixups introduced earlier
  - DT fixup split into previous commit
---
 arch/arm/Kconfig                            |  1 +
 arch/arm/dts/fsl-ls1046a.dtsi               | 21 ---------------------
 arch/arm/mach-layerscape/lowlevel-ls1046a.c | 10 ++++++----
 include/soc/fsl/immap_lsch2.h               |  7 +++++++
 4 files changed, 14 insertions(+), 25 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 0557567a599f..089ce43c88bd 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -246,6 +246,7 @@ config ARCH_LAYERSCAPE
 	select OFTREE
 	select OFDEVICE
 	select ARM_USE_COMPRESSED_DTB
+	select OF_DMA_COHERENCY
 
 config ARCH_OMAP_MULTI
 	bool "TI OMAP"
diff --git a/arch/arm/dts/fsl-ls1046a.dtsi b/arch/arm/dts/fsl-ls1046a.dtsi
index 6af38f737056..a661cb0c8970 100644
--- a/arch/arm/dts/fsl-ls1046a.dtsi
+++ b/arch/arm/dts/fsl-ls1046a.dtsi
@@ -5,24 +5,3 @@ aliases {
 		mmc0 = &esdhc;
 	};
 };
-
-&soc {
-	/delete-property/ dma-coherent;
-	dma-noncoherent;
-};
-
-&crypto {
-	dma-coherent;
-};
-
-&msi1 {
-	dma-coherent;
-};
-
-&pcie2 {
-	dma-coherent;
-};
-
-&pcie3 {
-	dma-coherent;
-};
diff --git a/arch/arm/mach-layerscape/lowlevel-ls1046a.c b/arch/arm/mach-layerscape/lowlevel-ls1046a.c
index 3393dc49031e..1307c05eaf6d 100644
--- a/arch/arm/mach-layerscape/lowlevel-ls1046a.c
+++ b/arch/arm/mach-layerscape/lowlevel-ls1046a.c
@@ -229,11 +229,13 @@ void ls1046a_init_lowlevel(void)
 	set_cntfrq(25000000);
 	syscnt_enable(IOMEM(LSCH2_SYS_COUNTER_ADDR));
 
-	/* Make SEC reads and writes snoopable */
+	/* Make DMA master reads and writes snoopable */
 	setbits_be32(&scfg->snpcnfgcr, SCFG_SNPCNFGCR_SECRDSNP |
-		SCFG_SNPCNFGCR_SECWRSNP |
-		SCFG_SNPCNFGCR_SATARDSNP |
-		SCFG_SNPCNFGCR_SATAWRSNP);
+		SCFG_SNPCNFGCR_SECWRSNP | SCFG_SNPCNFGCR_USB1RDSNP |
+		SCFG_SNPCNFGCR_USB1WRSNP | SCFG_SNPCNFGCR_USB2RDSNP |
+		SCFG_SNPCNFGCR_USB2WRSNP | SCFG_SNPCNFGCR_USB3RDSNP |
+		SCFG_SNPCNFGCR_USB3WRSNP | SCFG_SNPCNFGCR_SATARDSNP |
+		SCFG_SNPCNFGCR_SATAWRSNP | SCFG_SNPCNFGCR_EDMASNP);
 
 	/*
 	 * Enable snoop requests and DVM message requests for
diff --git a/include/soc/fsl/immap_lsch2.h b/include/soc/fsl/immap_lsch2.h
index 0993fa1cd85a..6a7dad3d5d0d 100644
--- a/include/soc/fsl/immap_lsch2.h
+++ b/include/soc/fsl/immap_lsch2.h
@@ -314,6 +314,13 @@ struct ls102xa_ccsr_gur {
 #define SCFG_SNPCNFGCR_SECWRSNP		0x40000000
 #define SCFG_SNPCNFGCR_SATARDSNP	0x00800000
 #define SCFG_SNPCNFGCR_SATAWRSNP	0x00400000
+#define SCFG_SNPCNFGCR_USB1RDSNP	0x00200000
+#define SCFG_SNPCNFGCR_USB1WRSNP	0x00100000
+#define SCFG_SNPCNFGCR_EDMASNP		0x00020000
+#define SCFG_SNPCNFGCR_USB2RDSNP	0x00008000
+#define SCFG_SNPCNFGCR_USB2WRSNP	0x00010000
+#define SCFG_SNPCNFGCR_USB3RDSNP	0x00002000
+#define SCFG_SNPCNFGCR_USB3WRSNP	0x00004000
 
 /* RGMIIPCR bit definitions*/
 #define SCFG_RGMIIPCR_EN_AUTO		BIT(3)
-- 
2.39.2



