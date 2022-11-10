Delivery-date: Thu, 10 Nov 2022 09:43:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ot39U-0036X8-Tc
	for lore@lore.pengutronix.de; Thu, 10 Nov 2022 09:43:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ot39T-0001XP-8H
	for lore@pengutronix.de; Thu, 10 Nov 2022 09:43:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:Content-Type:
	MIME-Version:Message-ID:Subject:To:Date:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YerMkMSwBoLY6j7sY5mGtkjonWjzG2WPPvLp5BmQdYc=; b=DT6sC754suoyKQlPXAMdmsNwQM
	QGzqvi73AzcEaVO2u/m3a14kbA51RT6xzpPgxwImeLLN8WSKyA/O5xMPCcN7tkfsh2EXCM8suHWkd
	lLnmnTVkcpkrbbeMTjQGxDhNAXTvBUJ/czYVTosyEQS4y3gdCTDIDVRiR7H9s1whdPbZGm0KbnLU7
	rw3ej2mWPb4Fda6WBtKa34YvXTu3qh4kCbz2wyqx1DBpk1eqrqaFUP1bldtoPIrywIcIaK5NSV9d7
	GZvyGR8wh3jiIG5zf/Ih5aRp0zm7Fk+vFsqYUpFTAauZx6k1MRQg75gcWPBqB4RSdfVTsYppMZMIC
	HdE7iKnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot37J-004IVC-Rn; Thu, 10 Nov 2022 08:40:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot37E-004IT1-BJ
	for barebox@lists.infradead.org; Thu, 10 Nov 2022 08:40:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ot373-0001HU-3p; Thu, 10 Nov 2022 09:40:41 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ot372-0008Fr-Tl; Thu, 10 Nov 2022 09:40:40 +0100
Date: Thu, 10 Nov 2022 09:40:40 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20221110084040.GE3143@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_004052_595625_1ABD08AE 
X-CRM114-Status: GOOD (  20.24  )
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
Subject: v2022.11.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Hi All,

I am happy to announce barebox-2022.11.0.

Nothing spectacular, but there are some nice little things I'd like to
mention here. We have kept stdout and stderr separately since the
beginning, but Ahmad finally made that feature much more useful. All
log messages printed with pr_* and dev_* now go to stderr rathern than
stdout. This allows us to direct all log messages to another console
without disturbing the interactive console.

Another thing is that barebox now brings up the ethernet links
immediately when the autoboot is interrupted. With this the link will
be brought up while the user thinking about the commands to type, and
networking will be available when the user needs it.

There is an important bugfix for SoCFPGA arria10 users in this release:
We accidently mapped in the onchip SRAM at 0x0 which caused DMA
transfers to/from that area to fail. The Kernel SDMMC driver trapped
over this which resulted in corrupted data transfers.

Finally our DSA switch support continued to evolve, we now have a
ksz8873 driver. That increased the number of switches supported by 50%.
Oleksij, keep the pace ;)

As usual see below for a full list of changes.

Have fun!
  Sascha

Ahmad Fatoum (44):
      mfd: axp20x: export axp20x-regulator child for AXP152
      usb: have usb_rescan return count of enumerated devices
      mci: core: act upon broken-cd device tree property
      mci: core: add broken_cd device parameter
      mci: core: fixup broken-cd information into kernel DT
      include: define SSIZE_MAX in <linux/limits.h>
      fs: implement cdev_mount()
      fs: export file system detection functionality
      common: console_common: output log messages to CONSOLE_STDERR
      include: move panic() prototype to <printk.h>
      relocate_to_current_adr: hang directly on error instead of panic()
      sandbox: implement DEBUG_LL support
      common: ubiformat: print 100 % complete message when done
      block: have cdev_get_block_device accept const cdev
      treewide: replace errno_str() with %m printf format specifier
      common: misc: remove now unused errno_str
      driver: don't crash when dev_name/dev_id is called with NULL dev
      lds: introduce <asm/barebox.lds.h>
      lds: move OUTPUT_FORMAT/ARCH definition into header
      ARM: lds: define and use BAREBOX_RELOCATION_TABLE
      lib: random: add hwrng_get_crypto_bytes
      common: bootm: factor out FIT parsing code into bootm_open_bit
      common: bootm: use switch-case
      test: self: change CONFIG_CMD_SELFTEST default to y
      test: self: always build envvar test when SELFTEST_ENABLE_ALL
      test: self: add ramfs test
      fs: implement unreaddir
      efi: retire efi_bool_t
      efi: capitalize enumeration constants
      hw_random: add EFI RNG driver
      efi: implement and use for_each_efi_config_table
      efi: add device tree configuration table support
      resource: fix recently broken memory bank fusing
      dt-bindings: features: imx8m: fix typo in constant
      soc: imx: imx8m-featctrl: check if all bits are set
      ARM: i.MX8MP: add feature controller support for Plus
      include: asm-generic: reloc: implement runtime_address()
      ARM: cpu: add compiler barrier around unrelocated access
      RISC-V: add compiler barriers around unrelocated accesses
      Kbuild: disable ARM64 pointer authentication
      documentation: devicetree: mtd: partition: fix partuuid example
      ARM: rk356x: rk3568-evb: add missing new line to log message
      ARM: psci: make PSCI method a of_psci_fixup parameter
      ARM: psci: client: don't hardcode method smc in fixup

Alexander Shiyan (1):
      clk: imx5: Add support for watchdog clock

Denis Orlov (2):
      net: e1000: fix <NULL>s in log messages
      reset: add missing stub for of_reset_control_get()

Johannes Zink (5):
      USB: gadget: fastboot: introduce optional flag for fastboot partitions
      mtd: nand-mxs: refactor flash layout configuration
      mtd: nand-mxs: add i.MX7 FCB write support
      imx-bbu-nand-fcb: isolate i.MX28 specific parts
      imx-bbu-nand-fcb: extend for i.MX7 support

Marco Felsch (11):
      RISC-V: cache: fix local_flush_icache_all enabling
      RISC-V: add riscv_vendor_id() support
      RISC-V: import vendorid list from linux
      RISC-V: use m/sscratch registers for barebox_riscv_pbl_flags
      RISC-V: implement cache-management errata for T-Head SoCs
      RISC-V: squash 64bit defconfigs into rv64i_defconfig
      RISC-V: add Allwinner Sun20i D1 Nezha support
      ARM: i.MX8MP: EVK: convert to board driver and enable deep-probe
      ARM: dts: i.MX8MP: assume hsio power domain to be powered
      ARM: i.MX8M: align SIP_BUILDINFO with the tf-a define
      ARM: dts: i.MX8MP: increase off-on delay on the SD Vcc regulator

Michael Riesch (3):
      soc: rockchip: add driver for rockchip io domains
      arm: rockchip_v8_defconfig: enable io domain driver
      of: overlay: fix overly strict check for symbols

Oleksij Rempel (11):
      net: port support for microchip SMI0 MDIO bus
      net: add support for MDIO devices
      net: add ksz8873 switch support
      mdio_bus: do reset only on PHY devices
      driver: add dev_is_probed() helper function
      net: ksz8873: add device validation to be able to detect missing switch
      ARM: boards: skov-imx6: free used gpio devices pins
      ARM: boards: skov-imx6: rework switch detection
      ARM: boards: Skov-i.MX6: select KSZ8873 switch driver
      ARM: dts: Skov i.MX6: start using mainlined kernel dts
      net: dsa: do not wait for aneg is actually done on the port start

Roland Hieber (1):
      doc: slightly improve the porting guide

Sascha Hauer (34):
      net: tap: Allocate own receive buffer
      net: macb: Allocate own receive buffer
      net: cs8900: Allocate own receive buffer
      net: liteeth: Do not use NetRxPackets
      net: efi-snp: Allocate own receive buffer
      net: smc91111: Allocate own receive buffer
      net: smc911x: Allocate own receive buffer
      net: ks8851_mll: Allocate own receive buffer
      net: remove altera_tse driver
      dts: update to v6.0-rc6
      ARM: Rockchip: Add FIXME comment to io domain setup
      tftp: remove selftest
      tftp: implement UDP reorder cache using lists
      net: designware_eqos: Allocate more receive buffers
      net: Bring up all interfaces when going interactive
      blspec: Use cdev_mount()
      dts: update to v6.0-rc7
      dts: update to v6.0
      mtd: nand-mxs: Factor out a bch read function
      imx-bbu-nand-fcb: pass imx_handler further down
      imx-bbu-nand-fcb: add fcb_read/fcb_write function hooks
      Merge branch 'for-next/dts'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/ksz8873'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mmc'
      Merge branch 'for-next/net'
      Merge branch 'for-next/net-NetRxPackets'
      Merge branch 'for-next/riscv'
      Merge branch 'for-next/rockchip-io-domains'
      Merge branch 'for-next/selftest'
      ARM: SoCFPGA: arria10: Fix DMA accesses at addresses < 256KiB
      Release v2022.11.0

Vyacheslav Yurkov (2):
      ARM: socfpga: Fix SDRAM firewall init
      ARM: socfpga: Configure F2SDRAM bridges
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


