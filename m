Delivery-date: Tue, 20 Feb 2024 09:33:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcLZO-00FmmQ-1J
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 09:33:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcLZL-0006yT-Dg
	for lore@pengutronix.de; Tue, 20 Feb 2024 09:33:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:To:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DlrDUsWS2YMpiZqBjralaPZrAF/e0AOTxgN98h/xeoA=; b=A5pIHbnOIU4QRQ
	2XjtPx3nUmLwx3TLtG795cCtcpVEiD99AhyDV8aECl6umQ8iXFbIuID9hulqIwj/TjBlaOEFIIu3p
	8zSFPOmDF0P36tyeMgfjyHxzjSl6pdjmwtsmIwWjaz7SYlHX4pQcijvyMPDnbURYGh71mdKVS6ReW
	qRpxjsT1LEALEH5hwC/fqVXZNX3sSN4RYRNE+EyQu9BYCOp0PIlgIK/GwqNbZiFmrB7h4mrqHXNzB
	d/0CHnhJoVNh/2VK0HxAQ9H3KswqOr/oxWnqo1Vf32oHU/4JA043e5COq3C6t5MgLc+9G65AqWd3Z
	/H1qthxCLNeSQ8CcIf/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcLYp-0000000Djp0-1aED;
	Tue, 20 Feb 2024 08:33:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcLYj-0000000DjlO-3ATz
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 08:33:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rcLYh-0006qq-Jw; Tue, 20 Feb 2024 09:32:59 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rcLYh-001o77-6x; Tue, 20 Feb 2024 09:32:59 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rcLYh-00HMRB-0P;
	Tue, 20 Feb 2024 09:32:59 +0100
Date: Tue, 20 Feb 2024 09:32:59 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZdRju8OQTsBb0Jut@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_003302_215636_3BA39E9E 
X-CRM114-Status: GOOD (  19.85  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: v2024.02.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

barebox-2024.02.0 is out. This release brings us Layerscape LS1028a
support. Along with this the Layerscape support is moved over to
multi-platform so that we no longer have to build it separately. Marco
has worked on OP-TEE support with several improvements: barebox can
now parse the OP-TEE binary headers on ARMv8 and thus on i.MX8 no longer
depends on hardcoded addresses, but can put the binary into the correct
place automatically. Ahmad has phased out some relicts from the early
days: He removed the auto generation of the ARM mach-types.h file. With
this we can no longer add ancient machines depending on mach types. The
future is there ;)
As usual several assorted changes all over the place, see below.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (70):
      ARM: mach-types: remove all unused by barebox
      ARM: mach-types: don't generate header at buildtime
      cdev: make __devfs_add_partition's last argument optional
      driver.h: move devfs_add/del_partition later in file
      cdev: export cdevfs_add_partition for general use
      partition: switch to using cdevfs_add_partition
      cdev: export and use cdevfs_del_partition
      cdev: delete partitions when deleting master cdev
      ARM: layerscape: ppa: fix type of C variable used in inline assembly
      dma: rename OF_DMA_DEFAULT_COHERENT to ARCH_DMA_DEFAULT_COHERENT
      dma: select ARCH_DMA_DEFAULT_COHERENT for x86 and sandbox
      dma: introduce CONFIG_OF_DMA_COHERENCY
      RISC-V: StarFive: J7100: set /soc/dma-noncoherent
      ARM: dts: layerscape: add header for barebox DT overrides
      ARM: dts: layerscape: mark ls1046a SoC DMA incoherent in DT
      compiler: define __ll_elem for linker list elements
      treewide: mark linker list elements with __ll_elem
      list: rename debugging hooks
      lib: add optional linked list debugging
      cdev: simplify loop in cdev_by_device_node
      cdev: add cdev_alloc helper for creating cdevs
      rsatoc: fix typo in usage string
      sandbox: set DMA_ALIGNMENT instead of defining dma_alloc
      kvx: set DMA_ALIGNMENT instead of defining dma_alloc
      mips: set DMA_ALIGNMENT instead of defining dma_alloc
      dma: don't allow override of dma_alloc/dma_free
      gitignore: ignore mvebu binary.0 firmware files
      usb: dwc3: of-simple: remove unmatchable compatibles
      usb: xhci: call dma_unmap_single in error paths
      of: populate new device_d::dma_coherent attribute
      dma: fix dma_sync when not all device DMA is equally coherent
      dma: align barebox DMA coherency setting with kernel's
      ARM: layerscape: configure all DMA masters to be cache-coherent
      ARM: layerscape: enable DWC3 snooping on ls1046a
      ARM: i.MX8M: remove unutilized start parameter to i.MX8M load functions
      ARM: i.MX8M: return error if imx_load_image can't honour entry address
      pbl: add COMPILE_TEST prompt for PBL_VERIFY_PIGGY
      clk: make COMMON_CLK a visible symbol
      clk: select CLKDEV_LOOKUP from COMMON_CLK
      ARM: dts: i.MX8MP: drop temporary workaround
      soc: imx: imx8m-featctrl: make header self-contained
      nvmem: ocotp: prepare adding tester3 support
      soc: imx: featctrl: finalize support for i.MX8MP
      drivers: soc: split off powerdomains into new pmdomain directory
      pmdomain: use single implementation for dev_pm_domain_attach
      pmdomain: power: drop unused parameters for internal functions
      pmdomain: associate devices with their power domain
      pmdomain: push have_genpd_providers check into __genpd_dev_pm_attach
      pmdomain: drop superfluous parameter to __genpd_dev_pm_attach
      pmdomain: implement dev_pm_domain_attach_by_id/name
      pmdomain: add support for enabling power domains later on
      pmdomain: imx: gpcv2: enable COMPILE_TEST build
      pmdomain: add stub definition for dev_pm_domain_detach
      pmdomain: add stub definition for pm_runtime_put_genpd
      pmdomain: implement pm_genpd_remove/of_genpd_del_provider for cleanup
      driver: have dev_request_mem_region_err_null warn if resource starts at 0
      include: linux/device.h: implement dev_platform_ioremap_resource
      regmap: include missing header from linux/regmap.h
      clk: define aliases for clk_bulk_prepare_enable/disable_unprepare
      driver: make driver.h header self-contained
      pmdomain: imx: add i.MX8MP HSIO blk-ctrl driver
      ARM: dts: i.MX8MP: drop barebox,allow-dummy for HSIO blk-ctrl
      ARM: socfpga: complete definitions of handoff registers
      ARM: socfpga: populate HANDOFF_FPGA2SDR with Quartus value
      fpga: socfpga-fpga2sdram-bridge: consult HANDOFF_FPGA2SDR register
      fpga: socfpga-fpga2sdram-bridge: always populate HANDOFF_FPGA2SDR register
      mtd: spi-nor: fix format specifier in debug message
      mci: sdhci: atmel: fix truncation when reading out caps
      i2c: don't return error pointers from of_find_i2c_adapter_by_node
      ddr: fsl: fix possible use of uninitalized variable

Alvin ¦ipraga (4):
      net: fec_imx: reverse registration order of mdiobus and edev
      net: dsa: realtek: fix support for MDIO-connected switches
      net: dsa: realtek: unify ds_ops
      net: mdio_bus: associate OF nodes with their devices

Antony Pavlov (4):
      MIPS: asm/pbl_nmon.h: add guard macro
      MIPS: qemu-malta*_defconfig: enable e1000 network driver
      uImage: use IS_ENABLED(CONFIG_TIMESTAMP)
      common: Kconfig: TIMESTAMP: fix help

Bastian Krause (4):
      mfd: rn5t568: add complete register map to header and use it
      i2c: add pmic_reg_read8() for PBL use
      Documentation: usb: document bbu fastboot partition name
      usbgadget: add bbu fastboot partition naming scheme

Enrico Jorns (1):
      Documentation: user: usb: fix duplicate literal block

Holger Assmann (1):
      bootchooser: add new value "reset" to reset boot attempts counter

Jules Maselbas (1):
      Documentation: Fix heading level of TFTP windowsize section

Marco Felsch (22):
      mtd: spi-nor: add support for Winbond w25q256jwm
      ARM: boards: i.MX8M: add HAB support
      ARM: boards: i.MX8MQ: align SPDX header with other imxcfg files
      images: Makefile.imx: add i.MX9 comment
      ARM: boards: polyhex-debix: fix file mode for 8g-lpddr4-timing.c
      ARM: i.MX8M: atf: make use of imx8m*_save_bootrom_log macros
      ARM: i.MX8M: bundle imx-scratch code
      ARM: i.MX8M: scratch: make imx_scratch_space private
      ARM: i.MX8M: romapi: refactor saving the bootrom log
      ARM: i.MX8M: scratch: add optee_hdr area
      common: limit BOOTM_OPTEE to 32bit systems
      common: add OPTEE_SHM_SIZE to configure optee shared memory
      optee: add header version check
      optee: add helper functions to set/get the optee memory base
      optee: optee_verify_header: constify optee_header
      ARM64: mmu: add dynamic optee memory mapping support
      ARM: i.MX8M: add dynamic optee memory of-fixup support
      drivers: tee: optee: add support for dynamic optee memory base address
      ARM: i.MX8M: atf: add support for optee hdr parsing
      ARM: i.MX8M: allow board code to configure the bl33 loadaddr
      ARM: i.MX8M: cleanup MX8M*_ATF_BL33_BASE_ADDR defines
      ARM: i.MX8M: fix optee of-fixup logic

Rouven Czerwinski (1):
      optee: add support to verify 64-bit headers as well

Sascha Hauer (90):
      net: remove unused field from struct eth_device
      pbl/pmic.h: rename pmic_reg_write() to pmic_reg_write8()
      pci: remove duplicate definition of pci_resource_start
      pci: Do not register device tree disabled devices
      pci: layerscape: limit fixup to layerscape controllers
      pci: fix __pci_bus_find_cap_start
      pci: implement Enhanced Allocation support
      pci: implement function level reset
      pblimage: drop PowerPC support
      pblimage: simplify a bit
      pblimage: use roundup() from kernel.h
      ARM: fix dmb on ARMv8
      net: fsl_fman: gracefully exit of_fixup()
      fsl-ddr: remove duplicate prototype
      fsl-ddr: make endianess runtime decision
      clk: layerscape: move chipinfo_ls1012a further up
      clk: layerscape: add support for ls1028a
      mci: imx-esdhc: add ls1028a support
      dts: update to v6.7-rc6
      dts: update to v6.7-rc7
      net/phy: sync phy_interface_t types with Linux
      soc/fsl: import immap_lsch3 from U-Boot
      soc/fsl/immap_lsch2.h: cleanup
      ARM: layerscape: decide SCFG endianess during runtime
      ARM: layerscape: cleanup erratum_a009007
      ARM: layerscape: cleanup erratum_a008997
      ARM: layerscape: cleanup erratum_a009798
      ARM: layerscape: drop wrong errata workaround
      ARM: layerscape: cleanup erratum_a009008
      ARM: Layerscape: pass base addresses to errata functions
      ARM: Layerscape: add layerscape_uart_putc()
      ARM: layerscape: implement ls1028a errata
      ARM: layerscape: implement ls1028a debug_ll
      include: <asm-generic/bug.h>: implement ASSERT()
      ARM: Layerscape: add tzc400 support
      ARM: Add ls1028a lowlevel init
      ARM: atf: add bl31 v2 calling method
      mci: imx-esdhc-pbl: factor out common function
      mci: imx-esdhc-pbl: implement esdhc xload for ls1028a
      net: Add fsl_enetc network driver support
      memory: Fix reserve_sdram_region() return value
      ARM: Layerscape: consolidate initcalls into one
      ARM: Layerscape: LS1028a: reserve DDR region for TF-A
      ARM: Layerscape: icid: make readonly arrays const
      ARM: Layerscape: icid: rename functions
      ARM: Layerscape: icid: move re-usable code to separate functions
      ARM: Layerscape: icid: use of_property_write_u32_array() in of_set_iommu_prop()
      ARM: Layerscape: icid: use of_property_write_u32_array() in of_set_qportal_iommu_prop()
      ARM: Layerscape: icid: factor out setup_icid_offsets()
      immap_lsch3: Add more stuff
      ARM: Layerscape: LS1028a: fixup icids
      ARM: psci: make header self contained
      ARM: Layerscape: LS1028a: add psci node
      ARM: Layerscape: move over to MULTIARCH
      ARM: enable Layerscape boards in multi_v8_defconfig
      ARM: multi_v8_defconfig: disable CONFIG_MCI_STARTUP
      clk: layerscape: increase PLL divider array
      ARM: Layerscape: LS1028a: implement bootsource detection
      ARM: Layerscape: LS1028a: extend layerscape image filetype detection for LS1028a
      ARM: Layerscape: LS1028a: Add barebox update handler
      pblimage: Add LS1028a support
      Merge branch 'for-next/layerscape-pblimage' into for-next/layerscape
      ARM: Layerscape: add basic support for NXP LS1028a RDB
      watchdog: imxulp: Fix timeout calculation
      watchdog: imxulp: Fix prescaler setting on i.MX7ulp
      mtd: nand: denali: Make partition binding configurable
      firmware: add missing FIRMWARE_IMX8MQ_OPTEE symbol
      firmware: add missing include
      firmware: i.MX OP-TEE: Add some Kconfig help
      ARM: i.MX93: add imx93_barebox_entry()
      ARM: i.MX: export imx9_ddrc_sdram_size()
      ARM: i.MX93: add scratch space support
      dts: update to v6.8-rc1
      ARM: i.MX93: Add OP-TEE support
      ARM: i.MX: esdctl: change type to resource_size_t
      Merge branch 'for-next/arm'
      Merge branch 'for-next/cdev'
      Merge branch 'for-next/dsa'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx-hsio-blk-ctrl'
      Merge branch 'for-next/layerscape'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/pci'
      Merge branch 'for-next/net'
      ARM: i.MX defconfigs: Enable ELE nvmem support
      watchdog: restart handler: hang when watchdog cannot restart the machine
      ARM: i.MX: add Kconfig option for scratchmem
      gpio-vf610: always register 32 GPIOs
      Release v2024.02.0

Stefan Kerkmann (5):
      habv4: correct habv4 rom vector table
      habv4: use hab rom implementation of report_event
      ARM: i.MX8MP: enhance support for ocotp driver
      of: fdt: fix memory leak in fdt_ensure_space
      of: fdt: fix oob writes with large fdt properties

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


