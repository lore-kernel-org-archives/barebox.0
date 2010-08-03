Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OgCfb-00054a-1X
	for barebox@lists.infradead.org; Tue, 03 Aug 2010 08:16:22 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1OgCfX-0005AL-Aj
	for barebox@lists.infradead.org; Tue, 03 Aug 2010 10:16:15 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1OgCfX-0005is-8p
	for barebox@lists.infradead.org; Tue, 03 Aug 2010 10:16:15 +0200
Date: Tue, 3 Aug 2010 10:16:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100803081615.GL14113@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2010.08.0
To: barebox@lists.infradead.org

Hi all,

We have a new release: v2010.08.0. Quite much has happened this time as
the commit log shows. Thanks for all people working on this project.

Sascha

The following changes since commit 0db4be97f2ebd6cedad9c113ca49667c0b1e8d75:

  v2010.07.0 (2010-07-03 10:13:42 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git ..BRANCH.NOT.VERIFIED..

Baruch Siach (10):
      mx25 3ds: fix build failure
      mx25: fix typo in imx25-regs.h
      mx25 3ds: cleanup lowlevel_init code
      mx25: add support for i2c
      i2c: add driver for the MC34704 PMIC
      mx25 3ds: add support for i2c master and PMIC
      mx25 3ds: fix fec initialization
      mx25 3ds: fix memory initialization
      nand_imx: fix "used uninitialized" warning on mx25
      bootz: give a proper error on open() failure

Eric Benard (1):
      Add support for Eukrea CPUIMX35

Eric B=E9nard (3):
      fix command loadb
      imx-ipu-fb: Add board specific hook to enable display
      imx-ipu-fb: do not enable framebuffer on startup

Ivo Clarysse (1):
      mx25 3ds: Fix compilation

Sascha Hauer (61):
      net: remove need for eth_halt/eth_open
      net: Implement a new network stack
      remove unused sntp.h
      implement dhcp using new network stack
      implement tftp using new network stack
      implement ping using new network stack
      implement nfs using new network stack
      net: consider rarp support as outdated. Remove it
      network drivers: call net_receive directly instead of NetReceive
      net: remove old network stack
      rework device parameters
      errno: add strings for network related error messages
      add netconsole support
      net: add dns support
      ping: resolv hostnames
      Merge branch 'net' into next
      pcm037: Add MMU support
      bootu: Allow passing in devices as parameter
      Allow to merge default environment from more than one directory
      include support for a simple pseudo number generator
      net: implement random_ether_addr
      net: use a random mac address if the current device does not have a v=
alid address
      add a generic default environment
      pcm038: use generic default env
      pcm043: use generic default env
      pcm037: use generic default env
      pca100: use generic default env
      i.MX27: merge iomux pim definitions from kernel
      imxfb: Add board specific hook to enable display
      imxfb: do not enable framebuffer on startup
      memcpy cmd: Do not expect to read/write the whole chunk at once
      armlinux: reorder tag setup
      remove eco920 board support
      usbnet: remove unused dev member in struct usbnet
      i.MX serial: Use readl/writel instead of pointer deref
      i.MX clocksource: Use readl/writel instead of pointer deref
      i.MX27: Add some missing device base addresses
      fb: add a usage counter to prevent double enable/disable
      ehci: Make has_tt configurable via platform data
      ehci: Handle hub port reset properly
      usb: Check return value of host controller init
      ehci: use is_timeout for timeout instead of udelay counter
      ehci: Force a ehci_halt before trying to reset
      ehci: remove unused code
      add netconsole host script
      Merge remote branch 'origin/usb-pu' into next
      Merge remote branch 'origin/assorted-pu' into next
      tftp: remove unused variables
      add progression bar function
      cfi flash driver: Use generic progression bar function
      tftp: use generic progression bar
      tftp: Add push support
      nfs: Use generic progression bar
      nfs: resend requests after timeout
      tftp: update doxygen information
      Merge branch 'next'
      pca100: update defconfig
      pcm037: update defconfig
      pcm038: update defconfig
      pcm043: update defconfig
      Release v2010.08.0

Uwe Kleine-K=F6nig (2):
      trivial: fix typos concerning "hierarchy"
      trivial: fix typos concerning "instead"

 Documentation/users_manual.dox                     |    1 +
 Doxyfile                                           |    3 +-
 Makefile                                           |   17 +-
 TODO                                               |    4 +-
 arch/arm/Makefile                                  |    2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |  254 ++++
 arch/arm/configs/pca100_defconfig                  |   32 +-
 arch/arm/configs/pcm037_defconfig                  |   50 +-
 arch/arm/configs/pcm038_defconfig                  |   30 +-
 arch/arm/configs/pcm043_defconfig                  |   39 +-
 arch/arm/lib/armlinux.c                            |   66 +-
 arch/arm/mach-at91rm9200/Kconfig                   |    8 -
 arch/arm/mach-imx/Kconfig                          |   15 +
 arch/arm/mach-imx/clocksource.c                    |   18 +-
 arch/arm/mach-imx/include/mach/imx-ipu-fb.h        |    2 +
 arch/arm/mach-imx/include/mach/imx21-regs.h        |   33 -
 arch/arm/mach-imx/include/mach/imx25-regs.h        |    3 +-
 arch/arm/mach-imx/include/mach/imx27-regs.h        |   96 +--
 arch/arm/mach-imx/include/mach/imxfb.h             |    2 +
 arch/arm/mach-imx/include/mach/iomux-mx21.h        |  121 ++
 arch/arm/mach-imx/include/mach/iomux-mx25.h        |    4 +-
 arch/arm/mach-imx/include/mach/iomux-mx27.h        |  204 ++++
 arch/arm/mach-imx/include/mach/iomux-mx2x.h        |  230 ++++
 arch/arm/mach-imx/speed-imx25.c                    |    5 +
 board/eco920/Makefile                              |    2 -
 board/eco920/config.h                              |  134 ---
 board/eco920/config.mk                             |    1 -
 board/eco920/eco920.c                              |  211 ----
 board/eukrea_cpuimx27/eukrea_cpuimx27.c            |    3 +-
 board/eukrea_cpuimx35/Makefile                     |   25 +
 board/eukrea_cpuimx35/config.h                     |   23 +
 board/{pcm037 =3D> eukrea_cpuimx35}/env/bin/_update  |    0
 board/eukrea_cpuimx35/env/bin/boot                 |   52 +
 .../{pcm037 =3D> eukrea_cpuimx35}/env/bin/hush_hack  |    0
 board/{pcm043 =3D> eukrea_cpuimx35}/env/bin/init     |   16 +-
 board/eukrea_cpuimx35/env/bin/update_kernel        |    8 +
 board/eukrea_cpuimx35/env/bin/update_root          |    8 +
 board/eukrea_cpuimx35/env/config                   |   27 +
 board/eukrea_cpuimx35/eukrea_cpuimx35.c            |  343 ++++++
 board/eukrea_cpuimx35/eukrea_cpuimx35.dox          |    4 +
 board/eukrea_cpuimx35/flash_header.c               |   60 +
 board/eukrea_cpuimx35/lowlevel.c                   |  218 ++++
 board/freescale-mx25-3-stack/3stack.c              |   84 +-
 board/freescale-mx25-3-stack/lowlevel_init.S       |   13 +-
 board/imx21ads/imx21ads.c                          |    1 +
 board/imx27ads/imx27ads.c                          |    3 +-
 board/pcm037/env/bin/boot                          |   47 -
 board/pcm037/env/bin/init                          |   37 -
 board/pcm037/env/bin/update_root                   |   16 -
 board/pcm037/env/config                            |   62 +-
 board/pcm037/pcm037.c                              |   31 +
 board/pcm038/env/bin/boot                          |   47 -
 board/pcm038/env/bin/update_kernel                 |   15 -
 board/pcm038/env/bin/update_root                   |   16 -
 board/pcm038/env/config                            |   62 +-
 board/pcm038/pcm038.c                              |    3 +-
 board/pcm043/env/bin/_update                       |   36 -
 board/pcm043/env/bin/boot                          |   47 -
 board/pcm043/env/bin/hush_hack                     |    1 -
 board/pcm043/env/bin/update_kernel                 |   15 -
 board/pcm043/env/config                            |   65 +-
 board/phycard-i.MX27/env/bin/_update               |   36 -
 board/phycard-i.MX27/env/bin/boot                  |   40 -
 board/phycard-i.MX27/env/bin/hush_hack             |    1 -
 board/phycard-i.MX27/env/bin/init                  |   37 -
 board/phycard-i.MX27/env/bin/update_kernel         |   15 -
 board/phycard-i.MX27/env/bin/update_root           |   16 -
 board/phycard-i.MX27/env/config                    |   57 +-
 board/phycard-i.MX27/pca100.c                      |    3 +-
 commands/edit.c                                    |    2 +-
 commands/loadb.c                                   |    2 +-
 commands/mem.c                                     |   30 +-
 commands/net.c                                     |   38 -
 common/Kconfig                                     |    4 +-
 common/Makefile                                    |    5 +-
 common/console.c                                   |   40 +-
 common/misc.c                                      |    7 +-
 {board/pcm038/env =3D> defaultenv}/bin/_update       |    5 +-
 defaultenv/bin/boot                                |  109 ++
 {board/pcm038/env =3D> defaultenv}/bin/hush_hack     |    0
 {board/pcm038/env =3D> defaultenv}/bin/init          |   11 +-
 {board/pcm037/env =3D> defaultenv}/bin/update_kernel |    2 +-
 .../update_root =3D> defaultenv/bin/update_rootfs    |    4 +-
 drivers/i2c/Kconfig                                |    3 +
 drivers/i2c/Makefile                               |    1 +
 drivers/i2c/mc34704.c                              |  140 +++
 drivers/nand/nand.c                                |    7 +-
 drivers/nand/nand_imx.c                            |    2 +-
 drivers/net/at91_ether.c                           |    2 +-
 drivers/net/cs8900.c                               |    2 +-
 drivers/net/dm9000.c                               |    2 +-
 drivers/net/ep93xx.c                               |    4 +-
 drivers/net/fec_imx.c                              |    2 +-
 drivers/net/fec_mpc5200.c                          |    2 +-
 drivers/net/macb.c                                 |    2 +-
 drivers/net/netx_eth.c                             |    2 +-
 drivers/net/smc91111.c                             |    2 +-
 drivers/net/smc911x.c                              |    2 +-
 drivers/net/tap.c                                  |    2 +-
 drivers/net/usb/asix.c                             |   14 +-
 drivers/net/usb/usbnet.c                           |   11 +-
 drivers/nor/cfi_flash.c                            |    5 +-
 drivers/serial/serial_imx.c                        |  137 ++-
 drivers/usb/usb.c                                  |    5 +-
 drivers/usb/usb_ehci.h                             |    4 -
 drivers/usb/usb_ehci_core.c                        |   74 +-
 drivers/video/fb.c                                 |   26 +-
 drivers/video/imx-ipu-fb.c                         |   10 +-
 drivers/video/imx.c                                |   26 +-
 include/console.h                                  |    6 -
 include/driver.h                                   |    2 +-
 include/fb.h                                       |    6 +-
 include/i2c/mc34704.h                              |   26 +
 include/net.h                                      |  473 ++++----
 include/param.h                                    |   15 +-
 include/progress.h                                 |   15 +
 include/stdlib.h                                   |   16 +
 include/usb/ehci.h                                 |   10 +
 include/usb/usbnet.h                               |    2 -
 lib/Makefile                                       |    2 +
 lib/driver.c                                       |   12 +-
 lib/parameter.c                                    |  195 ++--
 lib/random.c                                       |   26 +
 lib/show_progress.c                                |   62 +
 net/Kconfig                                        |   19 +-
 net/Makefile                                       |    3 +-
 net/dhcp.c                                         |  491 +++-----
 net/dns.c                                          |  264 +++++
 net/eth.c                                          |   98 +-
 net/net.c                                          | 1244 ++++++++--------=
----
 net/netconsole.c                                   |  228 ++++
 net/nfs.c                                          |  726 ++++++------
 net/ping.c                                         |  152 ++--
 net/rarp.c                                         |  101 --
 net/sntp.h                                         |   61 -
 net/tftp.c                                         |  447 +++++---
 scripts/genenv                                     |   17 +
 scripts/netconsole                                 |   59 +
 138 files changed, 5094 insertions(+), 3612 deletions(-)
 create mode 100644 arch/arm/configs/eukrea_cpuimx35_defconfig
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx21.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx27.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx2x.h
 delete mode 100644 board/eco920/Makefile
 delete mode 100644 board/eco920/config.h
 delete mode 100644 board/eco920/config.mk
 delete mode 100644 board/eco920/eco920.c
 create mode 100644 board/eukrea_cpuimx35/Makefile
 create mode 100644 board/eukrea_cpuimx35/config.h
 rename board/{pcm037 =3D> eukrea_cpuimx35}/env/bin/_update (100%)
 create mode 100644 board/eukrea_cpuimx35/env/bin/boot
 rename board/{pcm037 =3D> eukrea_cpuimx35}/env/bin/hush_hack (100%)
 rename board/{pcm043 =3D> eukrea_cpuimx35}/env/bin/init (67%)
 create mode 100644 board/eukrea_cpuimx35/env/bin/update_kernel
 create mode 100644 board/eukrea_cpuimx35/env/bin/update_root
 create mode 100644 board/eukrea_cpuimx35/env/config
 create mode 100644 board/eukrea_cpuimx35/eukrea_cpuimx35.c
 create mode 100644 board/eukrea_cpuimx35/eukrea_cpuimx35.dox
 create mode 100644 board/eukrea_cpuimx35/flash_header.c
 create mode 100644 board/eukrea_cpuimx35/lowlevel.c
 delete mode 100644 board/pcm037/env/bin/boot
 delete mode 100644 board/pcm037/env/bin/init
 delete mode 100644 board/pcm037/env/bin/update_root
 delete mode 100644 board/pcm038/env/bin/boot
 delete mode 100644 board/pcm038/env/bin/update_kernel
 delete mode 100644 board/pcm038/env/bin/update_root
 delete mode 100644 board/pcm043/env/bin/_update
 delete mode 100644 board/pcm043/env/bin/boot
 delete mode 100644 board/pcm043/env/bin/hush_hack
 delete mode 100644 board/pcm043/env/bin/update_kernel
 delete mode 100644 board/phycard-i.MX27/env/bin/_update
 delete mode 100644 board/phycard-i.MX27/env/bin/boot
 delete mode 100644 board/phycard-i.MX27/env/bin/hush_hack
 delete mode 100644 board/phycard-i.MX27/env/bin/init
 delete mode 100644 board/phycard-i.MX27/env/bin/update_kernel
 delete mode 100644 board/phycard-i.MX27/env/bin/update_root
 rename {board/pcm038/env =3D> defaultenv}/bin/_update (86%)
 create mode 100644 defaultenv/bin/boot
 rename {board/pcm038/env =3D> defaultenv}/bin/hush_hack (100%)
 rename {board/pcm038/env =3D> defaultenv}/bin/init (59%)
 rename {board/pcm037/env =3D> defaultenv}/bin/update_kernel (91%)
 rename board/pcm043/env/bin/update_root =3D> defaultenv/bin/update_rootfs =
(91%)
 create mode 100644 drivers/i2c/mc34704.c
 create mode 100644 include/i2c/mc34704.h
 create mode 100644 include/progress.h
 create mode 100644 include/stdlib.h
 create mode 100644 include/usb/ehci.h
 create mode 100644 lib/random.c
 create mode 100644 lib/show_progress.c
 create mode 100644 net/dns.c
 create mode 100644 net/netconsole.c
 delete mode 100644 net/rarp.c
 delete mode 100644 net/sntp.h
 create mode 100755 scripts/genenv
 create mode 100755 scripts/netconsole
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
