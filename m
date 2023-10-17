Delivery-date: Tue, 17 Oct 2023 16:55:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTg-00BshS-HB
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:55:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTe-0003sf-7j
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e8tx4l+NbuyBPuoHRQ+rCboSnjz2NleKBZIlOPhYCP8=; b=3mge2bnwba9jRexZqrYJfO8v6r
	OeiUnGDQfztWgcHHp4kYeH5rBx0iS9X59XtfqrYU/rFzlroUuHveA1YUd4ZBtSr4WNIGfBTTweZQ4
	Sa6XbsRIJlhUsqa6fu6SrqeShA7CsKxszIv/CdwvLsixOs+36Lg8v0x2KUtfIgvCluwNta3Scqmih
	Mvbt0hGxUOPaq/IK53UyqthvWQXkcMQjYdhpVZTrXMYdQCv/zsCtEGULwnKQ1HSitKLOZB4/ZTQkT
	Os/R+qBTWyHJs/kTDkV/yx+iGtveGobBL3uPkktFjHWA/xy7tvZ2em2QMh40Jz3peQFejajHSzWfH
	BB+cXxeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslSQ-00Cevj-13;
	Tue, 17 Oct 2023 14:54:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQB-00Ccba-1N
	for barebox@bombadil.infradead.org;
	Tue, 17 Oct 2023 14:51:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=e8tx4l+NbuyBPuoHRQ+rCboSnjz2NleKBZIlOPhYCP8=; b=rFSbVaqE6Aib0pA2u0KDRbkKPF
	IUA11pD+A7gg9A+qJy8IwN137VQPoRCBt5DyOZ4JQsoBLqTeg6gLsKNX6WSPRyzgA2b7WRdKcKooP
	nZtNASm2HOadKsBo8jcQdRZYjGT2Ap/bRD8rG+uEJWz2pm7LuwnBOAMHBs/+kTm+CQP4drx7ezew/
	eG2olnNXX6/FTDMZAtnlT1PbFgpL8h6LiVJ/B5qTjyND6T1P9t8+gAJvf6zyBAFW3WeqLqdvdPj58
	19NRJjfBvD9oF6zAHPIUWeCzXh1XFLEhTnDsPfuXF6dPV2z/c/8JIuk+O3YrZkc73IzMaLNdpNAHU
	f5nrbHoA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ5-007AEZ-33
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:46 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPy-0001wJ-RM
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:16 +0200
Message-Id: <20231017145131.3069283-15-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_155142_206081_CB4A3DCA 
X-CRM114-Status: GOOD (  11.14  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 14/29] ARM: lds: add support for a 2nd CSF area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extend the CSF area to be able two store two CSF slots. The 2nd CSF slot
is required in case of FlexSPI HAB boot support. The first slot is used
for the MMC-IVT + barebox-pbl; the 2nd slot is used for the FlexSPI-IVT
+ barebox-pbl. This is necessary because of the fact that the HAB ROM
code requires that the IVT is signed as well.

Make the 2nd CSF slot optional since early SRAM space is limited and 4K
can make a difference here.

Please check the documentation for a more detailed information about the
i.MX8M image layout.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- add new Kconfig entry to select QSPI HAB support
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 arch/arm/lib/pbl.lds.S    | 4 ++++
 arch/arm/mach-imx/Kconfig | 6 ++++++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 898d6be33b54..cafb27b2d55e 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -12,7 +12,11 @@
 #define BASE	(TEXT_BASE - SZ_2M)
 #endif
 
+#ifdef CONFIG_HABV4_QSPI
+#define HAB_CSF_LEN	0x4000
+#else
 #define HAB_CSF_LEN	0x2000
+#endif
 
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index c60f1f949232..6a7d90e2c853 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -750,6 +750,12 @@ config HABV4
 	help
 	  High Assurance Boot, as found on i.MX28/i.MX6/i.MX8M.
 
+config HABV4_QSPI
+	depends on HABV4
+	bool "HABv4 QPSI support"
+	help
+	  Enable this option to build signed QSPI/FlexSPI images.
+
 config HAB_CERTS_ENV
 	depends on HAB
 	bool "Specify certificates in environment"
-- 
2.39.2



