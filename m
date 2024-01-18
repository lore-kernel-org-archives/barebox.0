Delivery-date: Thu, 18 Jan 2024 10:08:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQOO6-0056GE-0V
	for lore@lore.pengutronix.de;
	Thu, 18 Jan 2024 10:08:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQOO6-00019U-Ie
	for lore@pengutronix.de; Thu, 18 Jan 2024 10:08:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5L8bOKywdE+TYQimbRaYXwMeDoiOxwdpeTvcFFO8YHE=; b=aU61khI8HcTH+oXj5rYfCmQ3fu
	N9cRok4tgOgMI28a9JxZOXc1Lo0WskxkqG8uTPSiqqDksQf5t6V/IEr9App7rafmVhu6X5nl1W/oU
	ioC2bhjdwakSI7yGRpYQ3tK3jgRS6PTYWjrbGNj1wSsr+/D79rKlY+k+5vUBoLZyCUwIqTjp8h6Gc
	JpByC9TJ56CrFwjHOLAjVRaX+Qs40rm1QV+A/Zstn3S4PzfohRkgu3nr4D5Eg9U3c3JBK9q2TyJ0n
	c42x0/h7DJ/8pimTQH4ltMTMflo8XkmYNDiFqfj+Gg0VPcOGp1OFPfx6tX/F0x7PPGff9oSk+Yv9j
	Ss+lmrjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQOMu-002E2L-2d;
	Thu, 18 Jan 2024 09:07:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQOMr-002E1c-37
	for barebox@lists.infradead.org;
	Thu, 18 Jan 2024 09:07:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQOMq-0000wg-K7; Thu, 18 Jan 2024 10:07:20 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQOMq-000eOy-7T; Thu, 18 Jan 2024 10:07:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQOMq-005Vsf-0S;
	Thu, 18 Jan 2024 10:07:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jan 2024 10:07:17 +0100
Message-Id: <20240118090718.1314156-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_010722_011074_34CD0CA8 
X-CRM114-Status: GOOD (  15.03  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] clk: make COMMON_CLK a visible symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far, we expected platforms to select COMMON_CLK if they have a clock
controller that's covered by the common clk framework and HAVE_CLK if
they have a legacy clock driver.

With the addition of SCMI clocks, platforms, especially virtualized ones,
that previously didn't need clock support may now want access to them.

Instead of having to select COMMON_CLK from such platforms on the
off-chance that SCMI clocks may need to be used, just make COMMON_CLK
user visible, so it can be selected as needed. As COMMON_CLK needs to
conflict with legacy clock support, we also add a symbol for that and
start selecting it where appropriate,

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig            |  5 +----
 arch/arm/mach-at91/Kconfig  |  4 ++++
 arch/arm/mach-at91/Makefile |  4 +---
 drivers/clk/Kconfig         | 21 ++++++++++++++++++++-
 4 files changed, 26 insertions(+), 8 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 089ce43c88bd..34415cd2cea0 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -120,7 +120,7 @@ config ARCH_NOMADIK
 	depends on 32BIT
 	select CPU_ARM926T
 	select CLOCKSOURCE_NOMADIK
-	select HAVE_CLK
+	select HAVE_LEGACY_CLK
 	help
 	  Support for the Nomadik platform by ST-Ericsson
 
@@ -229,7 +229,6 @@ config ARCH_K3
 	select CLKDEV_LOOKUP
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DEBUG_LL
-	select HAVE_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select PM_GENERIC_DOMAINS
 
@@ -281,7 +280,6 @@ config ARCH_STM32MP
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select HAS_DEBUG_LL
-	select HAVE_CLK
 	select GPIOLIB
 	select ARCH_HAS_RESET_CONTROLLER
 	select ARM_AMBA
@@ -294,7 +292,6 @@ config ARCH_VERSATILE
 	select GPIOLIB
 	select ARM_AMBA
 	select AMBA_SP804
-	select HAVE_CLK
 	select HAS_DEBUG_LL
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 94e8e525a2f0..1049eb69570d 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -20,6 +20,10 @@ config MACH_AT91SAM9263EK_DT
 	  Enabled for at91sam9263ek - evaluation kit.
 	  But only if we need the device tree (bootstrap do not use DT)
 
+config HAVE_AT91_LEGACY_CLK
+	def_bool !COMMON_CLK_OF_PROVIDER
+	select HAVE_LEGACY_CLK
+
 config HAVE_AT91_SMD
 	bool
 
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index c4532959556e..7d7f27749f65 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -4,9 +4,7 @@ obj-y += setup.o aic.o
 lwl-y += at91_pmc_ll.o ddramc_ll.o at91sam9_sdramc_ll.o matrix.o
 lwl-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += early_udelay.o
 
-ifeq ($(CONFIG_COMMON_CLK_OF_PROVIDER),)
-obj-y += clock.o
-endif
+obj-$(CONFIG_HAVE_AT91_LEGACY_CLK) += clock.o
 
 obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 3e032469d09b..685b34565d53 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -1,13 +1,32 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config HAVE_CLK
 	bool
+	help
+	  The <linux/clk.h> calls support software clock gating and
+	  thus are a key power management tool on many systems.
+
+config HAVE_LEGACY_CLK
+	select HAVE_CLK
+	bool
+	help
+	  Select this option when the clock API in <linux/clk.h> is implemented
+	  by platform/architecture code. This method is deprecated. Modern
+	  code should select COMMON_CLK instead and not define a custom
+	  'struct clk'.
 
 config CLKDEV_LOOKUP
 	bool
 
 config COMMON_CLK
+	bool "Common Clock Framework"
+	depends on !HAVE_LEGACY_CLK
 	select HAVE_CLK
-	bool
+	help
+	  The common clock framework is a single definition of struct
+	  clk, useful across many platforms, as well as an
+	  implementation of the clock API in include/linux/clk.h.
+	  Architectures utilizing the common struct clk should select
+	  this option.
 
 config COMMON_CLK_OF_PROVIDER
 	bool
-- 
2.39.2



