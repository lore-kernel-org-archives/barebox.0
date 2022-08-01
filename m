Delivery-date: Mon, 01 Aug 2022 14:20:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oIUOw-007eLj-92
	for lore@lore.pengutronix.de; Mon, 01 Aug 2022 14:20:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oIUOu-0008P5-1S
	for lore@pengutronix.de; Mon, 01 Aug 2022 14:20:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5+x8Xy9DEgB6GJiuTbZmHLNTl3uOvyrGCShEmddXvdg=; b=VifiWY6brLs5cQpwC4eIEIYgug
	Du5m9/WN86DemO2KjsQasuSd93GseJ5E+A28ptjutxXv5WfjTAxfHAL0uAUbM28XRy85tGEsVJxWu
	pb6rW/ys4yoYThH4Y+ylyUEeqvgSE/sKLbGRQ6+efSmLezZEml5GPWMlYBqDURmChoEHTJbPTZuQy
	mjNvyRePoX3UQd5N3EPjcRWsI5ubinMflZ06etSdNjexyffMqkJ5/C9sQRTJyZ07zqg0QmuDwsjXg
	Ot8hucjjtV3aaxS5kuEQi5K1YPSC9U4ae5uKEERSstPmQeYUzdX5HYnM0NbsqYFYQH1LCfjBLcvZ8
	AgF4kgpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIUNP-0063wD-30; Mon, 01 Aug 2022 12:18:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIUCf-005tsj-N3
	for barebox@lists.infradead.org; Mon, 01 Aug 2022 12:07:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCc-0005zq-Bt; Mon, 01 Aug 2022 14:07:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCa-0016gO-SM; Mon, 01 Aug 2022 14:07:16 +0200
Received: from str by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCZ-00AXmd-PO; Mon, 01 Aug 2022 14:07:15 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  1 Aug 2022 14:07:03 +0200
Message-Id: <20220801120708.2511165-3-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
References: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220801_050721_806219_EC1DC490 
X-CRM114-Status: GOOD (  11.39  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 3/8] ARM: socfpga: achilles: use dtbz instead of dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To optimize the image size, use compressed devicetrees.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/lowlevel.c | 6 +++---
 arch/arm/mach-socfpga/Kconfig              | 1 +
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index e213feb9f0..162cd58c58 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -29,7 +29,7 @@
 #define BITSTREAM1_OFFSET  0x0
 #define BITSTREAM2_OFFSET  BITSTREAM1_OFFSET + SZ_32M
 
-extern char __dtb_socfpga_arria10_achilles_start[];
+extern char __dtb_z_socfpga_arria10_achilles_start[];
 
 static noinline void achilles_start(void)
 {
@@ -86,7 +86,7 @@ ENTRY_FUNCTION(start_socfpga_achilles, r0, r1, r2)
 {
 	void *fdt;
 
-	fdt = __dtb_socfpga_arria10_achilles_start + get_runtime_offset();
+	fdt = __dtb_z_socfpga_arria10_achilles_start + get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
 }
@@ -111,7 +111,7 @@ ENTRY_FUNCTION(start_socfpga_achilles_bringup, r0, r1, r2)
 
 	arria10_ddr_calibration_sequence();
 
-	fdt = __dtb_socfpga_arria10_achilles_start + get_runtime_offset();
+	fdt = __dtb_z_socfpga_arria10_achilles_start + get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
 }
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 80344315e3..bdd2a2cfbf 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -23,6 +23,7 @@ config ARCH_SOCFPGA_CYCLONE5
 config ARCH_SOCFPGA_ARRIA10
 	bool
 	select CPU_V7
+	select ARM_USE_COMPRESSED_DTB
 	select RESET_CONTROLLER
 	select HAVE_PBL_MULTI_IMAGES
 	select OFDEVICE
-- 
2.30.2



