Delivery-date: Mon, 31 Jan 2022 09:00:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERbn-001TUB-Js
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 09:00:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERbk-00068g-SJ
	for lore@pengutronix.de; Mon, 31 Jan 2022 09:00:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbAVD0TvDYQkfBCtxyjESag82Z+Qf4COXMMHu8dRmFc=; b=LmTWYHQN3Sas8Z
	Sxb/VO7ad6IsRmnfm3i5GwOOHWPaiLJ7WjkLY12Kwcait8HfBDQSrO7YyYa+PMqOL7gRqei+NwTbi
	/EGoJE8NUob/joSrhTR84A7x0y4IbCnZNoQKk7oMcY9HF9IKNsDJQKLl8/bJFCz77oFH8ux/xzgoH
	fVsoOQC9bG7mPbdXDBN3zM6dKup0Ouw2jUaIC3E/7NaRjivDtnTTDMsV00yE61fjvGOrgjgJUqYqg
	zRCMZyh1gxNdRsMEYEeTJQP124pfxyCT3wb1n55oK31dK4W+ZFgt+KECnZss2ABprRq0fkgfs3Lp0
	+CoNZ+XriKAKNkkxoMwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERaL-008MTg-Or; Mon, 31 Jan 2022 07:58:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nERZ8-008LyG-UZ
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 07:57:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nERZ7-0005E0-It; Mon, 31 Jan 2022 08:57:33 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nERZ6-007rHi-Qn; Mon, 31 Jan 2022 08:57:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 Jan 2022 08:57:24 +0100
Message-Id: <20220131075725.1873026-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
References: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_235735_162053_79E6592A 
X-CRM114-Status: GOOD (  14.96  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/12] ARM: stm32mp: allow driver reuse for STM32 MCUs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Most peripheral driver are usable for both STM32 MPUs and MCUs, but so
far we they were only used for STM32MP1. In preparation for adding
MCU support, introduce a new ARCH_STM32 selected by ARCH_STM32MP and
migrate common drivers to it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig           | 7 +++++++
 drivers/aiodev/Kconfig     | 2 +-
 drivers/hw_random/Kconfig  | 2 +-
 drivers/i2c/busses/Kconfig | 2 +-
 drivers/mci/Kconfig        | 2 +-
 drivers/mfd/Kconfig        | 2 +-
 drivers/pinctrl/Kconfig    | 2 +-
 drivers/pwm/Kconfig        | 2 +-
 drivers/regulator/Kconfig  | 2 +-
 drivers/serial/Kconfig     | 4 ++--
 drivers/watchdog/Kconfig   | 2 +-
 11 files changed, 18 insertions(+), 11 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index fecbe392333b..299e0ab08049 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -29,6 +29,12 @@ config TEXT_BASE
 
 menu "System Type"
 
+config ARCH_STM32
+	bool
+	help
+	  Selected by both STM32 MCUs and MPUs to restrict driver
+	  visibility.
+
 choice
 	prompt "ARM system type"
 
@@ -185,6 +191,7 @@ config ARCH_S3C64xx
 
 config ARCH_STM32MP
 	bool "STMicroelectronics STM32MP"
+	select ARCH_STM32
 	select CPU_V7
 	select HAVE_PBL_MULTI_IMAGES
 	select CLKDEV_LOOKUP
diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
index b0af2ebfd382..88a3b9a3431c 100644
--- a/drivers/aiodev/Kconfig
+++ b/drivers/aiodev/Kconfig
@@ -46,7 +46,7 @@ config AM335X_ADC
 
 config STM32_ADC
 	tristate "STM32 ADC driver"
-	depends on ARCH_STM32MP || COMPILE_TEST
+	depends on ARCH_STM32 || COMPILE_TEST
 	help
 	  Support for ADC on STM32.  Supports simple one-shot readings
 	  rather than continuous sampling with DMA, etc.  ADC channels should be
diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index 4b4200b5db5c..32b84b028b0e 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -17,7 +17,7 @@ config HWRNG_MXC_RNGC
 
 config HWRNG_STM32
 	tristate "STM32 Random Number Generator"
-	depends on ARCH_STM32MP || COMPILE_TEST
+	depends on ARCH_STM32 || COMPILE_TEST
 	help
 	  This driver provides barebox support for the Random Number
 	  Generator hardware found on the STM32 family of MPUs and MCUs.
diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index a551df537a69..d4e74552b7ad 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -60,7 +60,7 @@ config I2C_STM32
 	bool "STM32 I2C master driver"
 	select RESET_CONTROLLER
 	depends on HAVE_CLK
-	depends on ARCH_STM32MP || COMPILE_TEST
+	depends on ARCH_STM32 || COMPILE_TEST
 
 config I2C_RK3X
 	tristate "Rockchip RK3xxx I2C adapter"
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 95a73a761ca1..21d53c0c3f0b 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -206,7 +206,7 @@ config MCI_STM32_SDMMC2
 	bool "STMicroelectronics STM32H7 SD/MMC Host Controller support"
 	depends on ARM_AMBA
 	depends on RESET_CONTROLLER
-	depends on ARCH_STM32MP || COMPILE_TEST
+	depends on ARCH_STM32 || COMPILE_TEST
 	help
 	  This selects support for the SD/MMC controller on STM32H7 SoCs.
 	  If you have a board based on such a SoC and with a SD/MMC slot,
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 160248072ab1..9d4a82a9bbb4 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -93,7 +93,7 @@ config SMSC_SUPERIO
 
 config MFD_STM32_TIMERS
 	bool "STM32 Timers"
-	depends on ARCH_STM32MP || COMPILE_TEST
+	depends on ARCH_STM32 || COMPILE_TEST
 	help
 	  Select this to get regmap support for the timer blocks on STM32
 	  MCUs and MPUs.
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index d3d5c7be23cd..2ff99a39c877 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -102,7 +102,7 @@ config PINCTRL_VF610
 
 config PINCTRL_STM32
 	bool "STM32 pinctrl support" if  COMPILE_TEST
-	default y if ARCH_STM32MP
+	default y if ARCH_STM32
 	help
 	  Pinmux and GPIO controller found on STM32 family
 endif
diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 8219c1eaff7d..0b12278e80e7 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -38,7 +38,7 @@ config PWM_MXS
 
 config PWM_STM32
 	bool "STM32 PWM Support"
-	depends on ARCH_STM32MP || COMPILE_TEST
+	depends on ARCH_STM32 || COMPILE_TEST
 	help
 	  This enables PWM support for STM32 MCUs and MPUs.
 
diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 02cea362eb5d..c468e459153b 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -31,7 +31,7 @@ config REGULATOR_STM32_PWR
 
 config REGULATOR_STM32_VREFBUF
 	tristate "STMicroelectronics STM32 VREFBUF"
-	depends on ARCH_STM32MP || COMPILE_TEST
+	depends on ARCH_STM32 || COMPILE_TEST
 	help
 	  This driver supports STMicroelectronics STM32 VREFBUF (voltage
 	  reference buffer) which can be used as voltage reference for
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 8bf9fcd07e1b..9d4a534580ef 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -39,8 +39,8 @@ config DRIVER_SERIAL_IMX
 	bool "i.MX serial driver"
 
 config DRIVER_SERIAL_STM32
-	depends on ARCH_STM32MP
-	bool "stm32mp serial driver"
+	depends on ARCH_STM32
+	bool "stm32 serial driver"
 
 config DRIVER_SERIAL_STM378X
 	depends on ARCH_MXS
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index b8772e016fe0..6f209e096ebe 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -97,7 +97,7 @@ config RAVE_SP_WATCHDOG
 
 config STM32_IWDG_WATCHDOG
 	bool "STM32 IWDG"
-	depends on ARCH_STM32MP || COMPILE_TEST
+	depends on ARCH_STM32 || COMPILE_TEST
 	select MFD_SYSCON
 	help
 	  Enable to support configuration of the STM32's on-SoC IWDG watchdog.
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

