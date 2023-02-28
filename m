Delivery-date: Tue, 28 Feb 2023 15:32:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11b-004ky8-O4
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 15:32:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11a-0004l8-H1
	for lore@pengutronix.de; Tue, 28 Feb 2023 15:32:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S8stslQx1wHrRMVZPMdrLevG+TTuWk6mc7KBk3VCCyM=; b=Xg7o1XhoEqLd9vdj8DLHDXEb2K
	RDmoIix/zl/GAffXQBr9CayKcl38juBmtS64+su4pniG7I0xIcJO0G4JJgVFsIfeOPk6WzOQ+cb7m
	jIdBm2BPaKwSQ2ykWrLU+A3rDgqNxR221ZFayjkJt1QC/rk+KCfUUeTQuEIn5A9lnD+9jqh4Q/WrR
	R5tAHVVv/Xv0AuDs/z3pU3jUZvjWGNpTOkWL5G0dDVPCk4wFOiTYOFWu9SEyww28IyGrIPNtYV6KC
	yktR9EnNUv7iYN2zSjVw9ygKA+d1sc40fEwJSt3OmojwIgfEhQ3hGDTHvWF31oU4dg6MR/c0r2DGl
	F8AzYKkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX10K-00DSnm-Pc; Tue, 28 Feb 2023 14:30:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX100-00DSgS-Lm
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 14:30:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zz-00047Y-9r; Tue, 28 Feb 2023 15:30:35 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zy-000t97-MA; Tue, 28 Feb 2023 15:30:34 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zw-007LX8-VW; Tue, 28 Feb 2023 15:30:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Feb 2023 15:30:29 +0100
Message-Id: <20230228143031.1718565-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230228143031.1718565-1-s.hauer@pengutronix.de>
References: <20230228143031.1718565-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_063037_057335_6ADFC31F 
X-CRM114-Status: GOOD (  12.53  )
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
Subject: [PATCH 7/9] ARM: at91: Switch all boards to multiimage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Most at91 boards are not safe for multiimage support. We can however
switch their compilation to the multiimage way which allows us to get
rid of some legacy cruft in the longer run.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                              |  1 +
 arch/arm/boards/animeo_ip/lowlevel.c          |  2 +-
 arch/arm/boards/at91rm9200ek/lowlevel.c       |  2 +-
 arch/arm/boards/at91sam9260ek/lowlevel.c      | 13 ++-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c | 11 ++-
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |  2 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c     |  2 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c      |  2 +-
 arch/arm/boards/dss11/lowlevel.c              |  2 +-
 arch/arm/boards/haba-knx/lowlevel.c           |  2 +-
 arch/arm/boards/pm9261/lowlevel_init.c        |  2 +-
 arch/arm/boards/pm9263/lowlevel_init.c        |  2 +-
 arch/arm/boards/pm9g45/lowlevel.c             |  2 +-
 arch/arm/boards/qil-a926x/lowlevel.c          | 13 ++-
 arch/arm/boards/telit-evk-pro3/lowlevel.c     |  2 +-
 .../arm/boards/tny-a926x/tny_a9260_lowlevel.c | 13 ++-
 .../arm/boards/tny-a926x/tny_a9263_lowlevel.c |  2 +-
 .../arm/boards/usb-a926x/usb_a9260_lowlevel.c | 13 ++-
 .../arm/boards/usb-a926x/usb_a9263_lowlevel.c |  2 +-
 arch/arm/mach-at91/Kconfig                    |  1 -
 images/Makefile.at91                          | 92 +++++++++++++++++++
 21 files changed, 164 insertions(+), 19 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8183f6d546..3ac9bc4ad7 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -42,6 +42,7 @@ config ARCH_AT91
 	bool "Atmel AT91"
 	select GPIOLIB
 	select CLKDEV_LOOKUP
+	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DEBUG_LL
 	select HAVE_CLK
 	select COMMON_CLK_AT91 if COMMON_CLK_OF_PROVIDER
diff --git a/arch/arm/boards/animeo_ip/lowlevel.c b/arch/arm/boards/animeo_ip/lowlevel.c
index 7f52f824df..2d443f5384 100644
--- a/arch/arm/boards/animeo_ip/lowlevel.c
+++ b/arch/arm/boards/animeo_ip/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_animeo_ip, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91rm9200ek/lowlevel.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
index b132ccc084..ba62f1116d 100644
--- a/arch/arm/boards/at91rm9200ek/lowlevel.c
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -21,7 +21,7 @@ void static inline access_sdram(void)
 	writel(0x00000000, AT91_CHIPSELECT_1);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_at91rm9200ek, r0, r1, r2)
 {
 	u32 r;
 	int i;
diff --git a/arch/arm/boards/at91sam9260ek/lowlevel.c b/arch/arm/boards/at91sam9260ek/lowlevel.c
index 7f52f824df..81fe70278b 100644
--- a/arch/arm/boards/at91sam9260ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9260ek/lowlevel.c
@@ -14,7 +14,18 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_at91sam9260ek, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
+			  NULL);
+}
+
+ENTRY_FUNCTION(start_at91sam9g20ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9261ek/lowlevel_init.c b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
index bb9b905c65..47a8f21db8 100644
--- a/arch/arm/boards/at91sam9261ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
@@ -117,7 +117,16 @@ static void __bare_init at91sam9261ek_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_at91sam9261ek, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9261_SRAM_BASE + AT91SAM9261_SRAM_SIZE);
+
+	at91sam9261ek_init();
+}
+
+ENTRY_FUNCTION(start_at91sam9g10ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
index 755e7ec029..94732df14f 100644
--- a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/hardware.h>
 #include <mach/at91_ddrsdrc.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_at91sam9m10g45ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9m10ihd/lowlevel.c b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
index 817c7548c9..1dd17ee263 100644
--- a/arch/arm/boards/at91sam9m10ihd/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9g45.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_at91sam9m10ihd, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9n12ek/lowlevel.c b/arch/arm/boards/at91sam9n12ek/lowlevel.c
index 4353555d0d..7366e74c3c 100644
--- a/arch/arm/boards/at91sam9n12ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9n12ek/lowlevel.c
@@ -13,7 +13,7 @@
 #include <mach/at91_ddrsdrc.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_at91sam9n12ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/dss11/lowlevel.c b/arch/arm/boards/dss11/lowlevel.c
index 7f52f824df..86cc295e8b 100644
--- a/arch/arm/boards/dss11/lowlevel.c
+++ b/arch/arm/boards/dss11/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_dss11, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/haba-knx/lowlevel.c b/arch/arm/boards/haba-knx/lowlevel.c
index 7f52f824df..3f810a396d 100644
--- a/arch/arm/boards/haba-knx/lowlevel.c
+++ b/arch/arm/boards/haba-knx/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_haba_knx_lite, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pm9261/lowlevel_init.c b/arch/arm/boards/pm9261/lowlevel_init.c
index b18cd067b7..13a604ceb8 100644
--- a/arch/arm/boards/pm9261/lowlevel_init.c
+++ b/arch/arm/boards/pm9261/lowlevel_init.c
@@ -111,7 +111,7 @@ static void __bare_init pm9261_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_pm9261, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pm9263/lowlevel_init.c b/arch/arm/boards/pm9263/lowlevel_init.c
index 8f44adee99..9a690531e3 100644
--- a/arch/arm/boards/pm9263/lowlevel_init.c
+++ b/arch/arm/boards/pm9263/lowlevel_init.c
@@ -132,7 +132,7 @@ static void __bare_init pm9263_board_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_pm9263, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
index 5f66b28254..096bbc485a 100644
--- a/arch/arm/boards/pm9g45/lowlevel.c
+++ b/arch/arm/boards/pm9g45/lowlevel.c
@@ -14,7 +14,7 @@
 
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_pm9g45, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/qil-a926x/lowlevel.c b/arch/arm/boards/qil-a926x/lowlevel.c
index 7f52f824df..3a233fcf17 100644
--- a/arch/arm/boards/qil-a926x/lowlevel.c
+++ b/arch/arm/boards/qil-a926x/lowlevel.c
@@ -14,7 +14,18 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_qil_a926x, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
+			  NULL);
+}
+
+ENTRY_FUNCTION(start_qil_a9g20, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/telit-evk-pro3/lowlevel.c b/arch/arm/boards/telit-evk-pro3/lowlevel.c
index 7f52f824df..3a613a65a8 100644
--- a/arch/arm/boards/telit-evk-pro3/lowlevel.c
+++ b/arch/arm/boards/telit-evk-pro3/lowlevel.c
@@ -14,7 +14,7 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_telit_evk_pro3, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
index 7f52f824df..e78e93528d 100644
--- a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
@@ -14,7 +14,18 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_tny_a9260, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
+			  NULL);
+}
+
+ENTRY_FUNCTION(start_tny_a9g20, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
index 565ba438d2..b8b813ef12 100644
--- a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
@@ -118,7 +118,7 @@ static void __bare_init tny_a9263_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_tny_a9263, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
index 7f52f824df..7e3ee80ab7 100644
--- a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
@@ -14,7 +14,18 @@
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_usb_a9260, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
+			  NULL);
+}
+
+ENTRY_FUNCTION(start_usb_a9g20, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
index 2ad88d7f22..e54c8442c4 100644
--- a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
@@ -122,7 +122,7 @@ static void __bare_init usb_a9263_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_usb_a9263, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 22ed71350c..67d428e210 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -570,7 +570,6 @@ endif
 
 config AT91_MULTI_BOARDS
 	bool "Allow multiple boards to be selected"
-	select HAVE_PBL_MULTI_IMAGES
 	select ARM_USE_COMPRESSED_DTB
 
 if AT91_MULTI_BOARDS
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index c6a6fb697b..bbb291bcbe 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -55,3 +55,95 @@ image-$(CONFIG_MACH_SKOV_ARM9CPU) += barebox-skov-arm9cpu.img
 pblb-$(CONFIG_MACH_SAMA5D4_WIFX) += start_sama5d4_wifx_l1
 FILE_barebox-wifx-l1.img = start_sama5d4_wifx_l1.pblb
 image-$(CONFIG_MACH_SAMA5D4_WIFX) += barebox-wifx-l1.img
+
+pblb-$(CONFIG_MACH_AT91SAM9261EK) += start_at91sam9261ek
+FILE_barebox-at91sam9261ek.img = start_at91sam9261ek.pblb
+image-$(CONFIG_MACH_AT91SAM9261EK) += barebox-at91sam9261ek.img
+
+pblb-$(CONFIG_MACH_AT91SAM9G10EK) += start_at91sam9g10ek
+FILE_barebox-at91sam9g10ek.img = start_at91sam9g10ek.pblb
+image-$(CONFIG_MACH_AT91SAM9G10EK) += barebox-at91sam9g10ek.img
+
+pblb-$(CONFIG_MACH_ANIMEO_IP) += start_animeo_ip
+FILE_barebox-animeo-ip.img = start_animeo_ip.pblb
+image-$(CONFIG_MACH_ANIMEO_IP) += barebox-animeo-ip.img
+
+pblb-$(CONFIG_MACH_AT91RM9200EK) += start_at91rm9200ek
+FILE_barebox-at91rm9200ek.img = start_at91rm9200ek.pblb
+image-$(CONFIG_MACH_AT91RM9200EK) += barebox-at91rm9200ek.img
+
+pblb-$(CONFIG_MACH_AT91SAM9260EK) += start_at91sam9260ek
+FILE_barebox-at91sam9260ek.img = start_at91sam9260ek.pblb
+image-$(CONFIG_MACH_AT91SAM9260EK) += barebox-at91sam9260ek.img
+
+pblb-$(CONFIG_MACH_AT91SAM9G20EK) += start_at91sam9g20ek
+FILE_barebox-at91sam9g20ek.img = start_at91sam9g20ek.pblb
+image-$(CONFIG_MACH_AT91SAM9G20EK) += barebox-at91sam9g20ek.img
+
+pblb-$(CONFIG_MACH_AT91SAM9M10G45EK) += start_at91sam9m10g45ek
+FILE_barebox-at91sam9m10g45ek.img = start_at91sam9m10g45ek.pblb
+image-$(CONFIG_MACH_AT91SAM9M10G45EK) += barebox-at91sam9m10g45ek.img
+
+pblb-$(CONFIG_MACH_AT91SAM9M10IHD) += start_at91sam9m10ihd
+FILE_barebox-at91sam9m10ihd.img = start_at91sam9m10ihd.pblb
+image-$(CONFIG_MACH_AT91SAM9M10IHD) += barebox-at91sam9m10ihd.img
+
+pblb-$(CONFIG_MACH_AT91SAM9N12EK) += start_at91sam9n12ek
+FILE_barebox-at91sam9n12ek.img = start_at91sam9n12ek.pblb
+image-$(CONFIG_MACH_AT91SAM9N12EK) += barebox-at91sam9n12ek.img
+
+pblb-$(CONFIG_MACH_DSS11) += start_dss11
+FILE_barebox-dss11.img = start_dss11.pblb
+image-$(CONFIG_MACH_DSS11) += barebox-dss11.img
+
+pblb-$(CONFIG_MACH_HABA_KNX_LITE) += start_haba_knx_lite
+FILE_barebox-haba-knx-lite.img = start_haba_knx_lite.pblb
+image-$(CONFIG_MACH_HABA_KNX_LITE) += barebox-haba-knx-lite.img
+
+pblb-$(CONFIG_MACH_PM9261) += start_pm9261
+FILE_barebox-pm9261.img = start_pm9261.pblb
+image-$(CONFIG_MACH_PM9261) += barebox-pm9261.img
+
+pblb-$(CONFIG_MACH_PM9263) += start_pm9263
+FILE_barebox-pm9263.img = start_pm9263.pblb
+image-$(CONFIG_MACH_PM9263) += barebox-pm9263.img
+
+pblb-$(CONFIG_MACH_PM9G45) += start_pm9g45
+FILE_barebox-pm9g45.img = start_pm9g45.pblb
+image-$(CONFIG_MACH_PM9G45) += barebox-pm9g45.img
+
+pblb-$(CONFIG_MACH_QIL_A9260) += start_qil_a926x
+FILE_barebox-qil-a926x.img = start_qil_a926x.pblb
+image-$(CONFIG_MACH_QIL_A9260) += barebox-qil-a926x.img
+
+pblb-$(CONFIG_MACH_QIL_A9G20) += start_qil_a9g20
+FILE_barebox-qil-a9g20.img = start_qil_a9g20.pblb
+image-$(CONFIG_MACH_QIL_A9G20) += barebox-qil-a9g20.img
+
+pblb-$(CONFIG_MACH_GE863) += start_telit_evk_pro3
+FILE_barebox-telit-evk-pro3.img = start_telit_evk_pro3.pblb
+image-$(CONFIG_MACH_GE863) += barebox-telit-evk-pro3.img
+
+pblb-$(CONFIG_MACH_TNY_A9260) += start_tny_a9260
+FILE_barebox-tny-a9260.img = start_tny_a9260.pblb
+image-$(CONFIG_MACH_TNY_A9260) += barebox-tny-a9260.img
+
+pblb-$(CONFIG_MACH_TNY_A9263) += start_tny_a9263
+FILE_barebox-tny-a9263.img = start_tny_a9263.pblb
+image-$(CONFIG_MACH_TNY_A9263) += barebox-tny-a9263.img
+
+pblb-$(CONFIG_MACH_TNY_A9G20) += start_tny_a9g20
+FILE_barebox-tny-a9g20.img = start_tny_a9g20.pblb
+image-$(CONFIG_MACH_TNY_A9G20) += barebox-tny-a9g20.img
+
+pblb-$(CONFIG_MACH_USB_A9260) += start_usb_a9260
+FILE_barebox-usb-a9260.img = start_usb_a9260.pblb
+image-$(CONFIG_MACH_USB_A9260) += barebox-usb-a9260.img
+
+pblb-$(CONFIG_MACH_USB_A9263) += start_usb_a9263
+FILE_barebox-usb-a9263.img = start_usb_a9263.pblb
+image-$(CONFIG_MACH_USB_A9263) += barebox-usb-a9263.img
+
+pblb-$(CONFIG_MACH_USB_A9G20) += start_usb_a9g20
+FILE_barebox-usb-a9g20.img = start_usb_a9g20.pblb
+image-$(CONFIG_MACH_USB_A9G20) += barebox-usb-a9g20.img
-- 
2.30.2



