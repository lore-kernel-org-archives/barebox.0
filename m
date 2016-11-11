Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c589r-0000WM-T8
 for barebox@lists.infradead.org; Fri, 11 Nov 2016 09:30:05 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1c589V-0008EN-Km
 for barebox@lists.infradead.org; Fri, 11 Nov 2016 10:29:41 +0100
Received: from sha by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1c589V-0007HN-Di
 for barebox@lists.infradead.org; Fri, 11 Nov 2016 10:29:41 +0100
Date: Fri, 11 Nov 2016 10:29:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161111092941.44lmfsowkldkbhis@pengutronix.de>
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
Subject: v2016.11.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have a November Release.

This is the first release which contains bootchooser, a framework which
simplifies and generalizes redundant boot scenarios.
Other than that we can now rename UBI volumes. Also there are improvemts
in running the UBI background thread which finally means that barebox
can write a fastmap on freshly formatted UBI devices. Previously barebox
was often not able to find an anchor PEB for the fastmap.
Another change worth noting is that the decision if defenv-1 or defenv-2
should be used can now be selected in Kconfig. It is no longer a board
decision.
As usual several fixes went in all over the place.

Sascha

----------------------------------------------------------------
Alexander Kurz (1):
      mtd: spi-nor: add MX25U2033E

Andrey Smirnov (2):
      i.MX: Introduce imx6_cpu_revision()
      i.MX: Register imx6_fixup_cpus() for MX6Q+ as well

Antony Pavlov (1):
      sandbox: Makefile: drop unused SUBARCH stuff

Christian Hemp (1):
      mtd: nand: nand_mxs: Fix readtotal calculation

Daniel Schultz (1):
      nand: imx6: Changed default NAND clock

Enrico Jorns (2):
      net: add linux.bootarg parameter from ifup call
      fs: nfs: pick up network interface bootargs parameter

Giorgio Dal Molin (2):
      mtd: ubi: add API call to rename volumes.
      mtd: ubi: commands: added the new command 'ubirename'.

Jan Luebbe (3):
      ARM: i.MX6: remove duplicate clock initialization
      ARM: i.MX6: fix clock gating
      ARM: i.MX6: gate PCIe when unused

Lucas Stach (7):
      ARM: imx6: split out IPU QoS setup
      ARM: imx6: don't execute IPU QoS setup on MX6 SX/SL
      ARM: imx6qp: set NoC regulator to bypass
      ARM: microsom: use imx6q_barebox_entry
      ARM: imx6: add support for Auvidea H100
      net: e1000: fix i210 register remapping
      ARM: riotboard: fix barebox partition size

Marc Kleine-Budde (1):
      boot: add framework for redundant boot scenarios

Michael Olbrich (3):
      state: copy backend of_path string
      state: don't keep pointers to device tree nodes
      state: fix finding the correct parent node

Robert Schwebel (1):
      Documentation: clarify that patches should target the master branch.

Sam Ravnborg (1):
      environment: "wrong magic" gives the impression of an error

Sascha Hauer (76):
      defenv-1: remove unused variable kernelimage_type
      pbl: console: Let console pointer survive BSS clearing
      ARM: i.MX6: Sabrelite: Add PBL console support
      Add comp_copy function for use with CONFIG_IMAGE_COMPRESSION_NONE
      ARM: Fix calling of arm_mem_barebox_image()
      state: Add state to state_variable
      state: make locally used function static
      state: consistently pass one type as private data to dev_add_param_*
      mtd: ubi: Add API calls to create/remove volumes
      mtd: ubi: introduce barebox specific ioctl to get ubi_num
      ARM: i.MX53: Add uart5 clock support
      ARM: i.MX53 Vincell: Reset phy consistently from device tree
      ARM: i.MX53 Vincell: Adjust bbu handler partition size to real partit=
ion size
      ARM: i.MX53 Vincell: Add PBL console support
      ARM: i.MX53: do not pass base address to imx*_boot_save_loc
      ARM: i.MX: Provide bootsource functions for early boot code
      ARM: i.MX53: Detect booting from USB
      mtd: imx-nand: Move v3 register definitions to include file
      ARM: i.MX53: Implement NAND xload
      ARM: i.MX53 Vincell: Add NAND xload support
      ARM: imx_v7_defconfig: Enable Vincell support
      ARM: vincell_defconfig: make smaller
      globalvar: Move static inline functions to common/
      globalvar: sync with nvvars
      vsprintf: Add support for printing ipv4 addresses with %pI4
      convert users to %pI4
      globalvar: Allow to remove multiple globalvars using wildcards
      global: Make 'global' command behaviour consistent to 'nv'
      nv: simplify nvvar_add
      globalvar: Also create globalvars from for nonvolatile device vars
      nv: Allow full variable name in nvvar_add
      globalvar: Allow full variable name in globalvar_add
      param: introduce param_bitmask
      globalvar: introduce globalvar_add_simple_bitmask
      mtd: ubi: commands: use function API to access ubi volumes
      mtd: ubi: remove now unused ioctls
      usb: Use standard debug macro
      usb: Add usb phy to usb host
      usb: ehci: forward phy given in registration data to host
      usb: imx-usb-phy: Drop unnecessary read/modify/write
      phy: Introduce of_phy_get_by_phandle
      phy: Introduce to_usbphy conversion function
      phy: Add usb-nop-xceiv support
      usb: imx-us-phy: Convert driver to generic phy support
      usb: imx-us-phy: implement notify_(dis)concect
      dts: update to v4.8-rc1
      dts: update to v4.8-rc2
      dts: update to v4.8-rc4
      dts: update to v4.8-rc5
      dts: update to v4.8-rc6
      dts: update to v4.8-rc7
      dts: update to v4.8-rc8
      Allow device parameters for devices with dots in name
      completion: Fix completion for devices with a dot in the name
      defaultenv: add defaultenv-1 in boards via defaultenv_append_director=
y()
      Make generic default environment type a use choice
      Merge branch 'for-next/arm'
      Merge branch 'for-next/bootchooser'
      Merge branch 'for-next/defenv'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/mvebu'
      Merge branch 'for-next/state'
      Merge branch 'for-next/ubi'
      Merge branch 'for-next/usb'
      mtd: ubi: Fix scrubbing during attach
      ARM: i.MX Freescale Sabrelite: Use correct device tree for dl variant
      ARM: bootm: Fix free_mem calculation when initrd is given
      mtd: ubi: enable thread earlier
      ARM: Fix appended device tree when CONFIG_OFTREE is enabled
      mtd: Make UBI detection more robust
      of: partitions: Support new binding
      of: of_find_path: Add support for new partition binding
      Release v2016.11.0

Stefan Lengfeld (1):
      state: fix state is not saved when string variable is changed

Steffen Trumtrar (3):
      nand: denali: use correct interrupts in read_page
      nand: denali: use is_timeout in while loop
      nand: denali: get rid of compile-time debug information

Ulrich =D6lmann (1):
      blspec: fix typo

Uwe Kleine-K=F6nig (17):
      ARM: mvebu_defconfig: oldconfig
      ARM: mvebu_defconfig: enable all machines, AEABI, nand and net driver
      ARM: mvebu: select HAVE_DEFAULT_ENVIRONMENT_NEW
      net: mvneta: clean txdesc before usage
      firmware: altera-serial: Make the driver match the dt binding documen=
tation
      firmware: altera-serial: simplify handling of optional gpio
      scripts: kwboot: try to resync on packet boundary after receiving a N=
AK
      scripts: kwboot: flush input and output only once
      scripts: kwboot: improve diagnostic output
      scripts: kwboot: shorten delay between two boot messages
      scripts: kwboot: simplify kwboot_mmap_image
      scripts: kwboot: set boot source to UART before sending
      images: mvebu: don't generate uart images
      pinctrl: mvebu: add newline to error message
      pinctrl: mvebu: armada-370 fix gpio name for mpp63
      ARM: mvebu: add support for Netgear RN2120
      ARM: mvebu: document some general mvebu stuff and the rn2120 board

Yegor Yefremov (2):
      Add support for Baltos systems
      boot: add '-w' parameter to usage help text

 =

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
