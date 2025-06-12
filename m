Delivery-date: Thu, 12 Jun 2025 12:07:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqO-006TWK-0M
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 12:07:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqN-0006jr-H2
	for lore@pengutronix.de; Thu, 12 Jun 2025 12:07:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JwNHv56FKd8q9KCHZvZQZgMdFyvr2z6l4nq/PpZ9/z0=; b=Ovtnq40DLWX5ydRqdeXEXUy3FA
	oEivcVQ8io7u5gbiQm83bxNDr3g0eY5d7zhKHtmCV2JoS/WU3ppgtMCSRSsyPbYUOmHQnfpRqj1im
	caM6wHG2jgxn6SHVC+jWNiHFaDwKJbijDaPUEmkM5Vteljj83lDZKTb+S/2BgmvVYTrYuhx5a9vKY
	+bUxMhprrDflGXCuZl7fRsnbWYoAC/VuPUhzxK7t7LVyafdKOSe6mBOT01Lk9OCeQx4PmqnF64zPh
	RsgZlv2ycDPt11/Zm1tCVr2+b8En17NBs/eGkMOKLIG8RrgnKY2eKZhKVAg4BG61WYOyJurZy6wTp
	tnxnKxDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPepr-0000000CurY-2WzF;
	Thu, 12 Jun 2025 10:07:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPdfu-0000000Cigs-3TOH
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 08:52:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1uPdfs-0000IX-Dx; Thu, 12 Jun 2025 10:52:40 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uPdfs-0035nR-0n;
	Thu, 12 Jun 2025 10:52:40 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uPdfs-008rR1-0e;
	Thu, 12 Jun 2025 10:52:40 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Thu, 12 Jun 2025 10:52:34 +0200
Message-Id: <20250612085234.2111792-2-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250612085234.2111792-1-rhi@pengutronix.de>
References: <20250612085234.2111792-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_015242_861860_5FF8F34A 
X-CRM114-Status: GOOD (  13.10  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] Documentation: use https URLs for GitHub
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

GitHub phased out support for the git:// protocol a few years ago [1].
Fix the respective URLs by using the https:// protocol instead.

  [1]: https://github.blog/security/application-security/improving-git-protocol-security-github/

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 Documentation/boards/efi.rst       | 2 +-
 arch/arm/mach-omap/omap4_rom_usb.c | 2 +-
 drivers/mci/mci-bcm2835.c          | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index b12433014ef1..869e5e88172f 100644
--- a/Documentation/boards/efi.rst
+++ b/Documentation/boards/efi.rst
@@ -292,7 +292,7 @@ HOWTOs in the net, for example on http://tianocore.sourceforge.net/wiki/Using_ED
 
 .. code-block:: sh
 
-  git clone git://github.com/tianocore/edk2.git
+  git clone https://github.com/tianocore/edk2.git
   cd edk2
   git submodule update --init
   make -C BaseTools
diff --git a/arch/arm/mach-omap/omap4_rom_usb.c b/arch/arm/mach-omap/omap4_rom_usb.c
index 01c5565a68bc..500f8dfd2df0 100644
--- a/arch/arm/mach-omap/omap4_rom_usb.c
+++ b/arch/arm/mach-omap/omap4_rom_usb.c
@@ -1,6 +1,6 @@
 /*
  * This code is based on:
- * git://github.com/swetland/omap4boot.git
+ * https://github.com/swetland/omap4boot.git
  */
 /*
  * Copyright (C) 2010 The Android Open Source Project
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index cd4c1b866ca1..0099e4e35753 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -4,7 +4,7 @@
  *
  * Support for SDHCI device on bcm2835
  * Based on sdhci-bcm2708.c (c) 2010 Broadcom
- * Inspired by bcm2835_sdhci.c from git://github.com/gonzoua/u-boot-pi.git
+ * Inspired by bcm2835_sdhci.c from https://github.com/gonzoua/u-boot-pi.git
  *
  * Portions (e.g. read/write macros, concepts for back-to-back register write
  * timing workarounds) obviously extracted from the Linux kernel at:
-- 
2.39.5



