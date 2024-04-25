Delivery-date: Thu, 25 Apr 2024 13:55:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxhc-00Gf6F-2s
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 13:55:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxhW-0006ie-0p
	for lore@pengutronix.de; Thu, 25 Apr 2024 13:55:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3K6npm5AtkBJFc11l67hSHKUrJHHIrb//paa1g/aja8=; b=hOZXvkdmoK9WR9
	ysjjjkHbD17T0RWq7fzjTM3q68Y3mt3mmhXxLWEAMQNTBvT1tRMKg8tcMWhQ+ilpaKCyANA6tx+Je
	FFmKPe1iMALqqlKjkMTw9R/dsCb6fhOan+PtD+wHQnaBD3/YMtLr86mFfY8Jd0dSIM+z1IyTS9nlZ
	hgYE7hTEbDtVoY3ai5WVsUTqA+AouPzk92ez+xa0GtQJcAHnEoK65P9sKRqpvNAYra3SgZmkgROUo
	13oBYG+2U+bZpEgKTiBRcUOgxNV8On21xPPXPqksr3V3r5EzcYZyQeFeZXp9M9ox4p6JpeYjqF4OI
	RWJtN3PY73HMKvtax5FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgm-000000085DE-0UW1;
	Thu, 25 Apr 2024 11:54:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgi-000000085CE-28Zf
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 11:54:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgZ-00062d-8k; Thu, 25 Apr 2024 13:54:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-00EFqe-7K; Thu, 25 Apr 2024 13:54:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-0O;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:26 +0200
Message-Id: <20240425115439.2269239-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_045452_604503_C096F526 
X-CRM114-Status: UNSURE (   9.90  )
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
Cc: Jan Weitzel <j.weitzel@phytec.de>, Vicente Bergas <vicencb@gmail.com>, Bo Shen <voice.shen@atmel.com>, Matthias Kaehlcke <matthias@kaehlcke.net>, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/15] ARM: move OFTREE and OFDEVICE up one level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All ARCH_MULTIARCH machines are probing from device tree, so select
the necessary symbols from ARCH_MULTIARCH rather than individually
from the machines.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig           | 13 ++-----------
 arch/arm/mach-imx/Kconfig  |  7 -------
 arch/arm/mach-omap/Kconfig |  1 -
 3 files changed, 2 insertions(+), 19 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 6ebcb1577f..728438dcf6 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -43,6 +43,8 @@ choice
 
 config ARCH_MULTIARCH
 	select HAVE_PBL_MULTI_IMAGES
+	select OFTREE
+	select OFDEVICE
 	bool "Allow multiple archs to be selected"
 
 config ARCH_AT91
@@ -182,8 +184,6 @@ config ARCH_ARM64_VIRT
 	bool "ARM64 QEMU Virt board"
 	depends on 64BIT
 	select CPU_V8
-	select OFDEVICE
-	select OFTREE
 	select RELOCATABLE
 	select ARM_AMBA
 	select BOARD_ARM_VIRT
@@ -199,8 +199,6 @@ config ARCH_BCM283X
 	select ARM_AMBA
 	select HAS_DEBUG_LL
 	select RELOCATABLE
-	select OFTREE
-	select OFDEVICE
 
 config ARCH_IMX
 	bool "Freescale iMX-based"
@@ -229,8 +227,6 @@ config ARCH_LAYERSCAPE
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select HW_HAS_PCI
-	select OFTREE
-	select OFDEVICE
 	select ARM_USE_COMPRESSED_DTB
 	select OF_DMA_COHERENCY
 
@@ -251,7 +247,6 @@ config ARCH_ROCKCHIP
 	select GPIOLIB
 	select PINCTRL
 	select PINCTRL_ROCKCHIP
-	select OFTREE
 	select HAS_DEBUG_LL
 	imply GPIO_ROCKCHIP
 
@@ -288,8 +283,6 @@ config ARCH_VEXPRESS
 	select AMBA_SP804
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
-	select OFTREE
-	select OFDEVICE
 	select RELOCATABLE
 
 config ARCH_ZYNQMP
@@ -301,8 +294,6 @@ config ARCH_ZYNQMP
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select GPIOLIB
-	select OFDEVICE
-	select OFTREE
 	select RELOCATABLE
 	select HAS_MACB
 
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6125813773..4d10def3c2 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -124,7 +124,6 @@ config ARCH_IMX6
 	select ARCH_HAS_IMX_GPT
 	select CPU_V7
 	select PINCTRL_IMX_IOMUX_V3
-	select OFDEVICE
 	select COMMON_CLK_OF_PROVIDER
 	select HW_HAS_PCI
 
@@ -144,7 +143,6 @@ config ARCH_IMX7
 	bool
 	select CPU_V7
 	select PINCTRL_IMX_IOMUX_V3
-	select OFTREE
 	select COMMON_CLK_OF_PROVIDER
 	select ARCH_HAS_FEC_IMX
 	select ARCH_HAS_IMX_GPT
@@ -154,7 +152,6 @@ config ARCH_IMX8M
 	bool
 	select CPU_V8
 	select PINCTRL_IMX_IOMUX_V3
-	select OFTREE
 	select COMMON_CLK_OF_PROVIDER
 	select ARCH_HAS_FEC_IMX
 	select HW_HAS_PCI
@@ -189,7 +186,6 @@ config ARCH_IMX93
 	select ARCH_IMX9
 	select CPU_V8
 	select PINCTRL_IMX_IOMUX_V3
-	select OFTREE
 	select COMMON_CLK_OF_PROVIDER
 	select ARM_USE_COMPRESSED_DTB
 	select ARCH_HAS_FEC_IMX
@@ -200,8 +196,6 @@ config ARCH_VF610
 	select ARCH_HAS_FEC_IMX
 	select CPU_V7
 	select PINCTRL
-	select OFDEVICE
-	select OFTREE
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select NVMEM
@@ -825,7 +819,6 @@ config HABV4
 	select NVMEM
 	select IMX_OCOTP
 	depends on ARCH_IMX6 || ARCH_IMX8M
-	depends on OFDEVICE
 	help
 	  High Assurance Boot, as found on i.MX28/i.MX6/i.MX8M.
 
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index f0e035e31e..cb1ba9f7eb 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -39,7 +39,6 @@ config ARCH_AM33XX
 	bool
 	select CPU_V7
 	select GENERIC_GPIO
-	select OFTREE
 	select CLOCKSOURCE_TI_DM
 	select ARM_USE_COMPRESSED_DTB
 	help
-- 
2.39.2



