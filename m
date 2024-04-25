Delivery-date: Thu, 25 Apr 2024 13:56:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxhx-00Gf9P-13
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 13:56:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxhn-0006wd-6O
	for lore@pengutronix.de; Thu, 25 Apr 2024 13:56:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rt7DHPTx2Emk/TaHPQ3aqpALYQSbTiBH+iXLdRC9ngg=; b=VDQ2UPK1nkMudV
	ZrsnQbFA//ajWCWSvuseOI0azDBKj9/ttJKVqjg/R5HXLCYXITam0/30UA0SWbuXh2t1vdOOKrRIg
	H/cq97Pf+JaIovcMrvAWCdLR98z9DqOC+Dr3BffbcygU4IXVCKmaXxLaKldY4ep4SJQs6q7gpdw8Y
	aYnaTnbcR7lSoIx2+ZgGTO6ylcF+67xWm+DDnfyLFuZpf2Kzcr78GZbYx4JAbukJnIqEConDhBxWt
	JctJvj9/iUDNqHDxtItGXRXgifW8nOxy1V04yHpmIXMcp23TRoEJwA8n2KOFsyaLSy1VpTiUPUtBx
	+8ZzZIe3htfM+Ju2sjsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxh4-000000085OU-3SAn;
	Thu, 25 Apr 2024 11:55:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgy-000000085KV-2g69
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 11:55:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgZ-00062c-8l; Thu, 25 Apr 2024 13:54:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-00EFqb-5q; Thu, 25 Apr 2024 13:54:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-0D;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:25 +0200
Message-Id: <20240425115439.2269239-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_045508_881859_56C45434 
X-CRM114-Status: UNSURE (   9.09  )
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
Subject: [PATCH 01/15] ARM: move HAVE_PBL_MULTI_IMAGES up to ARCH_MULTIARCH
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All ARCH_MULTIARCH machines need HAVE_PBL_MULTI_IMAGES enabled, so
move selection of the symbol up to ARCH_MULTIARCH.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 1377679ac9..6ebcb1577f 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -42,6 +42,7 @@ choice
 	prompt "ARM system type"
 
 config ARCH_MULTIARCH
+	select HAVE_PBL_MULTI_IMAGES
 	bool "Allow multiple archs to be selected"
 
 config ARCH_AT91
@@ -181,7 +182,6 @@ config ARCH_ARM64_VIRT
 	bool "ARM64 QEMU Virt board"
 	depends on 64BIT
 	select CPU_V8
-	select HAVE_PBL_MULTI_IMAGES
 	select OFDEVICE
 	select OFTREE
 	select RELOCATABLE
@@ -201,7 +201,6 @@ config ARCH_BCM283X
 	select RELOCATABLE
 	select OFTREE
 	select OFDEVICE
-	select HAVE_PBL_MULTI_IMAGES
 
 config ARCH_IMX
 	bool "Freescale iMX-based"
@@ -210,7 +209,6 @@ config ARCH_IMX
 	select COMMON_CLK
 	select WATCHDOG_IMX_RESET_SOURCE
 	select HAS_DEBUG_LL
-	select HAVE_PBL_MULTI_IMAGES
 	select RELOCATABLE
 
 config ARCH_K3
@@ -219,7 +217,6 @@ config ARCH_K3
 	select CPU_V8
 	select GPIOLIB
 	select COMMON_CLK
-	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DEBUG_LL
 	select COMMON_CLK_OF_PROVIDER
 	select PM_GENERIC_DOMAINS
@@ -229,7 +226,6 @@ config ARCH_LAYERSCAPE
 	depends on ARCH_MULTIARCH
 	select GPIOLIB
 	select HAS_DEBUG_LL
-	select HAVE_PBL_MULTI_IMAGES
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select HW_HAS_PCI
@@ -256,7 +252,6 @@ config ARCH_ROCKCHIP
 	select PINCTRL
 	select PINCTRL_ROCKCHIP
 	select OFTREE
-	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DEBUG_LL
 	imply GPIO_ROCKCHIP
 
@@ -265,7 +260,6 @@ config ARCH_STM32MP
 	depends on 32BIT
 	select ARCH_STM32
 	select CPU_V7
-	select HAVE_PBL_MULTI_IMAGES
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select HAS_DEBUG_LL
@@ -284,7 +278,6 @@ config ARCH_VERSATILE
 	select HAS_DEBUG_LL
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
-	select HAVE_PBL_MULTI_IMAGES
 
 config ARCH_VEXPRESS
 	bool "ARM Vexpress & virt boards"
@@ -298,14 +291,12 @@ config ARCH_VEXPRESS
 	select OFTREE
 	select OFDEVICE
 	select RELOCATABLE
-	select HAVE_PBL_MULTI_IMAGES
 
 config ARCH_ZYNQMP
 	bool "Xilinx ZynqMP-based boards"
 	depends on 64BIT
 	select CPU_V8
 	select HAS_DEBUG_LL
-	select HAVE_PBL_MULTI_IMAGES
 	select ARM_SMCCC
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
-- 
2.39.2



