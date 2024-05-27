Delivery-date: Mon, 27 May 2024 08:55:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBUGJ-000cbP-37
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 08:55:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBUGI-00050l-QH
	for lore@pengutronix.de; Mon, 27 May 2024 08:55:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=M0mXAfe8QEWxXiY6ZxVF5bVApGxb4WEW9115G/C+kmI=; b=ixV+gyFicOuVMEEJ2JYjDraiNo
	CFf9In8AWqN0ZPDmGRQZSDOIkEcAOH+N8HINprKlAvivfVL4SCB8z5b88gYRqjm9OiARjIaqsJK5r
	5k7WPC0jH/lnwZci9GqquWF9LjcJ/YynGsC7rh4OyoqzYUiQm8Arh0u8RzRrhLcOwUI6BDvvRENJ3
	tLGBv/yoBY9fbXJJjxMl7ECP426dc+wN6wcb0T4740p8LoITQaGnu2j5iG3VkYjmHC25EqaC0+wIo
	Ch8IadtGCisna7G4Cfo6iWOeBTMsBP2syTYldwiw9BzoWOWISppEPKr9uyJIqjI+TKYlzaKldjZ5h
	e1IMwSJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUFX-0000000DzDc-1JKS;
	Mon, 27 May 2024 06:54:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUFS-0000000DzA7-2iwM
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 06:54:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sBUFO-0004qk-Lc; Mon, 27 May 2024 08:54:18 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sBUFO-0039RJ-9D; Mon, 27 May 2024 08:54:18 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sBUFO-00H0N8-0e;
	Mon, 27 May 2024 08:54:18 +0200
Date: Mon, 27 May 2024 08:54:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZlQuGjCKTcwS1-wf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240526_235423_090714_BB1EE95F 
X-CRM114-Status: GOOD (  25.27  )
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
Subject: v2024.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

barebox 2024.05.0 is out. With this release our NAND layer is synced
Linux-6.9-rc2 which makes it easier to port newer drivers from the
Kernel. Tomas Marek has worked on EFI and we now have a EFI I2C and an
Intel GPIO driver. Our PCI layer now supports non 1:1 mapping between
CPU and PCI address space so that we can now properly support the ranges
property found on several PCI controllers (observed on Rockhchip
RK3568/RK3588 where this is used). Other than that there are many small
fixes and improvements around the tree, see below.

Have Fun!

 Sascha

----------------------------------------------------------------
Ahmad Fatoum (99):
      fastboot: explain use of struct fastboot::cmd_exec/flash
      input: record parent device at registration time
      input: add CONFIG_INPUT_EVBUG debug option
      input: imx-keypad: remove now-duplicate debug messages
      input: gpio-keys: drop now-superfluous struct gpio_keys::dev
      mci: improve packing of struct mci
      mci: remove FIXME in rca description
      ARM: rpi: detect mci1 as well when searching for environment
      net: free packets with net_free_packet
      net: ip: don't blindly trust driver supplied frame size
      net: icmp: don't blindly trust driver supplied frame size
      net: icmp: properly set IP TTL and fragement fields
      net: icmp: don't overrun buffer on send
      net: cpsw: report correct frame size to network stack
      net: usb: smsc95xx: don't opencode get/put_aligned_le32
      net: usb: smsc95xx: don't blindly trust hardware size
      net: usb: smsc95xx: fix handling of multiple packets per urb
      net: usb: smsc95xx: disable HW checksumming in driver
      ARM: dts: add common bootstate.dtsi
      ARM: stm32mp: lxa-mc1: add state description
      bootm: replace CONFIG_BOOTM_FORCE_SIGNED_IMAGES with helper
      bootm: add support for dynamically forcing signature verification
      pinctrl: rockchip: check for invalid pull settings
      common: factor out debugging options into separate files
      PWM: core: check that struct pwm_chip::devname is set
      PWM: core: add struct pwm_chip::dev
      PWM: core: adopt Linux prototype for struct pwm_ops::apply
      PWM: align struct pwm_state member names with Linux
      PWM: core: add definition for PWM_POLARITY_INVERSED
      PWM: rockchip: add driver support
      ARM: dts: rk356x: add aliases for PWM controllers
      ARM: dts: rk356x: describe serial reboot mode
      ARM: dts: rockchip: drop unreferenced rockchip-pinconf.dtsi
      clk: rk3568: sync PLL rates with Linux
      gpiolib: implement gpiod_slice_acquired
      ARM: Rockchip: bbu: rename rk3568_bbu_mmc_register to rockchip_*
      ARM: Rockchip: bbu: output unallocated space size on error
      ARM: Rockchip: bbu: allow forcing barebox update handler despite size
      scripts: config: add script to manipulate .config files on the command line
      clk: add flags parameter to clk_dump(_one)
      commands: clk_dump: add json output option
      include: kconfig.h: move __is_defined definition into new header
      include: is_defined: implement __if_defined helper
      ddr: imx: hide config prompt unless COMPILE_TEST
      habv4: use DMA-capable memory for getting event from BootROM
      dma: give inline dma_alloc a single external definition
      dma: add definition for dma_zalloc
      include: linux/kernel.h: factor out alignment macros
      driver: move out struct device definition into its own header
      dma: remove common.h include from asm/dma.h
      RISC-V: dma: fix dma.h inclusion
      sandbox: dma: drop unused driver.h include
      dma: remove linux/kernel.h dependency from dma.h
      include: linux/slab: fix possible overflow in kmalloc_array
      sandbox: dma: avoid recursive dependency between headers
      include: linux/slab: use dma_alloc for kmalloc
      include: linux/slab: retire krealloc
      commands: mmc_extcsd: use DMA capable memory where needed
      net: macb: use DMA-capable memory for receive buffer
      firmware: qemu_fw_cfg: use bounce buffer for write
      net: usb: asix: use dma_alloc for buffers in USB control messages
      net: usb: smsc95xx: use DMA memory for usb_control_msg
      usb: hub: use DMA memory in usb_get_port_status
      usb: hub: use DMA-capable memory in usb_hub_configure
      treewide: use new dma_zalloc instead of opencoding
      usb: dwc2: host: fix mismatch between dma_map_single and unmap
      net: bcmgenet: map DMA buffers with dma_map_single
      dma: debug: add alignment check when mapping buffers
      mci: core: fix fallback when eMMC DDR52 is not possible
      mci: core: fix fallback when host doesn't support HS200
      mci: core: make execute_tuning mandatory for HS200
      net: dsa: ksz9477: always toggle reset gpio if available
      net: dsa: ksz9477: report 0 as value when returning error
      net: dsa: ksz9477: return negative error codes on PHY access failures
      mdio_bus: return 0xFFFF when read fails with error code
      net: workaround NICs and MDIO busses sharing same OF node
      pblimage: suppress stdout output
      pstore: ramoops: fix use of wrong types on 64-bit
      pstore: fix size of OF fixup memory region
      pstore: return -ENOENT when file is missing
      mci: core: reset number of parttions on card probe failure
      mci: core: remove HS200 from mci_timing_is_ddr
      ARM64: reloc: fix relocation error for big fat bareboxes
      Documentation: pstore: add some information about interfacing with Linux
      cdev: return error code from cdev_close
      fs: devfs: restore cdev reference count maintenance
      partition: reparse tables only if CONFIG_PARTITION_MANIPULATION=y
      filetype: fix OOB read when detecting type of truncated kernel images
      ARM: document PBL barebox memory layout
      ARM: fix overlap between ramoops area and early malloc area
      ARM: cpu: start: align uncompressed DTB size to 4 bytes
      RISC-V: start: align uncompressed DTB size to 4 bytes
      ARM: layerscape: fix layerscape multiarch build with DEBUG_LL
      list: fix CONFIG_DEBUG_LIST link failure in PBL
      pblimage: ls1028a: fix handling of short reads on
      nvmem: bsec: make OP-TEE TA interaction optional
      mci: sdhci: use host device, not card, for debug message
      mci: sdhci: retrieve host device via common helper or NULL
      mci: sdhci: populate struct sdhci::mci in drivers

Antony Pavlov (3):
      common: deep-probe: fix DEEP_PROBE_UNKNOWN misspelling
      treewide: drop unused header files
      Documentation: devel: project-ideas: fix typo

Benjamin Gaignard (1):
      scripts: imx: IMX8MQ: fix header entry offset

David Jander (2):
      net: usb: ax88179_178a.c: Add 2 new USB ids
      arm: boards: Add support for protonic-mecsbc board

Denis Orlov (3):
      mips: cpuinfo: fix cpu name output for unknown processors
      mips: cpu-probe: identify more MIPS CPUs
      mips: mipsregs: remove duplicate definitions for Config 1 bits

Enrico Scholz (3):
      ARM64: let 'end' point after the range in cache functions
      usb:gadget:composite: add public functions for managing setup requests
      usb:gadget: use helper function to queue composite requests

Jonas Richardsen (4):
      raspi: add fixup method for specific properties
      raspi: override properties in /reserved-memory node of device tree
      raspi: add a fixup for the `dma-ranges` property of the `/emmc2bus` dt node
      mci: bcm2835: Set mci host for sdhci

Juergen Borleis (2):
      fs: jffs2: remove NAND write support entirely
      fs: jffs2: ignore cleanup hints

Marco Felsch (6):
      console: make console_set_stdoutpath public
      string: add isempty helper
      common: env: make use of isempty()
      common: hostname: validate the provided hostname
      bootm: add global.bootm.provide_hostname option
      mci: sdhci: fix dma mapping

Michael Riesch (7):
      arm: dts: copy pf5 device tree from mainline linux
      arm: dts: add common state for wolfvision boards
      common: add wolfvision board code library
      arm: boards: add wolfvision pf5 mainboard
      arm: boards: add pr_fmt() prefix to wolfvision pf5 board code
      common: boards: move dependencies to wolfvision board code library
      common: boards: wolfvision: fix handling of overlays parameter

Oleksij Rempel (2):
      ARM: i.MX8MP: skov: add fallback for unsupported HW
      ARM: i.MX8MP: skov: add new bd500 variant support

Roland Hieber (1):
      ARM: i.MX8MP: fix compatible string for koenigbauer,alphajet board

Rouven Czerwinski (1):
      mci: mci-core: make devinfo hex values obvious

Sascha Hauer (54):
      net: phy: realtek: add phy for RTL8168 internal phy
      pci: add 'self' member to struct pci_bus
      pci: rename parent_bus to parent
      add support for resource lists
      pci: pcie-designware: remove unused variable
      pci: dwc: Drop support for config space in 'ranges'
      pci: add pci_controller_init()
      pci: support non 1:1 mappings
      pci: pcie-designware: Speed up waiting for link
      pci: pcie-dw-rockchip: wait for link
      pci: drop resources from struct pci_bus
      clk: rockchip: rk3588: fix CLK_NR_CLKS usage
      dts: update to v6.9-rc1
      net: phy: do not crash on missing read_page()/write_page() ops
      pci: add of_pci_bridge_init()
      pci: pcie-designware: drop duplicate resource assigning
      pci: pcie-designware: remove dra7xx quirks
      pci: pcie-designware: iterate over windows
      ARM: dts: rk3588-rock-5b: remove pci ranges quirks
      of: add of_property_read_variable_uxx_array()
      phy: rockchip: add pcie3 phy driver
      pci: ignore BAR when it doesn't fit into bus resource
      aiodev: add helper for getting a value by its channel name
      arm: mecsbc: fixup /regulator-sd device tree node
      dts: update to v6.9-rc3
      jffs2: change pr_fmt prefix to jffs2
      bch: update from Kernel
      dts: update to v6.9-rc4
      ARM: i.MX: remove platform device registration helpers
      list: implement list_count_nodes()
      file-list: remove unused variable
      mtd: nand: move to drivers/mtd/nand/raw/
      mtd: update _lock/_unlock prototype
      include/export.h: add missing include
      mtd: nand: update to Linux-6.9-rc2
      mtd: nand: replace nand_imx driver with kernel driver
      mtd: nand: mxc_nand: separate page read from ecc calc
      mtd: nand: mxc_nand: implement exec_op
      mtd: nand: mxc_nand: support software ECC
      mtd: nand: mxc_nand: disable subpage reads
      Merge branch 'for-next/dma'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/jffs2'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/nand'
      Merge branch 'for-next/net'
      Merge branch 'for-next/pci'
      Merge branch 'for-next/pwm'
      Merge branch 'for-next/rockchip'
      mtd: nand: Allow non page aligned length writes
      mtd: nand: mxc_nand: clear NAND_BBT_CREATE flag
      nvmem: imx-ocotp-ele: fix MAC2 layout
      watchdog: imxwd: Do not suspend in lpm on i.MX27
      Release v2024.05.0

Steffen Trumtrar (1):
      mci: arasan: rework register_sdclk

Tomas Marek (2):
      i2c: add EFI i2c master driver
      gpio: Add Intel gpio controller support

Uwe Kleine-König (1):
      spi-nor: remove Fujitsu MB85RS1MT support

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


