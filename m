Delivery-date: Mon, 26 Jun 2023 17:35:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDoFd-004fNp-6H
	for lore@lore.pengutronix.de; Mon, 26 Jun 2023 17:35:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDoFa-0006gT-Rw
	for lore@pengutronix.de; Mon, 26 Jun 2023 17:35:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jIl+5zsGRLDlG8zfI1ix2gXEwEwkRURzJ2I7VSYLHJ4=; b=XKbSrttncRZZbs
	TYkU/zVKy3zqv9iwoChrhnbVwnzXAkPjMB9cDxoitH3ZyG8tzV5UwhxxTpdWtfd2wK8Q3olhNUOCb
	Jut5FfSZhWPeM1iVGmRLRmfgbc653OJLY9vaxsWbGjQlZJOPzMnagcnMLMAMeIQw4VsKasvhgzW3i
	noX1F6iet6iaKf7BT3HVKYgvDnHWCDcr/OCbwRSy1IgE75vsUgT4SIglR5lRPwrP4wzungX2/D+Fq
	qetNSz/X2QIJiUy9qFbnHjFgMKZtV2qiwh7NK5CAXkQN5BO/5H4mhGEs+MqBtaHupc3IFFAKdHjBI
	Nh/H5+XCCarX3ZAG6PzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDoEY-00AVEm-0V;
	Mon, 26 Jun 2023 15:34:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDoEU-00AVD3-2w
	for barebox@lists.infradead.org;
	Mon, 26 Jun 2023 15:34:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qDoES-00067q-Qz; Mon, 26 Jun 2023 17:34:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qDoES-00AFB5-5H; Mon, 26 Jun 2023 17:34:24 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qDoER-00F5Oa-35;
	Mon, 26 Jun 2023 17:34:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 26 Jun 2023 17:33:40 +0200
Message-Id: <20230626153335.3592017-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230626153335.3592017-1-a.fatoum@pengutronix.de>
References: <20230626153335.3592017-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_083426_947347_9B81BF42 
X-CRM114-Status: UNSURE (   9.55  )
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
Subject: [PATCH master v1 5/6] ARM64: unset CONFIG_MISSING_FIRMWARE_ERROR for Rockchip/i.MX
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
index e0ff21641a01..76b80975887d 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -241,3 +241,4 @@ CONFIG_FS_PSTORE=y
 CONFIG_FS_PSTORE_CONSOLE=y
 CONFIG_FS_RATP=y
 CONFIG_LZO_DECOMPRESS=y
+# CONFIG_MISSING_FIRMWARE_ERROR is not set
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index cc3c3c6d489b..7d1d41965ece 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -149,3 +149,4 @@ CONFIG_FS_FAT_LFN=y
 CONFIG_FS_BPKFS=y
 CONFIG_FS_UIMAGEFS=y
 CONFIG_LZO_DECOMPRESS=y
+# CONFIG_MISSING_FIRMWARE_ERROR is not set
-- 
2.39.2



