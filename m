Delivery-date: Thu, 07 Nov 2024 09:46:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8yAC-005rBc-1y
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 09:46:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8yAD-0007Aa-8x
	for lore@pengutronix.de; Thu, 07 Nov 2024 09:46:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7h+ICVJOV7s1Muw8AYAJzkFzMx/0KF7XgjctZgtMtxY=; b=AIki3sbct422MXF/7iMt3+8Z2z
	VS7Ej/Xj3rI1Pj99Wl2i10/9ASnKweMjbLwg9QUK3fRPffWb7df2MdxAAEvNtujn2bNNi2UXwaIx3
	qv0wcB4eI8cMb4GfzqD7HSxlXpTp4+8wWLGPlyYbF6n5DaP7PuMQv7wefZ4FA4zH2sxMvgAqlpd1+
	6tKUqu172Y5896zmKs2cDrmV1zQBjJP3+WbCtP9UXRYVz3Th2XQQbj/D+8377X2ADVQCE2Y0HjG7Q
	Zmzp/0o95ycMDOPwNq9u0q+llaIjuFZwG+nM6UxBbWF9Kta8nbcTDNjli6WJxrI/Nejti/2pVolWz
	ZAuRiaYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8yA2-00000006Axt-1KKM;
	Thu, 07 Nov 2024 08:46:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8wrg-00000005yX8-0IGs
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 07:23:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-0007zl-Gd; Thu, 07 Nov 2024 08:23:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-002QOy-0w;
	Thu, 07 Nov 2024 08:23:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-006rNQ-0k;
	Thu, 07 Nov 2024 08:23:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 07 Nov 2024 08:23:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241107-fs-tftp-v1-4-39d7e1cff418@pengutronix.de>
References: <20241107-fs-tftp-v1-0-39d7e1cff418@pengutronix.de>
In-Reply-To: <20241107-fs-tftp-v1-0-39d7e1cff418@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730964212; l=1714;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=pVBg7cwMT+gwp3Bv0UqPdgPPO47MFUIQlnAObXFAxRE=;
 b=d/yZ/oOmN/mTphD7lHYsqQEtZudK/QsIoRh4soZqe5QhZVzZO5z+I17Ah/pW/sTNJwSKLGAlJ
 U8pOxasFmHqCM8W//KuHoRgNL99+SzZNH/lAXUl0ZgWk5fiiDJfm7qb
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_232336_178949_D3EFF20B 
X-CRM114-Status: GOOD (  10.43  )
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
Subject: [PATCH 4/4] fs: tftp: Set default window size to 1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TFTP window size feature is nice when it works, unfortunately it
often causes trouble as often packages get lost in the network buffers
causing retransmission delays. Disable this option by default.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/imx_v7_defconfig   | 2 +-
 arch/arm/configs/multi_v7_defconfig | 2 +-
 fs/Kconfig                          | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index d3def0ece0..72833eb09f 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -225,7 +225,7 @@ CONFIG_SYSCON_REBOOT_MODE=y
 CONFIG_POWER_RESET_SYSCON=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
-CONFIG_FS_TFTP_MAX_WINDOW_SIZE=8
+CONFIG_FS_TFTP_MAX_WINDOW_SIZE=1
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 97b01fd812..5b739a0f3b 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -344,7 +344,7 @@ CONFIG_VIRTIO_MMIO=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
-CONFIG_FS_TFTP_MAX_WINDOW_SIZE=8
+CONFIG_FS_TFTP_MAX_WINDOW_SIZE=1
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
diff --git a/fs/Kconfig b/fs/Kconfig
index e02cb939a5..27981b6444 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -47,7 +47,7 @@ config FS_TFTP_MAX_WINDOW_SIZE
 	int
 	prompt "maximum tftp window size (RFC 7440)"
 	depends on FS_TFTP
-	default 128
+	default 1
 	range 1 128
 	help
 	  The maximum allowed tftp "windowsize" (RFC 7440).  Higher

-- 
2.39.5



