Delivery-date: Wed, 13 May 2026 14:22:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8bH-001Fgh-06
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 14:22:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8bB-0004WD-QC
	for lore@pengutronix.de; Wed, 13 May 2026 14:22:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dWMuiyACTV64+MnEYRIkgq54M7NFIRBLxhDOawvRe6c=; b=fzAGvbBIcnWgMKzll4d6wGWvOp
	PA0Gdr+HxPXRhcCF7ZvRDsbqrk6K0b6begiGGdghpLrRvjqYoieYMYv1Q6d2L3M/JkB4VCUyhyFzO
	35sioTK9iN2lbzrOVPFvU4HCEK8tu4XzoTITydTpsMTWij58a9jCe2vg7lQumlURsn8oV/yjUjOTb
	5DIqdsBFgysk9aie+ySDN77Cb+SdlwsCdirXJ2xfctOp/Ku85xMKFqA+s8Xb0tIotBp2NNMRjxT6j
	ot4Sp5EdJdJoMEFUocQCABcQ2NmG0LVbBAx5lTH3709LJKq30+pKr+9wV6ChoLa+u0AN9qm0iNayH
	MGyHrHsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8Zj-00000002SVp-0jUI;
	Wed, 13 May 2026 12:20:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8Zd-00000002SRs-4AuT
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 12:20:28 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wN8Zc-0003rS-IK; Wed, 13 May 2026 14:20:24 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 13 May 2026 14:20:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-socfpga-kconfig-v1-2-6b935776f0ac@pengutronix.de>
References: <20260513-socfpga-kconfig-v1-0-6b935776f0ac@pengutronix.de>
In-Reply-To: <20260513-socfpga-kconfig-v1-0-6b935776f0ac@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_052026_040699_8A68284D 
X-CRM114-Status: GOOD (  10.30  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] arm: socfpga: reorganize Kconfig menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Move the SoC config options to the top to be able to get a quick
overview over the supported SoCs.

Change the comment lines that separate board with different SoCs to use
the proper SoC marketing names.

Move the XLOAD option to the bottom to make it available as a separate
feature that is only available if an appropriate board is selected.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/Kconfig | 52 +++++++++++++++++++++----------------------
 1 file changed, 25 insertions(+), 27 deletions(-)

diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 343264209267..a836711e6c40 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -1,15 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-if ARCH_SOCFPGA
-
-config ARCH_SOCFPGA_XLOAD
-	bool
-	depends on ARCH_SOCFPGA_CYCLONE5
-	prompt "Build SoCFPGA preloader image"
-
-menu "SoCFPGA boards"
-
-if 32BIT
+menu "SoCFPGA Features"
+	depends on ARCH_SOCFPGA
 
 config ARCH_SOCFPGA_CYCLONE5
 	bool
@@ -28,7 +20,20 @@ config ARCH_SOCFPGA_ARRIA10
 	select OFTREE
 	select MCI_DW_PBL
 
-comment "Cyclone5 boards"
+config ARCH_SOCFPGA_AGILEX5
+	bool
+	select CPU_V8
+	select RESET_CONTROLLER
+	select RESET_SIMPLE
+	select OFDEVICE
+	select OFTREE
+	select FIRMWARE_AGILEX5_ATF
+	select ARM_ATF
+	select ARM_SMCCC
+
+if 32BIT
+
+comment "Cyclone V boards"
 
 config MACH_SOCFPGA_ALTERA_SOCDK
 	select ARCH_SOCFPGA_CYCLONE5
@@ -58,7 +63,7 @@ config MACH_SOCFPGA_TERASIC_SOCKIT
 	select ARCH_SOCFPGA_CYCLONE5
 	bool "Terasic SoCKit"
 
-comment "Arria10 boards"
+comment "Arria 10 boards"
 
 config MACH_SOCFPGA_ENCLUSTRA_AA1
 	select ARCH_SOCFPGA_ARRIA10
@@ -72,19 +77,7 @@ endif
 
 if 64BIT
 
-config ARCH_SOCFPGA_AGILEX5
-	bool
-	select CPU_V8
-	select RESET_CONTROLLER
-	select RESET_SIMPLE
-	select OFDEVICE
-	select OFTREE
-	select FIRMWARE_AGILEX5_ATF
-	select ARM_ATF
-	select ARM_SMCCC
-
-
-comment "SoCFPGA Agilex5 boards"
+comment "Agilex 5 boards"
 
 config MACH_SOCFPGA_ARROW_AXE5_EAGLE
 	bool "Arrow AXE5 Eagle"
@@ -92,6 +85,11 @@ config MACH_SOCFPGA_ARROW_AXE5_EAGLE
 
 endif
 
-endmenu
+comment "board features"
 
-endif
+config ARCH_SOCFPGA_XLOAD
+	bool
+	depends on ARCH_SOCFPGA_CYCLONE5
+	prompt "Build SoCFPGA preloader image"
+
+endmenu

-- 
2.47.3



