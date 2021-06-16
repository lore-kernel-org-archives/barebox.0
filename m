Delivery-date: Wed, 16 Jun 2021 10:53:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltRIl-00037D-Gc
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 10:53:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltRIk-0000Tp-4B
	for lore@pengutronix.de; Wed, 16 Jun 2021 10:53:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gM8MP8PRGwDtz+uPQAIgVBh+a3PPTFWjbvTs0trZLhs=; b=KO6TzFy8sedBzn
	fBgkFGHhhNizwZEJSJef0/BEtU7mRbZNLwXjOqS951wL7dcNaHxX4J5P+OuBjtlx7nVeGOS4sM0ZD
	gBTmjpaWUT8Tsi9ifEJgzRqGV5vBwDxySVmvvage3bKZ5pPLk4oe4keZb3p5ujv44GEjUpmeW5QIu
	bCn5T2N5fDJLfl4e0qiiuQ84pdqkOnHnqgEd4YZZnJakptpkpu4sFzzNElmuuNvGtQMl59AiDp357
	a/bXW+6AC/UMz30HS7r7hUUYoykX1endormS0fFdsu/WOj73edVYN99P+0zq8Pw9jizD3Pc46IC/p
	GfQOGReS4T9E9MZCeJUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltRHH-005S0h-Nu; Wed, 16 Jun 2021 08:52:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltRH6-005Ry4-Qv
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:51:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltRH5-0000Il-19; Wed, 16 Jun 2021 10:51:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltRH4-00059v-MP; Wed, 16 Jun 2021 10:51:50 +0200
Date: Wed, 16 Jun 2021 10:51:50 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210616085150.GT9782@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:46:11 up 118 days, 12:10, 123 users,  load average: 0.20, 0.19,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_015152_936958_17B3C1B1 
X-CRM114-Status: GOOD (  17.97  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2021.06.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

Here comes barebox-2021.06.0. With this release the barebox RISC-V
support continues to evolve. We now have sifive HiFive board support
along with GPIO, UART and clock support. And for those who want to
barebox can now even start kernels on RISC-V ;)

Other than that see below for a full list of changes for this release.

Have Fun!
 Sascha

Ahmad Fatoum (40):
      show_progress: add system wide progress stage notifier
      common: console: add log_writefile to write log into new file
      string: implement strstarts along with strends
      vsprintf: introduce %m shorthand for "%s", strerror(errno)
      PBL: fdt: implement fdt_device_get_match_data
      RISC-V: debug_ll: ns16550: split off debug_ll from generic parts
      RISC-V: board-dt-2nd: add PBL console support for virt
      RISC-V: delete unused mach-virt subdirectory
      clk: add SiFive PRCI clock controller support
      serial: implement SiFive UART support
      debug_ll: support <asm/debug_ll.h> to get rid of mach directories
      RISC-V: support multi-image for all machines
      RISC-V: erizo: restrict to RV32I
      x86: add DMA support
      PCI: support PCI BIOS preassigned buses
      pci: add EFI PCI root bridge IO protocol driver
      watchdog: add support for Intel TCO watchdog timer
      usb: storage: retry for up to 10s on lengthy HDD spin up
      RISC-V: erizo: drop mach-erizo directory
      RISC-V: add SBI based cpuinfo
      gpio: gpio-generic-platform: remove unused non-DT support
      gpio: generic: sync with upstream Linux gpio-mmio driver
      gpio: add SiFive GPIO controller support
      common: make FILE_LIST feature unconditional
      param: introduce file-list parameter type
      common: add generic system partitions interface
      fastboot: handle ill-named partitions gracefully
      usb: gadget: dfu: change status message to info log level
      usbgadget: autostart: fix indeterminism around usbgadget.autostart
      usbgadget: allow DFU and Fastboot functions to coexist
      file_list: make freeing a NULL pointer a no-op
      fastboot/dfu: use system partitions as fall back
      bbu: add function to directly add handlers into file_list
      file_list: add file_list_detect_all()
      fs: error out when writing on read-only file system
      RISC-V: sifive: add HiFive board support
      bootm: move ARM64 Linux image parsing to common directory
      RISC-V: asm: barebox-riscv-head: use load-offset of 0
      RISC-V: add Linux kernel boot support
      gpio: generic: fixup syncing with upstream Linux gpio-mmio driver

Antony Pavlov (5):
      MIPS: qemu-malta: use generic syscon reset driver
      scripts/spdxcheck.py: Use Python 3
      startup: introduce global.endianness variable
      net: dns: use correct nameserver var name in error message
      Documentation: RISC-V: erizo: fix header level

Bastian Krause (2):
      scripts: imx-usb-loader: print excluded USB device message only on verbose
      scripts: imx-usb-loader: print USB VID/PID of excluded devices

Enrico Jorns (2):
      usb: dwc2: do no print error message with dwc2_warn() macro
      usb: dwc2: more precise and helpful message for dr_mode config issues

Jules Maselbas (1):
      common: console_common: Replace vsprintf with vsnprintf

Lucas Stach (1):
      ARM: use new vendor prefix for MNT Reform2

Marco Felsch (3):
      driver: add flag to check if cdev is an mci device
      mci: mci-core: set the DEVFS_IS_MCI_MAIN_PART_DEV flag
      fs: add linux_rootarg 'root=mmcblkXpN' support

Michael Olbrich (1):
      mtd: spi-nor: Add support for gd25q16

Neeraj Pal (1):
      Removed Unreachable code: net/net.c: net_handle_arp()

Oleksij Rempel (8):
      mci: atmel_mci: add PBL support
      ARM: at91: add sama5d3_lowlevel_init() helpers
      ARM: at91: xload-mmc: add sama5d3_atmci_start_image() helper
      ARM: at91: add __sama5d3_stashed_bootrom_r4 helper
      ARM: at91: ddramc: add sama5d3_barebox_entry() handler
      ARM: at91: sama5d3: add multiimage support for the microchip-ksz9477-evb
      ARM: protonic: vicut1: disable on-die termination to fix PHY bootstrapping
      ARM: at91: xload-mmc: fix typo in sama5d3_atmci_start_image()

Sascha Hauer (27):
      dts: update to v5.12-rc8
      dts: update to v5.12
      clk: imx28: Set gpmi clock to gpmi_ref
      clk: imx28: propagate rate change to parents
      mtd: nand: mxs: Enable edo mode switching for i.MX28
      fs: check for empty name in getname()
      fs: check for valid name in filename_lookup()
      fs: check getname() return value in open()
      fs: nfs: Fix readlink max size check
      ARM: i.MX: Remove KaRo TX51 board support
      ARM: Remove delphi-poc20 dead leftover
      ARM: i.MX: Remove mx31moboard board support
      ARM: i.MX: Skov-imx6: Remove custom env
      clk: imx8mp: Remove non existing pcie clocks
      dts: update to v5.13-rc1
      Merge branch 'for-next/at91'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/fs'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/riscv'
      Merge branch 'for-next/usb-gadget'
      Merge branch 'for-next/x86'
      ARM: i.MX: nitrogen6x: delete wrong memory node from dts
      Release v2021.06.0

Steffen Trumtrar (1):
      watchdog: imxwd: get and enable clock

Trent Piepho (2):
      Documentation: Update env sources documentation
      imx-image: Fix uninitialized add_barebox_header

Yunus Bas (1):
      Revert "ARM: dts: phycore-imx6: change mtd-partition names for compatibility with kernel"
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

