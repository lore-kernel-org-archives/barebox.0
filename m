Delivery-date: Thu, 23 Feb 2023 09:57:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pV7QD-00Gc8T-In
	for lore@lore.pengutronix.de; Thu, 23 Feb 2023 09:57:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pV7QB-0004yA-T2
	for lore@pengutronix.de; Thu, 23 Feb 2023 09:57:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:To:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HTrjGbxBJyfJc2EO2fWduq6ySaNT5BJQ+meai9ddogc=; b=Mq0HiyrH1lvI4X
	ZHYjjTcSpLhpSm0XK6HAJWG/C1hGosScB8Cml1ORfTF5rsT1wY6rygEUICIRmTvYugmmtPGFuSPT4
	p8g51ky/y5Ew3LW/e7pwSI8o0Ut8tU5sxHeUTumHws73B0N3sfuEBwBOu8M/8pkPh9LD+loSa+smC
	Tc8sm2uV+GK48VR4ykRtnCBxbjxxGGPjEFZdgtqgrk/VNwmRu0RKv+omd7WCekd/5Hbbt+TItKr38
	4GzfUJ31CWNxOMjCIVvHSR2tlc4pM6frPqsDgDIamxVdcEb5+88BWeBA3OyIgM7eyfKH9YgDfzI2u
	GSS++AScnLsnVIJ3PwSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV7OZ-00FbNs-6t; Thu, 23 Feb 2023 08:56:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV7OT-00FbMj-7O
	for barebox@lists.infradead.org; Thu, 23 Feb 2023 08:56:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pV7ON-0004jB-RY; Thu, 23 Feb 2023 09:55:55 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pV7ON-0004pa-KB; Thu, 23 Feb 2023 09:55:55 +0100
Date: Thu, 23 Feb 2023 09:55:55 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230223085555.GB32097@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_005601_454750_E9152C39 
X-CRM114-Status: GOOD (  20.75  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2023.02.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


barebox-2023.02.0 is out.

This time we have once again some progress with DSA: barebox gained
rtl8365mb switch support and I2C support for the ksz9477. This has
the nice side effect that we now have regmap_i2c and regmap_spi support.
Also there's a new NAND driver for Atmel SoCs with better device tree
support freshly imported from Linux.
If you ever wanted to parse JSON in barebox, you now have the
possibility to do so as Ahmad integrated jsmn into barebox.
The developer visible changes include that we dropped the _d suffix we
had on several struct types, most prominently struct device_d has become
struct device and struct driver_d has become struct driver. The old
name is still around as an alias, but it's a good idea to update out of
tree patches as the alias will be dropped at some point.
Also worth noting is that the default image compression algorithm
changed from LZO to LZ4. This has become necessary as LZO didn't see
any updates since 2017 and tools like Yocto begin dropping support
for LZO.

As usual, see below for a full list of changes.

Have Fun!
 Sascha

Ahmad Fatoum (123):
      RISC-V: start: print debugging info when CONFIG_DEBUG_INITCALLS
      pbl: Add Kconfig option to enable DEBUG globally in PBL
      mci: only write blocks when card out of programming mode
      ARM: asm: simplify arm_mem_stack_top
      mci: sdhci: arasan: fix probing eMMC without no-sd
      ARM: dts: fix wrong display-timings native-mode binding
      video: vpl: don't print only skipped vpl endpoints
      clk: imx: set CLK_SET_RATE_NO_REPARENT for all muxes
      clk: mux: forward round/set rate to parent if CLK_SET_RATE_PARENT
      ARM: i.MX6: skov: refactor LVDS/parallel device tree fixups
      ARM: i.MX6: skov: fix LVDS deep probe
      ARM: configs: imx_v7_defconfig: enable some useful options
      common: deep-probe: write deep probe enabled message to log
      net: dsa: ksz9477: fix confusing message detecting KSZ9893 compatible
      net: dsa: ksz9477: match microchip,ksz8563 compatible
      ARM: rockchip: make ATF installation optional
      regulator: rk808: simplify one error branch with dev_err_probe
      asm-generic: define IOMEM for assembly as well
      of: gpio: include <of.h> in <of_gpio.h>
      gpiolib: use signed int for gpio in gpiod_set_value
      gpiolib: implement dev_gpiod_get_index
      gpiolib: implement gpiod_get_value
      driver: add of_match_table as alias to of_compatible
      regulator: scmi: rename struct scmi_regulator::device_node to of_node
      vsprintf: support %pOF format specifier
      include: driver: make dev_(get_priv|is_probed) argument const pointer
      include: sync io-64-nonatomic-*.h headers with Linux
      clk: add prepare/unprepare helpers
      of: provide of_node_get and of_node_put stubs
      include: linux/slab.h: define krealloc/kstrdup
      barebox-wrapper: define MODULE_DEVICE_TABLE
      ARM: at91: sama5: switch to nonnaked entry functions
      ARM: at91: sama5d4: add entry point helpers
      lib: add jsmn JSON parser support
      lib: extend jsmn with simple JSONPath lookup helpers
      vsprintf: implement %pJP for printing JSONPaths
      test: self: add json parser test
      net: designware: eqos: implement set_promisc callback
      include: linux/iopoll.h: silence warning when timeout_us contains *
      pinctrl: stm32: fix pinctrl/gpio dependency ordering
      net: bcmgenet: fix warning when building for 32-bit
      ARM: rpi: defconfig: enable Raspberry Pi 4 drivers in 32-bit config
      ARM: switch open-coded instances to platform_mem_driver
      net: e1000: don't use nanosecond constants in readl_poll_timeout
      firmware: Kconfig: unify whitespace used for indentation
      mci: atmel_mci: fix off-by-1000 in poll timeout
      mci: atmel_mci: don't print error messages when probing SDIO
      mtd: consult CONFIG_OFDEVICE in mtd_get_of_node
      ARM: at91: sama5d4: enable for DT use
      net: macb: match atmel,sama5d4-gem compatible
      i2c: at91: extend for SAMA5D4 support
      eeprom: at24: add 24mac402/602 support
      driver: always ensure probe of RAM registered with mem_platform_driver
      common: deep-probe: don't build without CONFIG_OFDEVICE
      pinctrl: at91: make deep-probe compatible
      ARM: at91: make bootsource code generic to all SAMA5
      ARM: at91: SAMA5D4: add Wifx L1 support
      ARM: i.MX8M: bootrom-cmd: clean up pointer casting
      ARM: i.MX8M: bootrom: access OCRAM directly if running in EL3
      regmap: consolidate reg/val format into regmap_format
      regmap: support formatted read and write
      regmap: port regmap_init_spi
      regmap: factor out regmap cdev size calculation
      net: dsa: ksz9477: switch to regmap_init_spi
      net: dsa: ksz9477: create regmap cdev for switch registers
      drivers: base: regmap: introduce REGMAP_I2C
      dev: add dev_bus_is_spi/i2c helpers
      net: dsa: ksz9477: refactor to prepare i2c support
      regmap: i2c: use formatted I/O
      net: ksz9477: add I2C support
      driver: drop no longer used RW_SIZE/_MASK macros
      crypto: caam - sync 64-bit accessors with Linux
      crypto: caam - add job ring accessors from Linux
      crypto: caam - make command constants unsigned
      crypto: caam - implement early PBL init
      common: add new CONFIG_HAVE_OPTEE symbol
      ARM: i.MX8M: init CAAM when CONFIG_FSL_CAAM_RNG_PBL_INIT
      asm-generic: io.h: sync with Linux
      mtd: nand: base: implement nand_gpio_waitrdy
      mtd: nand: prefix enum nand_ecc_algo constants with NAND_ECC_ALGO_
      mtd: nand: rename nand_device::eccreq to Linux' ecc.requirements
      mtd: nand: define nand_get_(small|large)_page_ooblayout
      mtd: nand: define nand_interface_is_sdr
      mtd: nand: provide Linux' struct nand_ecc_ctrl::engine_type
      driver: implement dev_request_resource
      lib: provide stub Linux "generic" allocator API
      state: backend: direct: open backend in read-only mode if possible
      of: implement of_device_enable_by_alias
      mfd: add atmel-smc driver
      memory: add Atmel EBI driver
      mtd: nand: atmel: import Linux NAND controller driver
      ARM: AT91: sama5d3_xplained: switch to upstream binding
      mtd: nand: drop DT support in legacy driver
      ARM: AT91: sama5d3: always read memory size from controller
      of: platform: call struct device::detect in of_device_create_on_demand
      i2c: write debug print when registering any i2c client
      i2c: implement detect callback
      net: eth: skip opening disabled interfaces when going interactive
      ARM: stm32mp: odyssey-som: use upstream device trees
      driver: alias of_match_ptr and DRV_OF_COMPAT
      gpiolib: implement gpio_direction_input/output
      net: dsa: rename dsa_ops to dsa_switch_ops
      net: dsa: factor out dsa_port_alloc helper
      net: dsa: populate struct dsa_port::index/dev members
      net: dsa: always call port_pre_enable before port_enable
      net: dsa: add some helpers to ease porting kernel drivers
      net: dsa: add struct dsa_switch::priv member for driver use
      net: dsa: add Realtek (rtl8365mb/rtl8366rb) switch support
      net: dsa: realtek: support enabling only one of the drivers
      net: dsa: ksz8873: fix mismatched return value
      include: linux/printk: implement pr_*_once macros
      fs: tftp: print message when stack can't keep us with TFTP windowsize
      include: printk: retire printk_once for pr_debug_once
      fs: align write return codes with POSIX
      of: describe third arg of of_property_write_bool in kerneldoc
      kwboot: add missing header to fix musl build
      ARM: <asm/barebox-arm.h>: drop undefined barebox_arm_get_boarddata()
      ARM: rockchip: add missing header to <mach/rockchip.h>
      sandbox: fix linker warnings with newer ld
      of: split part of of_get_stdoutpath into of_find_node_by_chosen
      bootsource: use /chosen instead of /aliases/barebox,bootsource-
      ARM: stm32mp: much enlarge very early stack size
      Documentation: i.MX8M: add EVK barebox installation documentation

Johannes Schneider (1):
      ARM: i.MX8M: separate function call for clock_init

Kilian Strasser (1):
      pinctrl: rockchip: fix get_value

Lucas Stach (1):
      clk: imx8mp: add USB suspend clock

Marcin Niestroj (1):
      ARM: rpi: parse memory from vc fdt

Marco Felsch (1):
      pbl: set IMAGE_COMPRESSION per default to lz4

Maxim Kochetkov (1):
      serial: ns16550: move iomem/ioport init after clock init

Oleksij Rempel (8):
      ARM: imx6sx: udoo-neo: port to driver model
      ARM: imx6sx: udoo-neo: enable deep probe support
      ARM: imx6sx: udoo-neo: fix board compatible
      ARM: imx6sx: udoo-neo: configure GPIO pins for board auto detection.
      ARM: imx6sx: udoo-neo: add version detection support
      ARM: imx6sx: udoo-neo: enable memory size auto detection
      ARM: imx6sx: udoo-neo: fix gpt timer configuration
      ARM: imx6sx: udoo-neo: add barebox update handler support

Sascha Hauer (30):
      dts: update to v6.1
      dts: update to v6.2-rc1
      Rename device_d::device_node to device_d::of_node
      Rename struct device_d to device
      Rename struct driver_d to driver
      Rename struct fs_device_d to fs_device
      Rename struct fs_driver_d to fs_driver
      Merge branch 'for-next/struct-rename' into for-next/gpio
      Merge branch 'for-next/struct-rename' into for-next/kernelcode-helpers
      Merge branch 'for-next/struct-rename' into for-next/at91
      dts: update to v6.2-rc3
      mci: Add more respone types
      mci: handle SDIO cards gracefully
      ARM: dts: rpi3: Enable sdhci controller
      Merge branch 'for-next/struct-rename' into for-next/misc-struct-rename
      ARM: dts: remove duplicate reserved-memory nodes
      dts: update to v6.2-rc4
      Merge branch 'for-next/kernelcode-helpers' into HEAD
      Merge branch 'for-next/gpio' into HEAD
      Merge branch 'for-next/at91'
      Merge branch 'for-next/caam'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/jsmn'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/misc-struct-rename'
      Merge branch 'for-next/struct-rename'
      gpio: Fix unused variable warning
      Revert "sandbox: fix linker warnings with newer ld"
      Release v2023.02.0

Ulrich Ölmann (1):
      of: partition: moan if adding a partition failed

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


