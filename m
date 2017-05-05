Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6Xkc-00042q-Ny
 for barebox@lists.infradead.org; Fri, 05 May 2017 07:34:09 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1d6XkH-0000Gi-5I
 for barebox@lists.infradead.org; Fri, 05 May 2017 09:33:45 +0200
Received: from sha by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1d6XkG-0006DM-VQ
 for barebox@lists.infradead.org; Fri, 05 May 2017 09:33:44 +0200
Date: Fri, 5 May 2017 09:33:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170505073344.ldrqimow7l45t3xl@pengutronix.de>
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2017.05.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have a release for May. This time we have improved DT support for AT91,
more specifically for the at91sam9x5, but this should be helpful for
other AT91 SoCs aswell.
The state framework got several updates, hopefully the code is easier to
understand and more consistent now.
One other nice thing is that usbgadget can now automatically be
configured and started with global variables. With this the fastboot
gadget can be configured without having to write a script.
As usual, many other small fixes and improvements are in this release,
but see below.

Sascha

----------------------------------------------------------------
Alexander Kurz (1):
      ARM Kindle3 defconfig: add clock manipulation command

Andrey Smirnov (26):
      clocksource: at91: Add DT compatibility table
      serial: atmel: Add DT compatibility table
      clk: at91: Port at91 DT clock code
      mci: Allow parsing for explicit DT node
      mci: atmel_mci: Add DT support
      spi: atmel_spi: Add DT support
      w1-gpio: Add DT support
      usb: ohci-at91: Add DT support
      usb/host: Allow USB_OHCI_AT91 even if USB_OHCI is disabled
      usb: echi-atmel: Add DT support
      net: macb: Add DT support
      at91sam9x5ek: Convert to mult-image build
      at91sam9x5ek: Add CONFIG_KALLSYMS to defconfig
      at91sam9x5ek: Add preliminary device tree support
      clk: No-op CLK_OF_DECLARE if not enabled
      at91sam9x5ek: Convert to use DT clock tree
      at91sam9x5ek: Remove at91sam9x5ek_mem_init()
      at91: Enable PINCTRL for SOC_AT91SAM9
      at91sam9x5ek: Configure LEDs in DT
      at91sam9x5ek: Configure I2C via DT
      at91sam9x5ek: Configure MMC in DT
      at91sam9x5ek: Configure SPI in DT
      at91sam9x5ek: Configure 1-wire in DT
      at91sam9x5ek: Configure USB in DT
      at91sam9x5ek: Configure Ethernet in DT
      at91sam9x5ek: Configure NAND in DT

Antony Pavlov (20):
      ext4: change structure fields to __le/__be types
      ext4: use kernel names for byte swaps
      ext4: drop unused and misdefined INODE_SIZE_FILESYSTEM macro
      ext4: fix wrong usage of le32_to_cpu()
      ext4: Update ext2/3/4 superblock, group descriptor and inode structur=
es
      ext4: determine group descriptor size for 64bit feature
      ext4: Use correct descriptor size when reading the block group descri=
ptor
      scripts/tags.sh: drop __TestClearPage*() helpers
      tags: Do not try to index defconfigs
      tags: Process Kconfig files in a single pass
      ata: ide-sff: add LBA48 support
      gui: bmp.c: fix "no previous prototype" warning
      net: phy: mdio-gpio.c: fix "no previous prototype" warning
      clk: clk-gate-shared: fix "no previous prototype" warning
      video: edid.c: fix "no previous prototype" warning
      gui: image_renderer: fix "no previous prototype for 'image_renderer_u=
nregister'" warning
      commands: digest: show area info only if necessary
      sandbox_defconfig: enable squashfs support
      fs: squashfs: fix "no previous prototype for 'squashfs_set_rootarg'" =
warning
      globalvar: don't use nv_device if CONFIG_NVVAR is disabled

Daniel Schultz (1):
      arm: mach-omap: Change file flags in emmc handler

Ian Abbott (1):
      state: Fix "pack" returning freed data for DTB backend

Lucas Stach (12):
      ARM: tegra: jetson-tk1: adapt internal DT paths to changed upstream DT
      ARM: tegra124: use old XUSB binding
      ARM: tegra: jetson-tk1: use phandle for stdout path
      add driver for Tegra124 memory controller
      ARM: tegra: enable Tegra124 memory controller driver in defconfig
      common: bootchooser: add dependencies
      mtd: of: only add partition layout param when GLOBAL support is enabl=
ed
      ARM: imx: HAB needs fuse driver support
      common: BLSPEC needs boot infrastructure and at least simple command =
support
      HAB: don't reference unused HAB ops
      net: ifup needs to be able to run commands
      param: fix stub prototype const annotation

Matt Reimer (1):
      mtd: nand_omap_gpmc: fix BCH error correction

Michael Olbrich (2):
      efi: load the protocol expected by the driver
      efi: only iterate over handles that provide the device path protocol

Oleksij Rempel (11):
      lib: random: add get_crypto_bytes interface and use HWRNG if posssible
      caamrng: port to hwrng framework
      fs: add prng device
      crypto: caam - fix RNG buffer cache alignment
      common: password: make use of get_crypto_bytes
      add seed command
      dts: arm: imx6sl: provide snvs-lpgpr device
      dts: arm: imx6qdl: provide snvs-lpgpr device
      usb: gadget: start usbgadget automatically
      commands: usbgadget: provide fallback to global variables
      usb: gadget: set otg to peripheral mode on autostart

Peter Mamonov (1):
      net/phy: marvell: import support for 88E1111 from the Linux

Sascha Hauer (102):
      led: add blinking/flashing and led_blink_pattern interface
      led: Add blink/flash to led command
      led: trigger: Use led triggers
      led-trigger: Allow multiple led triggers of the same type
      poweroff: Allow to register poweroff handlers
      mtd: create bitflips in the correct page
      mtd: when creating bitflips the offset has to be page aligned
      of: Add of_property_write_string()
      treewide: Use of_property_write_string() where appropriate
      of: partition: Move of_mtd_fixup to drivers/of/
      mtd: of: Make used partition binding configurable
      of: partition: support 64bit partition sizes
      cdev: Collect partitions on list
      of: partition: Make partition fixup independent from mtd devices
      fs: devfs-core: remove unused code
      fs: devfs-core: replace DEVFS_IS_PARTITION flag with pointer to the m=
aster cdev
      of: partition: only create partition node when partitions exist
      of: partitions: flag partitions from a partition table
      of: partition: Register the of partition fixup for of partition users
      of: of_path: add of_find_node_by_devpath()
      state: Make pointing to the backend using a phandle the only supporte=
d method
      state: Use positive logic
      state: backend: remove .get_packed_len
      state: backend: remove len_hint argument from state_storage_read
      state: Drop backend as extra struct type
      state: merge backend.c into state.c
      state: open code state_backend_init in caller
      state: remove unnecessary argument from state_format_init
      state: pass struct state * to storage functions
      state: storage: initialize variable once outside loop
      state: backend_circular: Read whole PEB
      state: drop lazy_init
      state: simplify direct backend
      state: replace len_hint logic
      state: Convert all bufs to void *
      state: Drop cache bucket
      state: backend-direct: Fix max_size
      state: bucket: Make output more informative
      state: backend_bucket_direct: max_size is always given
      state: backend: Add more fields to struct state_backend_storage
      state: backend_circular: remove unnecessary warning
      state: storage: direct: do not close file that is not opened
      state: backend: Add some documentation
      state: backend_circular: default to circular storage
      state: backend_circular: rewrite function doc
      state: backend_storage: Rename variable nr_copies to n_buckets
      state: backend_storage: Rename variable desired_copies to desired_buc=
kets
      state: backend_storage: rewrite function doc
      state: backend_storage: make locally used variable static
      state: backend_storage: rename more variables
      keystore: implement forgetting secrets
      commands: implement keystore command
      commands: state: allow loading state with -l
      crypto: digest: initialize earlier
      state: backend_raw: alloc digest only when needed
      state: backend_circular: Set minumum writesize to 8
      state: backend bucket circular: Explain metadata
      state: Allow to load without authentification
      state: Update documentation
      state: Do not load state during state_new_from_node
      state: Remove -EUCLEAN check from userspace tool
      state: find device node from device path, not from device node path
      ARM: i.MX: GuF Santaro: Detect and enable touch controller
      video: ipu: convert "failed to get modes" message to dev_dbg
      video: ipu: register framebuffer, even when no modes are found
      global command: print info about variables
      i.MX: hab: Add HAB fusebox related convenience functions / command
      state: remove unused variable type
      boot: Allow to register boot entry providers
      blspec: register as bootentry provider
      bootchooser: register as bootentry provider
      bootchooser: export bootchooser_boot
      globalvar: remove unused globalvar_add()
      nv: Do not create globalvars from nvvars
      globalvar: remove code for unqualified globalvars
      dts: update to v4.11-rc2
      dts: update to v4.11-rc3
      dts: update to v4.11-rc4
      dts: update to v4.11-rc5
      Merge branch 'for-next/arm'
      Merge branch 'for-next/at91'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/ext4'
      Merge branch 'for-next/hwrng'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/led'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/net'
      Merge branch 'for-next/nvmem'
      Merge branch 'for-next/ofpart'
      Merge branch 'for-next/state'
      Merge branch 'for-next/tegra'
      state: backend_bucket_circular: Do not leak memory
      state: backend_storage: Set needs_refresh back to 0 after refreshing
      ARM: at91sam9x5ek: Actually build image
      state: Fix error return value
      ARM: cache-l2x0: honour aux_val when determing way size
      state: backend_raw: init digest earlier
      Release v2017.05.0

Steffen Trumtrar (5):
      drivers: add simple hw_random implementation
      bootm: fit: support rsa2048
      drivers: add nvmem framework from kernel
      nvmem: add snvs_lpgpr for freescale imx6
      bootm: fit: support multiple configuration nodes

Ulrich =D6lmann (1):
      ARM: mvebu: remove obsolete select

Uwe Kleine-K=F6nig (2):
      clocksource: mvebu: don't request the used iomem resource
      watchdog: new driver for Armada XP

Yegor Yefremov (1):
      arm: baltos: enable mPCIe slot and configure external GPIO controller

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
