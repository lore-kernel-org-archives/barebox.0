Delivery-date: Tue, 27 Jun 2023 07:54:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qE1eR-005QY4-43
	for lore@lore.pengutronix.de; Tue, 27 Jun 2023 07:54:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qE1eO-0007nG-L4
	for lore@pengutronix.de; Tue, 27 Jun 2023 07:54:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRm61jc86Ex+87N2b+o271AkDfzFdqZCba0sbCnoNF0=; b=0cHdIFOake9bXG
	4immd3hkFoyb3jFZVt3MIclp01HXQesJzDZqTTl5AIXXmAYoYBO+I1mmGOxpNtIq7W/XPuj37zaqw
	b1qTrN74RoIje9qa/RYwwgU0xeOTfu0gk6LoFXn/LM2bZMOVDx1Kp+IKyE0dXgmCRLa2FJUwxZsem
	pvHoUucN5Vf2U9GXUK+8aR5D/9yUCmAL+b+mOCYLFPsNNl0B5uelBwJUw03kA6mO3gBPCEWdIOJPv
	DsCCDJ+v6S3V9gitnI9d/vSEbhDPrC5n13at4d2mdDKiWMcbOYM0QVXtOSUIQNqYzrlyThjohe5Wm
	u9VWzAXpnTSGGCyujFlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE1d8-00ByGK-3D;
	Tue, 27 Jun 2023 05:52:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE1d6-00ByDJ-0A
	for barebox@lists.infradead.org;
	Tue, 27 Jun 2023 05:52:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d3-0007LC-CS; Tue, 27 Jun 2023 07:52:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d2-00AND5-MW; Tue, 27 Jun 2023 07:52:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d2-00GOtE-16;
	Tue, 27 Jun 2023 07:52:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Jun 2023 07:52:38 +0200
Message-Id: <20230627055239.3908872-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230627055239.3908872-1-a.fatoum@pengutronix.de>
References: <20230627055239.3908872-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_225244_114574_69CA19A3 
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
Cc: uol@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master v2 6/7] ARM64: unset CONFIG_MISSING_FIRMWARE_ERROR for Rockchip/i.MX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox ARMv8 images for Rockchip and i.MX depend on external firmware
for RAM setup (e.g. DDR PHY firmware) and on a BL31 binary to service
secure monitor calls of the operating system (usually TF-A).

Images without this firmware are not functional and the build warns
about it, yet for development, it's more convenient to have the build
not fail. This is especially useful for multi_v8_defconfig, which also
builds the drivers Qemu Virt64 image and which requires no extra
firmware.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/imx_v8_defconfig      | 1 +
 arch/arm/configs/multi_v8_defconfig    | 1 +
 arch/arm/configs/rockchip_v8_defconfig | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index 93b85ff5ea40..99d871bfb968 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -147,3 +147,4 @@ CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
 CONFIG_FS_RATP=y
 CONFIG_ZLIB=y
+# CONFIG_MISSING_FIRMWARE_ERROR is not set
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index d30158d7f880..011747c541e6 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -238,3 +238,4 @@ CONFIG_FS_PSTORE=y
 CONFIG_FS_PSTORE_CONSOLE=y
 CONFIG_FS_RATP=y
 CONFIG_LZO_DECOMPRESS=y
+# CONFIG_MISSING_FIRMWARE_ERROR is not set
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index efe6adc9dc75..aa82169aae61 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -146,3 +146,4 @@ CONFIG_FS_FAT_LFN=y
 CONFIG_FS_BPKFS=y
 CONFIG_FS_UIMAGEFS=y
 CONFIG_LZO_DECOMPRESS=y
+# CONFIG_MISSING_FIRMWARE_ERROR is not set
-- 
2.39.2



