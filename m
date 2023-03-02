Delivery-date: Thu, 02 Mar 2023 13:49:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXiMu-006WnR-5L
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 13:49:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXiMt-00068o-TA
	for lore@pengutronix.de; Thu, 02 Mar 2023 13:49:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KDZWhbRawHsI9Iuo4IVQK8d299Lkow43HWuRxb9wzzE=; b=Y9CkdQdlWpAZTw5stdK7hX/5Oo
	yCt3dXIbfygOSuzBMi0H4l8uJtgtNSB8y/2NhUlTeRxMNSUmKsDoUEr+Qh5AFJwQq8JE/TxtpURK3
	qR8Sm+FCEbY0ZjjqmdCFTZO+dwG2Pykn9elpDERxqDdfCegw+NlMTyMm6URqw7AXo0UIa0w2xcWWe
	8kTveQBwGEBibHBupPvae93f7WTL1WojiZhWSk7P5rTD6co3sG4ntd5vNPeu/8Zco+wWYoScZHZXj
	vhPQ9o+9Fk7X+uvsXhXIKEt8dGMz4KqfQB5uj8+SeetHDktfPno4JwVBf5/vF7WkWrcbb6q3ewiVD
	EaKCSBag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXiLY-002DuW-5Y; Thu, 02 Mar 2023 12:47:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXiLS-002DsK-6f
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 12:47:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXiLQ-00061j-Hs; Thu, 02 Mar 2023 13:47:36 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXiLP-001Ki9-SE; Thu, 02 Mar 2023 13:47:35 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXiLO-008l4W-PP; Thu, 02 Mar 2023 13:47:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 13:47:31 +0100
Message-Id: <20230302124731.2081045-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302124731.2081045-1-s.hauer@pengutronix.de>
References: <20230302124731.2081045-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_044738_299886_BB1D2B8C 
X-CRM114-Status: GOOD (  12.01  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX: let boards depend on 32/64bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far we can enable support for 32bit and 64bit SoCs at the same time
which results in an unbuildable barebox. This is annying, let the board
visibility depend on the selected code model.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                  | 2 ++
 arch/arm/configs/imx_v8_defconfig | 1 +
 arch/arm/mach-imx/Kconfig         | 9 ++++++++-
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c5645c540e..9f8ef4fa12 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -106,6 +106,8 @@ config ARCH_IMX
 	select HAS_DEBUG_LL
 	select HAVE_PBL_MULTI_IMAGES
 	select RELOCATABLE
+	select CPU_SUPPORTS_32BIT_KERNEL
+	select CPU_SUPPORTS_64BIT_KERNEL
 
 config ARCH_LAYERSCAPE
 	bool "NXP Layerscape based"
diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index 5cd2bab035..104863f05f 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -11,6 +11,7 @@ CONFIG_MACH_PHYTEC_SOM_IMX8MQ=y
 CONFIG_MACH_TQ_MBA8MPXL=y
 CONFIG_MACH_POLYHEX_DEBIX=y
 CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
+CONFIG_64BIT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index ac696359b4..90a2c4ece0 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -140,7 +140,6 @@ config ARCH_IMX8M
 	select CPU_V8
 	select PINCTRL_IMX_IOMUX_V3
 	select OFTREE
-	select CPU_SUPPORTS_64BIT_KERNEL
 	select COMMON_CLK_OF_PROVIDER
 	select ARCH_HAS_FEC_IMX
 	select HW_HAS_PCI
@@ -182,6 +181,8 @@ config ARCH_VF610
 config MACH_ZII_COMMON
 	bool
 
+if 32BIT
+
 comment "i.MX1 boards"
 
 config MACH_SCB9328
@@ -548,6 +549,10 @@ config MACH_ZII_VF610_DEV
 	select MACH_ZII_COMMON
 	select ARM_USE_COMPRESSED_DTB
 
+endif
+
+if 64BIT
+
 comment "i.MX8M boards"
 
 config MACH_INNOCOMM_WB15
@@ -668,6 +673,8 @@ config MACH_ZII_IMX8MQ_DEV
 	select MCI_IMX_ESDHC_PBL
 	select MACH_ZII_COMMON
 
+endif
+
 # ----------------------------------------------------------
 
 menu "i.MX specific settings"
-- 
2.30.2



