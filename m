Delivery-date: Fri, 17 Mar 2023 12:10:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pd7yq-003ql8-0f
	for lore@lore.pengutronix.de; Fri, 17 Mar 2023 12:10:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pd7yp-0003SV-BH
	for lore@pengutronix.de; Fri, 17 Mar 2023 12:10:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:To:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hx2rYiinScHL0tdTy3dRWK3KJ0lCERRi9AsPi9HFU7k=; b=stQXKfiJAIvcYk
	tz5MvGcxpiYk+Ony3O0CopArjxtI2SEluOZrBGMpxZuptQhzzpAJyQjxv+PB0JzkMW82ARufNfJe8
	1lW+R8/S9vIUaglPFXf0fz3aCEZVo+HBcJHDU51akB60QQlRY8JsZueibpZJSkwaZoJMqsgZslNiy
	PuxSrFfqbYNsJcoCJdgL0EsUof6CRgE3xj8Rtx2se7mqGsLa4Pi8vZhrKn+lL1V6Ria5F8U67369x
	IWNcLwK+OwqPivw/nNbkkUsxOD38ewaDnVrgw7S4yUWb6U5kwVkX0HbseNPAocHXq2vaH1oPDlg+8
	wN59GnMhTVFqh3+O5WSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd7xX-0020TP-2k;
	Fri, 17 Mar 2023 11:09:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd7xT-0020Rg-2f
	for barebox@lists.infradead.org;
	Fri, 17 Mar 2023 11:09:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pd7xS-0003BJ-KU; Fri, 17 Mar 2023 12:09:14 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pd7xS-0001Hz-CO; Fri, 17 Mar 2023 12:09:14 +0100
Date: Fri, 17 Mar 2023 12:09:14 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230317110914.GY7446@pengutronix.de>
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
X-CRM114-CacheID: sfid-20230317_040916_015020_76079C26 
X-CRM114-Status: GOOD (  22.95  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2023.03.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

I just released barebox-2023.03.0. We have a bunch of new board
supported this time, all i.MX based: Kosagi Novena, Variscite
DT8MCustomBoard, Polyhex DEBIX Model A and the 8MMINILPD4-CPU2 board.
Along with this the eqos ethernet core is now supported on i.MX8MP.

Another nice thing is that ifup -a now polls for links in parallel and
there now is a ifup -a1 which stops once one network interface is up.
This can speed up bringing up networking significantly when multiple
network interfaces are present, which happens for example with DSA
switches connected.

There are also some bugfixes in this release which are worth noting
here. We now explicitly enable frame pointers on ARM64. This is the
default for several toolchains, but for toolchains where this is not the
default stack unwinding has been broken. TFTP upload support was broken
for a while, this has been fixed now.

Thanks goes out to Ahmad who switched the barebox device trees to
reference nodes in upstream device trees with label-relative and
phandle-relative references. With this we now get compile errors when
names of nodes we supplement in barebox change in the upstream device
trees. Before this silently a new node was added instead which is not
what we want.

See below for a full list of patches in this release.

Have Fun!
  Sascha

----------------------------------------------------------------
Adrian Negreanu (1):
      video: add support for QEMU ramfb

Ahmad Fatoum (46):
      i2c: implement detect callback for virtual adapter device as well
      net: phy: remove duplicate definition of PHY_AN_TIMEOUT
      fs: devfs: implement cdev_fdopen
      asm-generic: avoid compiler warnings due to PCI_IOBASE
      firmware: add QEMU FW CFG driver
      ARM: i.MX8MM: innocomm-wb15: use revised PMIC settings
      mfd: add regmap driver for rohm-bd718x7
      ARM: add DEBUG_LL support for ARM64 QEMU Virt
      fs: remove unused members of struct stat
      RISC-V: virt: riscvemu: fix unit address in node name
      net: ifup: have ifup -a poll for link up in parallel
      net: ifup: have ifup -a1 stop at first DHCP-set global.net.server
      defaultenv-2: automount: use ifup -a1 for NFS/TFTP automounts
      ddr: imx8m: add support for 3720 MHz DDR rate
      ARM: i.MX8MP: add initial Polyhex DEBIX Model A support
      test: include <linux/printk.h>
      RISC-V: virt: riscvemu: use new-style DT overlay syntax
      common: boards: qemu-virt: use new-style DT overlay syntax
      treewide: rename leftover device_d
      usb: misc: add support for new OF onboard hub binding
      scripts/dtc: Update to upstream version v1.7.0
      scripts/dtc: update-dts-source.sh: don't fail if libfdt/ exists
      Documentation: devicetree: describe new label-relative-path syntax
      ARM: dts: use DT labels instead of paths where possible
      MIPS: dts: ath79: ar9331: use path references when extending nodes
      ARM: dts: tegra: switch to path and label references
      ARM: i.MX51: ccmx51: support newer device trees
      ARM: i.MX6: gw54xx: rename watchdog nodes
      ARM: i.MX6: karo-tx6x: fix now renamed DT nodes
      ARM: dts: zii: use phandle-relative paths for extending nodes
      ARM: dts: AT91: use label-relative paths for extending nodes
      ARM: dts: Layerscape: drop unneeded EEPROM node overriding
      ARM: dts: Layerscape: use label-relative paths references
      ARM: dts: vf610-zii-cfu1: remove duplicate LED
      ARM: dts: i.MX53: ccxmx53: remove unused /memory
      ARM: dts: i.MX: delete now renamed memory nodes as well.
      ARM: dts: socfpga: cut down on NAND node duplication
      ARM: dts: i.MX8MN: evk: use upstream flash node definition
      ARM: dts: i.MX8MN: evk: reduce duplication in barebox-added nodes
      net: dsa: realtek: rtl8365mb: add missing new line to log print
      net: dsa: realtek: mdio: fix out-of-bounds memory write
      crypto: caam - pbl-init: fix null pointer check
      ARM: i.MX8M: silence warning accessing bootrom log in zero page
      ARM: i.MX8M: fix outdated comment about imx-atf
      commands: stat: fix UUID print
      of: partition: skip NVMEM partition setup partition parsing fails

Antony Pavlov (1):
      net: e1000: properly map dma allocations

Bastian Krause (1):
      net: make DRIVER_NET_DESIGNWARE_IMX8 select MFD_SYSCON

Denis Orlov (8):
      net: rtl8139: remove dependence on MIPS
      net: rtl8139: fix ifdown/ifup issues
      nvme: parse partition table when registering a block device
      MIPS: dma: fix nullptr handling in dma_free_coherent
      MIPS: dma: remove unnecessary ifdefs
      MIPS: dma: add arch-specific dma_alloc() implementation
      MIPS: dma: simplify source structure
      dma: use virt/phys conversions when no dma_offset is specified

Johannes Schneider (1):
      ARM: i.MX8MM: add support for 8MMINILPD4-CPU2 board

John Watts (18):
      I2C: i.MX: Add early i2c support for i.MX6
      ddr: fsl: Pass mclk_ps to ddr*_compute_dimm_parameters
      ddr_dimms: Move FSL dimm_params to include/ddr_dimms.h
      ddr: fsl: Remove includes to fsl-specific code
      ddr_dimms: Move ddr*_dimm_params to common
      ddr_dimms: Remove mclk_ps for DDR3 and DDR4
      ddr_spd: Support reading SPD from DDR3 sticks
      imx6-mmdc: Work around ERR050070
      imx6-mmdc: Revert calibration configuration on failure
      spi: Fix probing SPI drivers with no cs-gpios
      ARM: i.MX6: Specify OCRAM base address and size
      ddr_dimms: Check spd->mem_type before computing parameters
      I2C: i.MX: early: Use a custom delay on i.MX6
      fs: nfs: Error if a port is unregistered
      ARM: novena: Add Kosagi Novena board
      ARM: novena: Setup RAM using static configuration
      ARM: novena: Read Ethernet MAC address from EEPROM
      ARM: novena: Use DDR3 information from SPD EEPROM

Jules Maselbas (6):
      bbremote: Fix default payload value in BBPacket
      bbremote: Fix RATP handshake, errata #7321 for RFC916
      ratp: Fix retransmission for header-only packets
      ratp: Increase the establish timeout to 1sec
      ratp: Increase the initial RTO to 200ms
      serial: ns16550: Fix device-tree probe and add proper teardown

Lucas Stach (11):
      nvmem: ocotp: add support for second MAC address on i.MX8MP
      net: eqos: add i.MX8MP support
      nvmem: add support for post processing
      nvmem: ocotp: switch to nvmem_regmap_register
      nvmem: regmap: allow to register with post processing
      nvmem: ocotp: add post processing for MAC cells
      ARM: dts: i.MX8MP: drop OCOTP MAC address provider
      ARM: i.MX8MP-EVK: increase VDD_ARM to OD voltage
      ARM: i.MX8M: esdctl: use common compatible to detect i.MX8MQ/MM/MP DDRC
      ARM: dts: i.MX8MP: add DDRC compatibles
      ARM: dts: i.MX8MP: remove DSP and DSP reserved memory nodes

Marco Felsch (8):
      ARM: i.MX8MM: split barebox dts into dtsi file
      ddr_spd: remove unused local variable
      net: ks8851_mll: drop platform_device usage
      spi: atmel-quadspi: remove struct platform_device usage
      RISC-V: Makefile: cleanup layout
      RISC-V: Makefile: align the isa string setting with the kernel
      RISC-V: Makefile: fix build with binutils 2.38
      ARM: dts: i.MX8MP: remove memory node

Michael Grzeschik (1):
      phy: stm32-usphyc: add mdelay(1) to fix timeout on some machines

Michael Kopfensteiner (3):
      gio: add support for PCAL6408 chip to the pca953x driver
      ARM: IMX8MP: add initial support for Variscite DT8MCustomBoard with iMX8MP
      Documentation: IMX: add doc for the Variscite DT8MCustomBoard

Roland Hieber (1):
      Documentation: networking: improve net.* variable description

Sascha Hauer (36):
      Documentation: Rockchip: Update documentation to latest binaries
      arm: rockchip: oldconfig rockchip_v8_defconfig
      arm: rockchip_v8_defconfig: Disable PIO mode for MCI_DW
      i2c: i.MX: Use initialized dev for dev_dbg()
      i2c: Make i2c_recover_bus() to return -EBUSY if bus recovery unimplemented
      dts: update to v6.2-rc5
      dts: update to v6.2-rc6
      ARM: i.MX Riotboard: Add SD card update handler
      ARM: i.MX Riotboard: Switch to board driver
      ARM: i.MX Riotboard: Let phy driver initialize the phy
      dts: update to v6.2-rc7
      dts: update to v6.2-rc8
      clk: composite: Give mux/div/gate clks names
      clk: composite: Fix enable_count when reparenting mux
      mci: rockchip-dwcmshc-sdhci: Print less errors
      of: Fix of_get_stdoutpath() when property does not contain a colon
      Merge branch 'for-next/clk-composite'
      Merge branch 'for-next/dtc-1.7.0'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/ifupa'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/nvmem'
      Merge branch 'for-next/ratp'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/usb'
      treewide: Rename remaining struct device_d -> device
      fixup! ARM: IMX8MP: add initial support for Variscite DT8MCustomBoard with iMX8MP
      Merge branch 'for-next/imx'
      arm: rockchip_v8_defconfig: disable DEBUG_LL
      ARM: Enable frame pointers for arm64
      power: reset: Fix array out of bounds access
      fs: tftp: Fix NULL pointer deref in file upload
      ARM: i.MX: boards: Use imx6_cpu_lowlevel_init()
      Release v2023.03.0

Uwe Kleine-König (2):
      Let NET_USB select PHYLIB
      imx-usb-loader: Don't try to transfer more data than contained in the image
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


