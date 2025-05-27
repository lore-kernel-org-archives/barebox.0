Delivery-date: Tue, 27 May 2025 23:31:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tv-000yOL-1E
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:31:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1ts-0005nX-Hc
	for lore@pengutronix.de; Tue, 27 May 2025 23:31:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/SjOoTJpPPfbgOeeMGlhY9CUcHSL6c6N5HPdeJF/PZg=; b=gsgkeBB/t34sxcZ3/GT091yzTd
	iY2oVHIA5r7Q3JTd7fspK5SCSIHg8pWeO0mTWiKG6Ni+Ati5/wLiGTyDfmHOla91E1EG73/mPvPL6
	AoX5eFUN5NTRK4Iz4fwhTg/OQQ+DOlB4XTxBCqNZ8/JRWJ6xanapUwWuj6ZviEYN35RdPBgurdhnP
	WpvoOF6+eioCPwWDsAgnMxMGeAwdiI7+KtRDA+7od1+LlpLsq9YeuxPpHeR9ylJLY1d9TPkAUtYzY
	dS7pAu74k/zBJgQsd4ee2YRWFsuHzemxeR//RT9QU9ijpEibOTn/GigIqlCZ4rjX1TfgumaNZqF30
	BDUag6rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tF-0000000Bbi6-0MBj;
	Tue, 27 May 2025 21:31:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lJ-0000000Bauc-1BWk
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lH-00015n-KI; Tue, 27 May 2025 23:23:04 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 27 May 2025 23:22:47 +0200
Message-Id: <20250527212300.575031-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142305_322239_E0A10FC1 
X-CRM114-Status: UNSURE (   9.13  )
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
X-Spam-Status: No, score=-7.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/15] ARM: select HW_HAS_PCI architecture wide
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

HAVE_PCI mostly means that the architecture provides <asm/pci.h>.
There still needs to be a driver that actually makes use of this.

Instead of adding HW_HAS_PCI on a SoC by SoC basis and missing some
(e.g. ARM Virt 32-bit), let's just enable it architecture-wide as
<asm/pci.h> is available for all our ARM platforms too.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/Kconfig               | 5 +----
 arch/arm/mach-imx/Kconfig      | 3 ---
 arch/arm/mach-rockchip/Kconfig | 2 --
 3 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 0800b15d784c..2bcd5862bdd1 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -14,6 +14,7 @@ config ARM
 	select PBL_RELOCATABLE
 	select USE_COMPRESSED_DTB
 	select HAVE_ARCH_BOARD_GENERIC_DT if OFDEVICE
+	select HW_HAS_PCI
 	default y
 
 config ARCH_LINUX_NAME
@@ -88,7 +89,6 @@ config ARCH_MVEBU
 	select COMMON_CLK_OF_PROVIDER
 	select GPIOLIB
 	select HAS_DEBUG_LL
-	select HW_HAS_PCI
 	select MVEBU_MBUS
 	select OFTREE
 	select OF_ADDRESS_PCI
@@ -120,7 +120,6 @@ config ARCH_TEGRA
 	depends on 32BIT
 	select CPU_V7
 	select HAS_DEBUG_LL
-	select HW_HAS_PCI
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select GPIOLIB
@@ -144,7 +143,6 @@ config ARCH_ARM64_VIRT
 	select CPU_V8
 	select ARM_AMBA
 	select BOARD_ARM_VIRT
-	select HW_HAS_PCI
 	select HAS_DEBUG_LL
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
@@ -192,7 +190,6 @@ config ARCH_LAYERSCAPE
 	select HAS_DEBUG_LL
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
-	select HW_HAS_PCI
 	select OF_DMA_COHERENCY
 
 config ARCH_OMAP_MULTI
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 552e7227a022..abe44c846561 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -126,7 +126,6 @@ config ARCH_IMX6
 	select CPU_V7
 	select PINCTRL_IMX_IOMUX_V3
 	select COMMON_CLK_OF_PROVIDER
-	select HW_HAS_PCI
 	select PBL_VERIFY_PIGGY if HABV4
 
 config ARCH_IMX6SL
@@ -149,7 +148,6 @@ config ARCH_IMX7
 	select COMMON_CLK_OF_PROVIDER
 	select ARCH_HAS_FEC_IMX
 	select ARCH_HAS_IMX_GPT
-	select HW_HAS_PCI
 
 config ARCH_IMX8M
 	bool
@@ -157,7 +155,6 @@ config ARCH_IMX8M
 	select PINCTRL_IMX_IOMUX_V3
 	select COMMON_CLK_OF_PROVIDER
 	select ARCH_HAS_FEC_IMX
-	select HW_HAS_PCI
 	select IMX8M_DRAM
 	select PBL_VERIFY_PIGGY if HABV4
 	select SOC_BUS
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 98dfd11c182b..7390ace41427 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -30,12 +30,10 @@ config ARCH_ROCKCHIP_V8
 config ARCH_RK3568
 	bool
 	select ARCH_ROCKCHIP_V8
-	select HW_HAS_PCI
 
 config ARCH_RK3588
 	bool
 	select ARCH_ROCKCHIP_V8
-	select HW_HAS_PCI
 
 comment "select Rockchip boards:"
 
-- 
2.39.5



