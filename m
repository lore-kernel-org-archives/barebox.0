Delivery-date: Mon, 15 Apr 2024 07:37:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwF1m-001ZT1-1h
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:37:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwF1k-0007KK-Bq
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:37:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EdbkYH7OintYARsu+nAUFLNHJah4U4LLg28GD+4+WkM=; b=rW51vHhvsBhB9LJJL2ZXE7gKwM
	q8xIyqOI3r6QzzhJbwTYMAt4NOeAGEvPQXo2P1p2r/qktjKi+6H+H4NXAUAK0bSpFX8010y5ebHUO
	CuXAFw3JpA9+eVkKrQrrGy+ACyG2rBx0BxGJpfXmFBF1BEwCJs3Pdnw1fpgzJAukTCRah7rtykkNe
	zTrlCOoSWUyv0PXd2upAG5verK3LAN+ZDIPQBEkFcaisi+XJ5ujX2rPT9I8Wpkt43iDQHW03RLpQf
	LAQTtijLRC2R/vtpjS0GzVUkowgoMAHwGDA/LHPicZqPtEYzykMvFB5qhbK0A49K28rD9BgVKhHVn
	j7a+LByw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwF1D-000000071is-2Cip;
	Mon, 15 Apr 2024 05:36:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwF16-000000071f7-1OgI
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:36:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF15-0006T3-4C; Mon, 15 Apr 2024 07:36:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF14-00CMnj-Ny; Mon, 15 Apr 2024 07:36:30 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF14-001YY3-25;
	Mon, 15 Apr 2024 07:36:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:36:30 +0200
Message-Id: <20240415053630.371119-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_223632_887600_5CBB1D7D 
X-CRM114-Status: GOOD (  19.17  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: factor out debugging options into separate files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a lot of debugging options, especially for DEBUG_LL, which make
common/Kconfig quite a bit crowded. Releive some pressure there by
factoring the debugging options and DEBUG_LL out into separate files.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig          | 580 +---------------------------------------
 common/Kconfig.debug    | 153 +++++++++++
 common/Kconfig.debug_ll | 430 +++++++++++++++++++++++++++++
 3 files changed, 585 insertions(+), 578 deletions(-)
 create mode 100644 common/Kconfig.debug
 create mode 100644 common/Kconfig.debug_ll

diff --git a/common/Kconfig b/common/Kconfig
index 0000dac8740e..98a5e99b75dc 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1239,584 +1239,8 @@ endif
 
 endmenu
 
-menu "Debugging"
-
-config COMPILE_LOGLEVEL
-	int "compile loglevel"
-	default 6
-	help
-	  This defines the maximum loglevel compiled into the binary. Less important
-	  messages will be compiled away resulting in a smaller binary.
-
-	  0    system is unusable (emerg)
-	  1    action must be taken immediately (alert)
-	  2    critical conditions (crit)
-	  3    error conditions (err)
-	  4    warning conditions (warn)
-	  5    normal but significant condition (notice)
-	  6    informational (info)
-	  7    debug-level messages (debug)
-	  8    verbose debug messages (vdebug)
-
-config DEFAULT_LOGLEVEL
-	int "default loglevel"
-	default 7
-	help
-	  This defines the default runtime loglevel. It can be changed using the
-	  global.loglevel variable. Available logelevels are:
-
-	  0    system is unusable (emerg)
-	  1    action must be taken immediately (alert)
-	  2    critical conditions (crit)
-	  3    error conditions (err)
-	  4    warning conditions (warn)
-	  5    normal but significant condition (notice)
-	  6    informational (info)
-	  7    debug-level messages (debug)
-	  8    verbose debug messages (vdebug)
-
-config DEBUG_LL
-	bool
-	depends on HAS_DEBUG_LL
-	prompt "Low level debug messages (read help)"
-	help
-	  Enable this to get low level debug messages during barebox
-	  initialization. This is helpful if you are debugging code that
-	  executes before the console is initialized.
-
-	  This requires SoC specific support. Most SoCs require the
-	  debug UART to be initialized by a debugger or first stage
-	  bootloader.
-
-	  Note that selecting this option will limit barebox to a single
-	  UART definition, as specified below under "low-level debugging
-	  port". Attempting to boot the resulting image on a different
-	  platform *will not work*, so this option should not be enabled
-	  for builds that are intended to be portable.
-
-config ARCH_WANT_FRAME_POINTERS
-	bool
-
-config FRAME_POINTER
-	bool "Compile barebox with frame pointers" if COMPILE_TEST
-	default y if ARCH_WANT_FRAME_POINTERS
-	help
-	  Selected by platforms that expect frame pointer usage, e.g.
-	  when stack unwinding is enabled. The resulting barebox image
-	  will be slightly larger and slower, but it can give precise
-	  debugging information when print stack traces.
-
-config DEBUG_IMX_UART
-	bool
-
-config DEBUG_ROCKCHIP_UART
-	bool
-
-config DEBUG_OMAP_UART
-	bool
-
-config DEBUG_BCM283X_UART
-	bool
-
-choice
-	prompt "Kernel low-level debugging port"
-	depends on DEBUG_LL
-
-config DEBUG_IMX1_UART
-	bool "i.MX1 Debug UART"
-	depends on ARCH_IMX1
-	select DEBUG_IMX_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on i.MX1.
-
-config DEBUG_IMX21_UART
-	bool "i.MX21 Debug UART"
-	depends on ARCH_IMX21
-	select DEBUG_IMX_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on i.MX21.
-
-config DEBUG_IMX25_UART
-	bool "i.MX25 Debug UART"
-	depends on ARCH_IMX25
-	select DEBUG_IMX_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on i.MX25.
-
-config DEBUG_IMX27_UART
-	bool "i.MX27 Debug UART"
-	depends on ARCH_IMX27
-	select DEBUG_IMX_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on i.MX27.
-
-config DEBUG_IMX31_UART
-	bool "i.MX31 Debug UART"
-	depends on ARCH_IMX31
-	select DEBUG_IMX_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on i.MX31.
-
-config DEBUG_IMX35_UART
-	bool "i.MX35 Debug UART"
-	depends on ARCH_IMX35
-	select DEBUG_IMX_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on i.MX35.
-
-config DEBUG_IMX50_UART
-	bool "i.MX50 Debug UART"
-	depends on ARCH_IMX50
-	select DEBUG_IMX_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on i.MX50.
-
-config DEBUG_IMX51_UART
-	bool "i.MX51 Debug UART"
-	depends on ARCH_IMX51
-	select DEBUG_IMX_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on i.MX51.
-
-config DEBUG_IMX53_UART
-	bool "i.MX53 Debug UART"
-	depends on ARCH_IMX53
-	select DEBUG_IMX_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on i.MX53.
-
-config DEBUG_IMX6Q_UART
-	bool "i.MX6Q Debug UART"
-	depends on ARCH_IMX6
-	select DEBUG_IMX_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on i.MX6Q.
-
-config DEBUG_IMX7D_UART
-	bool "i.MX7D Debug UART"
-	depends on ARCH_IMX7
-	select DEBUG_IMX_UART
-	help
-	  Say Y here if you want barebox low-level debugging support
-	  on i.MX7D.
-
-config DEBUG_IMX8M_UART
-	bool "i.MX8M Debug UART"
-	depends on ARCH_IMX8M
-	select DEBUG_IMX_UART
-	help
-	  Say Y here if you want barebox low-level debugging support
-	  on i.MX8M*.
-
-config DEBUG_IMX9_UART
-	bool "i.MX9 Debug UART"
-	depends on ARCH_IMX93
-	select DEBUG_IMX_UART
-
-config DEBUG_VEXPRESS_UART
-	bool "Vexpress Debug UART"
-	depends on ARCH_VEXPRESS
-	help
-	  Say Y here if you want barebox low-level debugging support
-	  on Vexpress.
-
-config DEBUG_VF610_UART
-	bool "VF610 Debug UART"
-	depends on ARCH_VF610
-	select DEBUG_IMX_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on VF610.
-
-config DEBUG_OMAP3_UART
-	bool "OMAP3 Debug UART"
-	depends on ARCH_OMAP3
-	select DEBUG_OMAP_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on OMAP3.
-
-config DEBUG_OMAP4_UART
-	bool "OMAP4 Debug UART"
-	depends on ARCH_OMAP4
-	select DEBUG_OMAP_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on OMAP4.
-
-config DEBUG_AM33XX_UART
-	bool "AM33XX Debug UART"
-	depends on ARCH_AM33XX
-	select DEBUG_OMAP_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on AM33XX.
-
-config DEBUG_ROCKCHIP_RK3188_UART
-	bool "RK3188 Debug UART"
-	depends on ARCH_RK3188
-	select DEBUG_ROCKCHIP_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on RK3188.
-
-config DEBUG_ROCKCHIP_RK3288_UART
-	bool "RK3288 Debug UART"
-	depends on ARCH_RK3288
-	select DEBUG_ROCKCHIP_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on RK3288.
-
-config DEBUG_ROCKCHIP_RK3568_UART
-	bool "RK3568 Debug UART"
-	depends on ARCH_RK3568
-	select DEBUG_ROCKCHIP_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on RK3568.
-
-config DEBUG_ROCKCHIP_RK3588_UART
-	bool "RK3588 Debug UART"
-	depends on ARCH_RK3588
-	select DEBUG_ROCKCHIP_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on RK3588.
-
-config DEBUG_ROCKCHIP_RK3399_UART
-	bool "RK3399 Debug UART"
-	depends on ARCH_RK3399
-	select DEBUG_ROCKCHIP_UART
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on RK3399.
-
-config DEBUG_SOCFPGA_UART0
-	bool "Use SOCFPGA UART0 for low-level debug"
-	depends on ARCH_SOCFPGA
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on SOCFPGA(Cyclone 5 and Arria 5) based platforms.
-
-config DEBUG_SOCFPGA_UART1
-	bool "Use SOCFPGA UART1 for low-level debug"
-	depends on ARCH_SOCFPGA
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on SOCFPGA(Arria 10) based platforms.
-
-config DEBUG_STM32MP_UART
-	bool "Use STM32MP UART4 for low-level debug"
-	depends on ARCH_STM32
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on STM32MP.
-
-config DEBUG_RPI1_UART
-	bool "RaspberryPi 1 PL011 UART"
-	depends on ARCH_BCM283X
-	select DEBUG_BCM283X_UART
-	help
-	  Say Y here if you want low-level debugging support on
-	  RaspberryPi 1 boards.
-
-config DEBUG_AT91_UART
-	bool "AT91 Debug UART"
-	depends on ARCH_AT91
-	help
-	  Say Y here if you want barebox low-level debugging support
-	  on AT91 based platforms.
-
-config DEBUG_RPI2_3_UART
-	bool "RaspberryPi 2/3 PL011 UART"
-	depends on ARCH_BCM283X
-	select DEBUG_BCM283X_UART
-	help
-	  Say Y here if you want low-level debugging support on
-	  RaspberryPi 2 and 3 boards.
-
-config DEBUG_RPI3_MINI_UART
-	bool "RaspberryPi 3 mini UART"
-	depends on ARCH_BCM283X
-	select DEBUG_BCM283X_UART
-	help
-	  Say Y here if you want low-level debugging support on
-	  RaspberryPi 3 board mini UART.
-
-config DEBUG_RPI4_MINI_UART
-	bool "RaspberryPi 4 mini UART"
-	depends on ARCH_BCM283X
-	select DEBUG_BCM283X_UART
-	help
-	  Say Y here if you want low-level debugging support on
-	  RaspberryPi 4 board mini UART.
-
-config DEBUG_ZYNQMP_UART
-	bool "Zynqmp Debug UART"
-	depends on ARCH_ZYNQMP
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on Zynqmp.
-
-config DEBUG_ERIZO
-	bool "Erizo ns16550 port"
-	depends on SOC_ERIZO
-	select DEBUG_LL_NS16550
-
-config DEBUG_STARFIVE
-	bool "Starfive ns16550 serial0 port"
-	depends on SOC_STARFIVE
-	select DEBUG_LL_NS16550
-
-config DEBUG_RISCV_VIRT
-	bool "RISC-V Virt ns16550 port"
-	depends on SOC_VIRT
-	select DEBUG_LL_NS16550
-
-config DEBUG_RISCVEMU_HTIF
-	bool "riscvemu HTIF port"
-	depends on SOC_VIRT
-	help
-	  When run without graphics support, tinyemu will expose access
-	  to the Virt I/O console as HTIF blocking console device as well.
-	  This is useful for low level debugging before Virt I/O DMA is
-	  initialized.
-
-config DEBUG_SIFIVE
-	bool "SiFive serial0 port"
-	depends on SOC_SIFIVE
-
-config DEBUG_LITEX
-	bool "LiteX serial port"
-	depends on SOC_LITEX
-
-config DEBUG_SUN20I
-	bool "Allwinner Sun20i ns16550 serial0 port"
-	depends on SOC_ALLWINNER_SUN20I
-	select DEBUG_LL_NS16550
-
-config DEBUG_AM62X_UART
-	bool "Texas Instruments AM62X debug UART"
-	depends on ARCH_K3
-
-config DEBUG_QEMU_ARM64_VIRT
-	bool "QEMU ARM64 Virt PL011 console"
-	depends on ARCH_ARM64_VIRT
-
-endchoice
-
-config DEBUG_LL_NS16550
-	bool
-	help
-	  Selected by RISC-V platforms that use ns16550 for debug_ll
-
-config DEBUG_IMX_UART_PORT
-	int "i.MX Debug UART Port Selection" if DEBUG_IMX1_UART || \
-						DEBUG_IMX21_UART || \
-						DEBUG_IMX25_UART || \
-						DEBUG_IMX27_UART || \
-						DEBUG_IMX31_UART || \
-						DEBUG_IMX35_UART || \
-						DEBUG_IMX51_UART || \
-						DEBUG_IMX53_UART || \
-						DEBUG_IMX6Q_UART || \
-						DEBUG_IMX7D_UART || \
-						DEBUG_IMX8M_UART || \
-						DEBUG_IMX9_UART || \
-						DEBUG_VF610_UART
-	default 1
-	depends on ARCH_IMX
-	help
-	  Choose UART port on which kernel low-level debug messages
-	  should be output.
-
-config DEBUG_K3_UART_PORT
-	int "K3 Debug UART Port Selection" if DEBUG_AM62X_UART
-	default 0
-	depends on ARCH_K3
-	help
-	  Choose UART port on which kernel low-level debug messages
-	  should be output. Possible values are:
-	  AM62x: 0 - 6
-
-config DEBUG_OMAP_UART_PORT
-	int "OMAP Debug UART Port Selection" if DEBUG_OMAP3_UART || \
-						DEBUG_OMAP4_UART || \
-						DEBUG_AM33XX_UART || \
-						DEBUG_AM62X_UART
-	default 1
-	depends on ARCH_OMAP
-	help
-	  Choose UART port on which kernel low-level debug messages
-	  should be output. Possible values are:
-	  OMAP3: 1 - 3
-	  OMAP4: 1 - 3
-	  AM33XX: 0 - 2
-
-config DEBUG_ROCKCHIP_UART_PORT
-	int "RK3xxx UART debug port" if DEBUG_ROCKCHIP_RK3188_UART || \
-				DEBUG_ROCKCHIP_RK3288_UART || \
-				DEBUG_ROCKCHIP_RK3568_UART || \
-				DEBUG_ROCKCHIP_RK3588_UART || \
-				DEBUG_ROCKCHIP_RK3399_UART
-	default 2
-	depends on ARCH_ROCKCHIP
-	help
-	  Choose UART port on which kernel low-level debug messages
-	  should be output.
-
-config DEBUG_SOCFPGA_UART_PHYS_ADDR
-	hex "Physical base address of debug UART" if DEBUG_LL
-	default 0xffc02000 if DEBUG_SOCFPGA_UART0
-	default 0xffc02100 if DEBUG_SOCFPGA_UART1
-	depends on ARCH_SOCFPGA
-
-config DEBUG_SOCFPGA_UART_CLOCK
-	int "SoCFPGA UART debug clock" if DEBUG_LL
-	default 100000000 if ARCH_SOCFPGA_CYCLONE5
-	default  50000000 if ARCH_SOCFPGA_ARRIA10
-	depends on ARCH_SOCFPGA
-	help
-	  Choose UART root clock.
-
-
-config DEBUG_LAYERSCAPE_UART_PORT
-	int "Layerscape UART port selection"
-	depends on ARCH_LAYERSCAPE
-	default 1
-	help
-	  Select the UART port number used for early debugging here. Port
-	  numbers start counting from 1.
-
-config DEBUG_AT91_UART_BASE
-	hex "AT91 Debug UART Port Selection" if DEBUG_AT91_UART
-	default 0xfffff200 if SOC_AT91RM9200  || SOC_AT91SAM9260 \
-	                   || SOC_AT91SAM9261 || SOC_AT91SAM9X5  \
-			   || SOC_AT91SAM9N12
-	default 0xffffee00 if SOC_AT91SAM9263 || SOC_AT91SAM9G45 || SOC_SAMA5D3
-	default 0xfc069000 if SOC_SAMA5D4
-	default 0xf8020000 if SOC_SAMA5D2
-	default 0xfffff200
-	depends on ARCH_AT91
-	help
-	  Specify UART port base address on which barebox low-level
-	  debug messages should be output.
-
-config DEBUG_INITCALLS
-	bool "Trace initcalls"
-	select CONSOLE_FLUSH_LINE_BREAK
-	help
-	  If enabled this will print initcall traces.
-
-config DEBUG_PBL
-	bool "Print PBL debugging information"
-	depends on PBL_CONSOLE
-	help
-	  If enabled this will enable all debug prints in the prebootloader.
-	  For this to work, a console needs to be configured in the
-	  board-specific entry point and configured for either DEBUG_LL
-	  or PBL_CONSOLE.
-
-config DEBUG_PROBES
-	bool "Trace driver probes/removes"
-	select CONSOLE_FLUSH_LINE_BREAK
-	help
-	  If enabled this will log driver probe and remove traces. If DEBUG_LL is enabled,
-	  probes will be printed even before registering consoles. If it's disabled, they
-	  will be collected in the log and written out once a console is active.
-
-	  Removes are written to the log and will be printed as long as consoles exist.
-	  Most consoles do not implement a remove callback to remain operable until
-	  the very end. Consoles using DMA, however, must be removed.
-
-config DMA_API_DEBUG
-	bool "Enable debugging of DMA-API usage"
-	depends on HAS_DMA
-	help
-	  Enable this option to debug the use of the DMA API by device drivers.
-	  With this option you will be able to detect common bugs in device
-	  drivers like double-freeing of DMA mappings or freeing mappings that
-	  were never allocated.
-
-	  This option causes a performance degradation.  Use only if you want to
-	  debug device drivers and dma interactions.
-
-	  If unsure, say N.
-
-config DEBUG_LIST
-	bool "Debug linked list manipulation"
-	help
-	  Enable this to turn on extended checks in the linked-list
-	  walking routines.
-
-	  If unsure, say N.
-
-config PBL_BREAK
-	bool "Execute software break on pbl start"
-	depends on ARM && (!CPU_32v4T && !ARCH_TEGRA)
-	help
-	  If enabled, barebox will be compiled with BKPT instruction
-	  on early pbl init. This option should be used only with JTAG debugger!
-
-config PRINTF_FULL
-	bool "Support all extended printf format specifiers"
-	help
-	  Adds support for lesser used format specifiers like UUIDs and
-	  hex strings. Code requiring them should select it directly,
-	  so this is mainly for debugging. If unsure, say no.
-
-source "lib/Kconfig.ubsan"
-source "lib/kasan/Kconfig"
-
-config ASAN
-	bool "ASAN: runtime memory debugger"
-	depends on HAVE_ARCH_ASAN
-	help
-	  Enables ASAN (AddressSANitizer) - runtime memory debugger,
-	  designed to find out-of-bounds accesses and use-after-free bugs.
-
-config COMPILE_TEST
-	bool "compile-test drivers of other platforms"
-	default n
-	help
-	  Some drivers can be compiled on a different platform than they are
-	  intended to be run on. Despite they cannot be used there due to
-	  missing HW support, developers still, opposing to users, might want
-	  to build such drivers to compile-test them.
-
-	  If you are a developer and want to build as much as currently possible,
-	  say Y here. If you are a user, say N here to avoid being prompted for
-	  inclusion of unrelated drivers.
-
-config WERROR
-	bool "Compile barebox with warnings as errors"
-	default COMPILE_TEST
-	help
-	  A barebox build should not cause any compiler warnings, and this
-	  enables the '-Werror' flags to enforce that rule by default.
-
-	  However, if you have a new (or very old) compiler with odd and
-	  unusual warnings, or you have some architecture with problems,
-	  you may need to disable this config option in order to
-	  successfully build barebox.
-
-	  If in doubt, say Y.
-
-endmenu
-
-config HAS_DEBUG_LL
-	bool
+source "common/Kconfig.debug"
+source "common/boards/Kconfig"
 
 config DDR_SPD
 	bool
diff --git a/common/Kconfig.debug b/common/Kconfig.debug
new file mode 100644
index 000000000000..5d245de23c07
--- /dev/null
+++ b/common/Kconfig.debug
@@ -0,0 +1,153 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+menu "Debugging"
+
+config COMPILE_LOGLEVEL
+	int "compile loglevel"
+	default 6
+	help
+	  This defines the maximum loglevel compiled into the binary. Less important
+	  messages will be compiled away resulting in a smaller binary.
+
+	  0    system is unusable (emerg)
+	  1    action must be taken immediately (alert)
+	  2    critical conditions (crit)
+	  3    error conditions (err)
+	  4    warning conditions (warn)
+	  5    normal but significant condition (notice)
+	  6    informational (info)
+	  7    debug-level messages (debug)
+	  8    verbose debug messages (vdebug)
+
+config DEFAULT_LOGLEVEL
+	int "default loglevel"
+	default 7
+	help
+	  This defines the default runtime loglevel. It can be changed using the
+	  global.loglevel variable. Available logelevels are:
+
+	  0    system is unusable (emerg)
+	  1    action must be taken immediately (alert)
+	  2    critical conditions (crit)
+	  3    error conditions (err)
+	  4    warning conditions (warn)
+	  5    normal but significant condition (notice)
+	  6    informational (info)
+	  7    debug-level messages (debug)
+	  8    verbose debug messages (vdebug)
+
+source "common/Kconfig.debug_ll"
+
+config ARCH_WANT_FRAME_POINTERS
+	bool
+
+config FRAME_POINTER
+	bool "Compile barebox with frame pointers" if COMPILE_TEST
+	default y if ARCH_WANT_FRAME_POINTERS
+	help
+	  Selected by platforms that expect frame pointer usage, e.g.
+	  when stack unwinding is enabled. The resulting barebox image
+	  will be slightly larger and slower, but it can give precise
+	  debugging information when print stack traces.
+
+config DEBUG_INITCALLS
+	bool "Trace initcalls"
+	select CONSOLE_FLUSH_LINE_BREAK
+	help
+	  If enabled this will print initcall traces.
+
+config DEBUG_PBL
+	bool "Print PBL debugging information"
+	depends on PBL_CONSOLE
+	help
+	  If enabled this will enable all debug prints in the prebootloader.
+	  For this to work, a console needs to be configured in the
+	  board-specific entry point and configured for either DEBUG_LL
+	  or PBL_CONSOLE.
+
+config DEBUG_PROBES
+	bool "Trace driver probes/removes"
+	select CONSOLE_FLUSH_LINE_BREAK
+	help
+	  If enabled this will log driver probe and remove traces. If DEBUG_LL is enabled,
+	  probes will be printed even before registering consoles. If it's disabled, they
+	  will be collected in the log and written out once a console is active.
+
+	  Removes are written to the log and will be printed as long as consoles exist.
+	  Most consoles do not implement a remove callback to remain operable until
+	  the very end. Consoles using DMA, however, must be removed.
+
+config DMA_API_DEBUG
+	bool "Enable debugging of DMA-API usage"
+	depends on HAS_DMA
+	help
+	  Enable this option to debug the use of the DMA API by device drivers.
+	  With this option you will be able to detect common bugs in device
+	  drivers like double-freeing of DMA mappings or freeing mappings that
+	  were never allocated.
+
+	  This option causes a performance degradation.  Use only if you want to
+	  debug device drivers and dma interactions.
+
+	  If unsure, say N.
+
+config DEBUG_LIST
+	bool "Debug linked list manipulation"
+	help
+	  Enable this to turn on extended checks in the linked-list
+	  walking routines.
+
+	  If unsure, say N.
+
+config PBL_BREAK
+	bool "Execute software break on pbl start"
+	depends on ARM && (!CPU_32v4T && !ARCH_TEGRA)
+	help
+	  If enabled, barebox will be compiled with BKPT instruction
+	  on early pbl init. This option should be used only with JTAG debugger!
+
+config PRINTF_FULL
+	bool "Support all extended printf format specifiers"
+	help
+	  Adds support for lesser used format specifiers like UUIDs and
+	  hex strings. Code requiring them should select it directly,
+	  so this is mainly for debugging. If unsure, say no.
+
+source "lib/Kconfig.ubsan"
+source "lib/kasan/Kconfig"
+
+config ASAN
+	bool "ASAN: runtime memory debugger"
+	depends on HAVE_ARCH_ASAN
+	help
+	  Enables ASAN (AddressSANitizer) - runtime memory debugger,
+	  designed to find out-of-bounds accesses and use-after-free bugs.
+
+config COMPILE_TEST
+	bool "compile-test drivers of other platforms"
+	default n
+	help
+	  Some drivers can be compiled on a different platform than they are
+	  intended to be run on. Despite they cannot be used there due to
+	  missing HW support, developers still, opposing to users, might want
+	  to build such drivers to compile-test them.
+
+	  If you are a developer and want to build as much as currently possible,
+	  say Y here. If you are a user, say N here to avoid being prompted for
+	  inclusion of unrelated drivers.
+
+config WERROR
+	bool "Compile barebox with warnings as errors"
+	default COMPILE_TEST
+	help
+	  A barebox build should not cause any compiler warnings, and this
+	  enables the '-Werror' flags to enforce that rule by default.
+
+	  However, if you have a new (or very old) compiler with odd and
+	  unusual warnings, or you have some architecture with problems,
+	  you may need to disable this config option in order to
+	  successfully build barebox.
+
+	  If in doubt, say Y.
+
+endmenu
diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
new file mode 100644
index 000000000000..bdc1a7f3a6dc
--- /dev/null
+++ b/common/Kconfig.debug_ll
@@ -0,0 +1,430 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config HAS_DEBUG_LL
+	bool
+
+config DEBUG_LL
+	bool
+	depends on HAS_DEBUG_LL
+	prompt "Low level debug messages (read help)"
+	help
+	  Enable this to get low level debug messages during barebox
+	  initialization. This is helpful if you are debugging code that
+	  executes before the console is initialized.
+
+	  This requires SoC specific support. Most SoCs require the
+	  debug UART to be initialized by a debugger or first stage
+	  bootloader.
+
+	  Note that selecting this option will limit barebox to a single
+	  UART definition, as specified below under "low-level debugging
+	  port". Attempting to boot the resulting image on a different
+	  platform *will not work*, so this option should not be enabled
+	  for builds that are intended to be portable.
+
+config DEBUG_IMX_UART
+	bool
+
+config DEBUG_ROCKCHIP_UART
+	bool
+
+config DEBUG_OMAP_UART
+	bool
+
+config DEBUG_BCM283X_UART
+	bool
+
+choice
+	prompt "Kernel low-level debugging port"
+	depends on DEBUG_LL
+
+config DEBUG_IMX1_UART
+	bool "i.MX1 Debug UART"
+	depends on ARCH_IMX1
+	select DEBUG_IMX_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX1.
+
+config DEBUG_IMX21_UART
+	bool "i.MX21 Debug UART"
+	depends on ARCH_IMX21
+	select DEBUG_IMX_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX21.
+
+config DEBUG_IMX25_UART
+	bool "i.MX25 Debug UART"
+	depends on ARCH_IMX25
+	select DEBUG_IMX_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX25.
+
+config DEBUG_IMX27_UART
+	bool "i.MX27 Debug UART"
+	depends on ARCH_IMX27
+	select DEBUG_IMX_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX27.
+
+config DEBUG_IMX31_UART
+	bool "i.MX31 Debug UART"
+	depends on ARCH_IMX31
+	select DEBUG_IMX_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX31.
+
+config DEBUG_IMX35_UART
+	bool "i.MX35 Debug UART"
+	depends on ARCH_IMX35
+	select DEBUG_IMX_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX35.
+
+config DEBUG_IMX50_UART
+	bool "i.MX50 Debug UART"
+	depends on ARCH_IMX50
+	select DEBUG_IMX_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX50.
+
+config DEBUG_IMX51_UART
+	bool "i.MX51 Debug UART"
+	depends on ARCH_IMX51
+	select DEBUG_IMX_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX51.
+
+config DEBUG_IMX53_UART
+	bool "i.MX53 Debug UART"
+	depends on ARCH_IMX53
+	select DEBUG_IMX_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX53.
+
+config DEBUG_IMX6Q_UART
+	bool "i.MX6Q Debug UART"
+	depends on ARCH_IMX6
+	select DEBUG_IMX_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX6Q.
+
+config DEBUG_IMX7D_UART
+	bool "i.MX7D Debug UART"
+	depends on ARCH_IMX7
+	select DEBUG_IMX_UART
+	help
+	  Say Y here if you want barebox low-level debugging support
+	  on i.MX7D.
+
+config DEBUG_IMX8M_UART
+	bool "i.MX8M Debug UART"
+	depends on ARCH_IMX8M
+	select DEBUG_IMX_UART
+	help
+	  Say Y here if you want barebox low-level debugging support
+	  on i.MX8M*.
+
+config DEBUG_IMX9_UART
+	bool "i.MX9 Debug UART"
+	depends on ARCH_IMX93
+	select DEBUG_IMX_UART
+
+config DEBUG_VEXPRESS_UART
+	bool "Vexpress Debug UART"
+	depends on ARCH_VEXPRESS
+	help
+	  Say Y here if you want barebox low-level debugging support
+	  on Vexpress.
+
+config DEBUG_VF610_UART
+	bool "VF610 Debug UART"
+	depends on ARCH_VF610
+	select DEBUG_IMX_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on VF610.
+
+config DEBUG_OMAP3_UART
+	bool "OMAP3 Debug UART"
+	depends on ARCH_OMAP3
+	select DEBUG_OMAP_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on OMAP3.
+
+config DEBUG_OMAP4_UART
+	bool "OMAP4 Debug UART"
+	depends on ARCH_OMAP4
+	select DEBUG_OMAP_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on OMAP4.
+
+config DEBUG_AM33XX_UART
+	bool "AM33XX Debug UART"
+	depends on ARCH_AM33XX
+	select DEBUG_OMAP_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on AM33XX.
+
+config DEBUG_ROCKCHIP_RK3188_UART
+	bool "RK3188 Debug UART"
+	depends on ARCH_RK3188
+	select DEBUG_ROCKCHIP_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on RK3188.
+
+config DEBUG_ROCKCHIP_RK3288_UART
+	bool "RK3288 Debug UART"
+	depends on ARCH_RK3288
+	select DEBUG_ROCKCHIP_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on RK3288.
+
+config DEBUG_ROCKCHIP_RK3568_UART
+	bool "RK3568 Debug UART"
+	depends on ARCH_RK3568
+	select DEBUG_ROCKCHIP_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on RK3568.
+
+config DEBUG_ROCKCHIP_RK3588_UART
+	bool "RK3588 Debug UART"
+	depends on ARCH_RK3588
+	select DEBUG_ROCKCHIP_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on RK3588.
+
+config DEBUG_ROCKCHIP_RK3399_UART
+	bool "RK3399 Debug UART"
+	depends on ARCH_RK3399
+	select DEBUG_ROCKCHIP_UART
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on RK3399.
+
+config DEBUG_SOCFPGA_UART0
+	bool "Use SOCFPGA UART0 for low-level debug"
+	depends on ARCH_SOCFPGA
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on SOCFPGA(Cyclone 5 and Arria 5) based platforms.
+
+config DEBUG_SOCFPGA_UART1
+	bool "Use SOCFPGA UART1 for low-level debug"
+	depends on ARCH_SOCFPGA
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on SOCFPGA(Arria 10) based platforms.
+
+config DEBUG_STM32MP_UART
+	bool "Use STM32MP UART4 for low-level debug"
+	depends on ARCH_STM32
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on STM32MP.
+
+config DEBUG_RPI1_UART
+	bool "RaspberryPi 1 PL011 UART"
+	depends on ARCH_BCM283X
+	select DEBUG_BCM283X_UART
+	help
+	  Say Y here if you want low-level debugging support on
+	  RaspberryPi 1 boards.
+
+config DEBUG_AT91_UART
+	bool "AT91 Debug UART"
+	depends on ARCH_AT91
+	help
+	  Say Y here if you want barebox low-level debugging support
+	  on AT91 based platforms.
+
+config DEBUG_RPI2_3_UART
+	bool "RaspberryPi 2/3 PL011 UART"
+	depends on ARCH_BCM283X
+	select DEBUG_BCM283X_UART
+	help
+	  Say Y here if you want low-level debugging support on
+	  RaspberryPi 2 and 3 boards.
+
+config DEBUG_RPI3_MINI_UART
+	bool "RaspberryPi 3 mini UART"
+	depends on ARCH_BCM283X
+	select DEBUG_BCM283X_UART
+	help
+	  Say Y here if you want low-level debugging support on
+	  RaspberryPi 3 board mini UART.
+
+config DEBUG_RPI4_MINI_UART
+	bool "RaspberryPi 4 mini UART"
+	depends on ARCH_BCM283X
+	select DEBUG_BCM283X_UART
+	help
+	  Say Y here if you want low-level debugging support on
+	  RaspberryPi 4 board mini UART.
+
+config DEBUG_ZYNQMP_UART
+	bool "Zynqmp Debug UART"
+	depends on ARCH_ZYNQMP
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on Zynqmp.
+
+config DEBUG_ERIZO
+	bool "Erizo ns16550 port"
+	depends on SOC_ERIZO
+	select DEBUG_LL_NS16550
+
+config DEBUG_STARFIVE
+	bool "Starfive ns16550 serial0 port"
+	depends on SOC_STARFIVE
+	select DEBUG_LL_NS16550
+
+config DEBUG_RISCV_VIRT
+	bool "RISC-V Virt ns16550 port"
+	depends on SOC_VIRT
+	select DEBUG_LL_NS16550
+
+config DEBUG_RISCVEMU_HTIF
+	bool "riscvemu HTIF port"
+	depends on SOC_VIRT
+	help
+	  When run without graphics support, tinyemu will expose access
+	  to the Virt I/O console as HTIF blocking console device as well.
+	  This is useful for low level debugging before Virt I/O DMA is
+	  initialized.
+
+config DEBUG_SIFIVE
+	bool "SiFive serial0 port"
+	depends on SOC_SIFIVE
+
+config DEBUG_LITEX
+	bool "LiteX serial port"
+	depends on SOC_LITEX
+
+config DEBUG_SUN20I
+	bool "Allwinner Sun20i ns16550 serial0 port"
+	depends on SOC_ALLWINNER_SUN20I
+	select DEBUG_LL_NS16550
+
+config DEBUG_AM62X_UART
+	bool "Texas Instruments AM62X debug UART"
+	depends on ARCH_K3
+
+config DEBUG_QEMU_ARM64_VIRT
+	bool "QEMU ARM64 Virt PL011 console"
+	depends on ARCH_ARM64_VIRT
+
+endchoice
+
+config DEBUG_LL_NS16550
+	bool
+	help
+	  Selected by RISC-V platforms that use ns16550 for debug_ll
+
+config DEBUG_IMX_UART_PORT
+	int "i.MX Debug UART Port Selection" if DEBUG_IMX1_UART || \
+						DEBUG_IMX21_UART || \
+						DEBUG_IMX25_UART || \
+						DEBUG_IMX27_UART || \
+						DEBUG_IMX31_UART || \
+						DEBUG_IMX35_UART || \
+						DEBUG_IMX51_UART || \
+						DEBUG_IMX53_UART || \
+						DEBUG_IMX6Q_UART || \
+						DEBUG_IMX7D_UART || \
+						DEBUG_IMX8M_UART || \
+						DEBUG_IMX9_UART || \
+						DEBUG_VF610_UART
+	default 1
+	depends on ARCH_IMX
+	help
+	  Choose UART port on which kernel low-level debug messages
+	  should be output.
+
+config DEBUG_K3_UART_PORT
+	int "K3 Debug UART Port Selection" if DEBUG_AM62X_UART
+	default 0
+	depends on ARCH_K3
+	help
+	  Choose UART port on which kernel low-level debug messages
+	  should be output. Possible values are:
+	  AM62x: 0 - 6
+
+config DEBUG_OMAP_UART_PORT
+	int "OMAP Debug UART Port Selection" if DEBUG_OMAP3_UART || \
+						DEBUG_OMAP4_UART || \
+						DEBUG_AM33XX_UART || \
+						DEBUG_AM62X_UART
+	default 1
+	depends on ARCH_OMAP
+	help
+	  Choose UART port on which kernel low-level debug messages
+	  should be output. Possible values are:
+	  OMAP3: 1 - 3
+	  OMAP4: 1 - 3
+	  AM33XX: 0 - 2
+
+config DEBUG_ROCKCHIP_UART_PORT
+	int "RK3xxx UART debug port" if DEBUG_ROCKCHIP_RK3188_UART || \
+				DEBUG_ROCKCHIP_RK3288_UART || \
+				DEBUG_ROCKCHIP_RK3568_UART || \
+				DEBUG_ROCKCHIP_RK3588_UART || \
+				DEBUG_ROCKCHIP_RK3399_UART
+	default 2
+	depends on ARCH_ROCKCHIP
+	help
+	  Choose UART port on which kernel low-level debug messages
+	  should be output.
+
+config DEBUG_SOCFPGA_UART_PHYS_ADDR
+	hex "Physical base address of debug UART" if DEBUG_LL
+	default 0xffc02000 if DEBUG_SOCFPGA_UART0
+	default 0xffc02100 if DEBUG_SOCFPGA_UART1
+	depends on ARCH_SOCFPGA
+
+config DEBUG_SOCFPGA_UART_CLOCK
+	int "SoCFPGA UART debug clock" if DEBUG_LL
+	default 100000000 if ARCH_SOCFPGA_CYCLONE5
+	default  50000000 if ARCH_SOCFPGA_ARRIA10
+	depends on ARCH_SOCFPGA
+	help
+	  Choose UART root clock.
+
+
+config DEBUG_LAYERSCAPE_UART_PORT
+	int "Layerscape UART port selection"
+	depends on ARCH_LAYERSCAPE
+	default 1
+	help
+	  Select the UART port number used for early debugging here. Port
+	  numbers start counting from 1.
+
+config DEBUG_AT91_UART_BASE
+	hex "AT91 Debug UART Port Selection" if DEBUG_AT91_UART
+	default 0xfffff200 if SOC_AT91RM9200  || SOC_AT91SAM9260 \
+	                   || SOC_AT91SAM9261 || SOC_AT91SAM9X5  \
+			   || SOC_AT91SAM9N12
+	default 0xffffee00 if SOC_AT91SAM9263 || SOC_AT91SAM9G45 || SOC_SAMA5D3
+	default 0xfc069000 if SOC_SAMA5D4
+	default 0xf8020000 if SOC_SAMA5D2
+	default 0xfffff200
+	depends on ARCH_AT91
+	help
+	  Specify UART port base address on which barebox low-level
+	  debug messages should be output.
-- 
2.39.2



