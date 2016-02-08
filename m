Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aSgDT-0003wS-Gp
 for barebox@lists.infradead.org; Mon, 08 Feb 2016 07:26:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aSgD7-0005wv-Sv
 for barebox@lists.infradead.org; Mon, 08 Feb 2016 08:26:13 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1aSgD7-0002hF-EU
 for barebox@lists.infradead.org; Mon, 08 Feb 2016 08:26:13 +0100
Date: Mon, 8 Feb 2016 08:26:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160208072613.GW4118@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2016.02.0
To: Barebox List <barebox@lists.infradead.org>


The February release is out.

With this release we gain RAMOOPS support to read oopses from a
previously crashed kernel. Also we have basic Raspberry Pi 2 support
and several RTC updates. Partition names can now have links, so if
used, there are more ways to identify a partition without guessing
running indices. There's more, see below for a complete list.

Sascha

----------------------------------------------------------------
Alexander Aring (6):
      arm: bcm2835: fix indentation
      bcm2835: introduce mach-bcm283x
      bcm283x: mbox: align to cachesize
      rpi: sync revision detection with u-boot
      led: add missing includes
      arm: bcm283x: add rpi2 support

Andrey Panov (1):
      ARM: i.MX6Q: Embedsky E9: Convert environment paths in DTS to a new bindings

Andrey Smirnov (10):
      rtc: ds1307: Add code to support ds1337/1341
      rtc: ds1307: Fix a memory leak
      rtc-lib: Check tm_wday for validity in rtc_valid_tm()
      commands/hwclock: Check return value of rtc_read_time()
      i.MX6: pci: Replace magic number with a named constant
      i.MX6: pci: Reconcile imx6_pcie_start_link with the kernel code
      i.MX6: pci: Avoid aborts when asserting PCIe reset
      ARM: asm: Add convenience fucntions to access VBAR
      ARM: mmu: Add VBAR setup
      ARM: Fix exception table setup in MMU-less mode

David Jander (1):
      usb: chipidea-imx: check return value of regulator_get()

Enrico Jorns (1):
      arm: imx53-guf-vincell-lt: dts: do not specfiy fixed memory information

Fabio Estevam (1):
      imx233-olinuxino: Fix mx23_power_init() arguments

Florian Vallee (1):
      imx-usb-loader: Add i.MX6ul support

Lucas Stach (2):
      PCI: imx6: properly shut down core when leaving barebox
      ARM: PXA: move HAVE_CLK select

Marc Kleine-Budde (1):
      state: hmac: fix error message that algo is displayed

Markus Pargmann (12):
      arm: boards: karo-tx6x remove definition of DIV_ROUND_UP
      log2: Add missing __rounddown_pow_of_two()
      printk: Add missing include/declaration
      vsprintf: Add scnprintf from kernel
      lib: Import reed solomon code from kernel
      arm: Clarify memory layout calculation
      arm: start: Add visible sdram region for barebox board data
      arm: Add RAMOOPS memory area
      fs: Add pstore filesystem
      Documentation: Document pstore/RAMOOPS
      mtd: nand: Add erased page bitflip check helper functions
      mtd: gpmi: Add erased page bitflip correction

Sascha Hauer (52):
      dts: update to v4.2-rc2
      dts: update to v4.2-rc3
      dts: update to v4.2-rc4
      dts: update to v4.2-rc5
      dts: update to v4.2-rc6
      dts: update to v4.2-rc7
      dts: update to v4.3-rc1
      dts: update to v4.3-rc3
      dts: update to v4.3-rc4
      dts: update to v4.3-rc5
      dts: update to v4.3-rc7
      dts: update to v4.3
      dts: update to v4.4-rc1
      dts: update to v4.4-rc2
      dts: update to v4.4-rc3
      dts: update to v4.4-rc4
      ubiformat: fix the subpage size hint on the error path
      linux/barebox-wrapper: Silence gcc5 warning
      ARM: Omap3: Remove useless inline
      net: dhcp: unify options and params
      net: dhcp: simplify dhcp_options_process
      net: dhcp: make unmodified variable const
      net: resolv: Make argument const
      imx-usb-loader: whitespace fixup
      hwclock command: use format like the Linux tool does
      hwclock command: forward return value of rtc_set_time
      rtc: Check time for validity before passing it to the rtc driver
      rtc: Fill in weekdays before setting time
      net: Add SNTP support
      hwclock: Allow to set hwclock from sntp
      rtc: Add Abracon driver
      input: gpio-keys: implement debouncing
      state: implement signed int support
      devfs: Add symlink support
      partition: Create links with partition names
      readline: Fix potential buffer overflow
      readline: Fix potential buffer overflow in command history
      fs: automount: Make automountpoints persistent
      of_path: Drop possible further extensions of device-path property
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/gcc5'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/net'
      Merge branch 'for-next/pstore'
      Merge branch 'for-next/rtc'
      Merge branch 'for-next/socfpga'
      hush: Initialize struct p_context
      ubifs: Fix reading holes in files
      Release v2016.02.0

Trent Piepho (10):
      bootstrap: Boot barebox with kernel calling convention
      socfpga: Allow setting partition xloader boots from for mmc
      partitions/efi: Add partuuid to partition description
      bootstrap: constify strings
      cdev: When creating a new cdev, initialize device_node
      environment: Support env from file in a file-system via device tree
      socfpga: Find partition with environment via device tree
      of: Add for_each_compatible_node_from iterator
      of: Add of_property_for_each_phandle() iterator
      OF: Fix fixups to fix Linux DT instead of Barebox DT


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
