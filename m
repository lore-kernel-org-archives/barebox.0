Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ScFOh-0001df-MS
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 12:31:38 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1ScFOf-0000P3-5T
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 14:31:33 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1ScFOe-00052m-Ey
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 14:31:32 +0200
Date: Wed, 6 Jun 2012 14:31:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120606123132.GZ30400@pengutronix.de>
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
Subject: v2012.06.0
To: barebox@lists.infradead.org

Hi All,

We have a june release! As usual see the attached list to see what
happened since the last release.

Beginning with this release I want to change the way I handle the -next
branch. Instead of keeping it (mostly) fastforward I want to collect
topic branches which I merge together in the master branch of the day.
This way I can amend fixes for patches which break something in the
patches themselves instead of committing them as seperate patches in
-next. This way we hopefully get better bisectability of the tree.

For you this means that you have to base your patches on master instead
of -next. For me this means that I will have to handle merge conflicts
myself. For us all this means that -next won't be fastforward anymore.

Sascha


----------------------------------------------------------------
Alexander Shiyan (20):
      ename mc13892.h header to mc13xxx.h
      Make mc13892_reg enum as define
      Rename mc13892.c unit to mc13xxx.c
      Rename mc13892_mode enum to mc13xxx_mode
      Rename mc13892 driver name to mc13xxx
      Sort includes in mc13xxx.c
      Make mc13892_revision enum as define
      Rename remainings structs and functions from mc13892_ to mc13xxx_
      Remove unneded mc13xxx_get_revision function
      Detect MC13892 chip ID in mc13xxx_query_revision()
      Rename definition MC13892_REG_IDENTIFICATION to MC13XXX_
      Add MC13783 register definitions
      Add support for MC13783 to mc13xxx driver
      Add MC13783 SWx definitions
      Final switch to use combined driver mc13xxx
      i.MX51: Allow to pass cpu clock to lowlevel init
      Allow use platform_ide driver without ALT-registers
      Merge silicon definitions i.MX35, i.MX51 and i.MX53
      i2c: Fix barebox crash when 'count' is not set for i2c_read command
      ARM i.MX: Possible bug fixed due misspelling when copy/paste

Anand Gadiyar (1):
      panda: fix crash when not using barebox as second stage

Antony Pavlov (4):
      MIPS: start.S: clean up whitespaces
      Makefile: add barebox.srec to 'clean'
      README: fix some typos
      video/s3c24xx.c: fix doxygen comment for s3cfb_activate_var()

Christian Kapeller (1):
      Add board support for Karo TX51 i.mx51 SODIMM module.

Eric B=E9nard (1):
      fs/tftp: depend on NET_TFTP

Jaccon Bastiaansen (1):
      Increase heapsize for i.MX21ADS board again.

Jean-Christophe PLAGNIOL-VILLARD (58):
      defaultenv/boot: add support for oftree boot option support
      net: dhcp: add private extention 224 to pass the oftree file via dhcp.
      defaultenv: add support of oftree file pass via dhcp (option 224)
      mx53loco: set dhcp vendor id
      menu: fix double action when "\n\r" or "\r\n" is received
      menu: add color fancy support
      usb-a926x: update DHCP vendor ID
      usb-a926x: add oftree support
      usb-a926x: enable MMU
      tny-a926x: update DHCP vendor ID
      tny-a926x: udpate defconfig
      tny-a926x: add oftree config support
      tny-a926x: enable MMU
      defaultenv: add support for custom board boot
      at91sam9m10g45ek: add gpio keys support
      at91sam9m10g45ek: enable kernel console over framebuffer
      at91sam9m10g45ek: add boot menu support
      filetype: add Android boot image support
      Atmel reference board: add oftree boot support
      arm: add Android boot image support
      arm: fix zImage support when a oftree is concatenated
      at91sam9260ek/9g20ek: udpate defconfig
      menu: enable the fancy color support only if HUSH is enabled
      at91sam9263ek: update defconfig
      defaultenv/update: add oftree support
      net: use net_alloc_packet to allocate packet
      mx53/loco: udpate defconfig with USB host
      net: dhcp: add support to send the hostname to the dhcp server
      config: switch machine to hostname
      filetype: add Bourne Shell support
      Introduce binfmt support
      bootm: add uimage binfmt support
      arm: bootm: add barebox, zImage and aImage binfmt support
      defaultenv: add binfmt support
      arm: bootm: zImage: add error message when can not request the memory
      dhcp: fix typo introduce during rebase of hostname patch
      config: fix missing switch machine to hostname during merge
      usb: fix driver name
      menu: fix non command management support
      menu: fix support for "\n", "\n\r" and "\r"
      menu: fix menu alloc init
      mips: add in_be16/32 and out_be16/32 for cfi support
      qemu-malta: rename serial.c to init.c
      qemu-malta: add nor flash support
      complete: add var and device param complete support
      complete: add generic command complete framework
      complete: add device name complete support for devinfo
      complete: add help complete support
      complete: add empty complete support
      complete: add eth interface complete support
      complete: add go and sleep support
      complete: add delpart complete support
      complete: add executable file support
      complete: eth typo fix
      complete: fix duplicate env eval list
      add Calao QIL A9260 support and MB-QIL A9260 Motherboard support
      at91: switch uart registration to inline
      at91sam9260ek/9260ek/9g20ek: drop bootz and fat write support to fit =
in flash

Juergen Beisert (10):
      netX: just a style fix
      netX: use correct sized pointers
      netX: adapt it to the current boot spec
      netX: add more common permissions
      netX: make the host interface macros compile
      netX: add a few base addresses for non on chip devices
      netX: unify the device registration
      netX/network: fix debug outputs
      netX: XPEC firmware is always of attribute const
      netX: don't bother with variable sizes, use the intend

Marc Kleine-Budde (1):
      pcm027: add board support

Michael Olbrich (1):
      build bareboxenv for the target as well

Michael Trensch (2):
      netX: ignoring temporary netx build tool
      netX: UART may not initialize correctly.

Renaud Barbier (1):
      Preparation stage to support multiple PPC architectures

Robert P. J. Day (1):
      Add support for OMAP4460 revision detection.

Sascha Hauer (87):
      Merge branch 'calao-board' of git://git.jcrosoft.org/barebox into next
      Merge branch 'master' into next
      USB ehci: make cache handling simpler
      USB ehci: speed up initialization
      ARM i.MX53: Setup USB clocks
      ARM i.MX53 LOCO: Add USB support
      ARM i.MX iomux-v3: Sync to kernel
      ARM i.MX iomux-v3: one bit more for pad_ctl
      ARM i.MX51 iomux: sync to kernel
      ARM i.MX53 iomux: sync to kernel
      ARM i.MX35 3-stack: Fix compilation
      Merge branch 'work/usb' into next
      Merge branch 'work/iomux-v3' into next
      make building of bareboxenv-target optional
      console simple: return with a proper error value
      netconsole: bail out if console_register fails
      ppc: remove unused init_board_data function
      ppc: remove unused bd_t
      bootm: be more informative with oftrees
      net dns: remove debug code
      net: use static string in string_to_ip
      Makefile: fix build timestamps
      automount: Pass automount pass as environment variable
      device: make singular devices possible
      net: register a 'net' device to store network specific variables
      dhcp: set global nameserver/domainname
      dns: use global nameserver/domainname
      fs tftp: use resolv to resolv ip address
      net: remove unused getenv_ip_dns
      automount: fix argument parsing
      automount: optionally make directory
      automount: remove existing automountpoint
      Merge branch 'work/ppc' into next
      Merge branch 'work/automount' into next
      Merge branch 'work/build-timestamp' into next
      Use DEVICE_ID_DYNAMIC where applicable
      Merge branch 'work/dns' into next
      Merge branch 'master' into next
      Merge branch 'binfmt' of git://git.jcrosoft.org/barebox into next
      ARM: add initial i.MX6 support
      serial i.MX: i.MX6 support
      net fec: Add i.MX6 support
      mmc i.MX esdhc: Add i.MX6 support
      net mii: Add mii_open/mii_close functions
      ARM: initial Freescale i.MX6q Armadillo2 support
      ARM Freescale i.MX6 Armadillo2: Add defconfig
      Merge branch 'pu/mx6-v2' into next
      ARM mxs: Add cpu_is_mx* macros for drivers shared with i.MX
      param: make return value of param getter function const
      devinfo: use accessor function for parameters
      dev_add_param: check if param exists already
      hush: safe indention level by continueing a loop
      hush: safe an indention level by continueing a loop
      hush: cleanup coding style
      hush: remove bogus 'else'
      hush: run_pipe_real must have num_progs =3D=3D 1
      hush: run_pipe_real: bail out early to safe an indention level
      hush: remove quotes at end of processing
      hush: simplify globhack
      hush: pass GLOB_NOCHECK to glob
      glob: activate GLOB_NOCHECK flag
      hush: Fix globbing
      hush: allow to run interactive shell in do_sh
      defaultenv: remove now unnecessary hush-hack
      edit: Add proper screen size handling
      remove dlmalloc.src
      dhcp: set start time
      tlsf_malloc: return valid pointer for malloc(0)
      stringlist: use seperately allocated string
      stringlist: implement string_list_add_asprintf
      Merge branch 'work/hush' into next
      Merge branch 'pu/assorted' into next
      bootm: fix initrd handling
      Merge tag 'malta-cfi-flash' of git://git.jcrosoft.org/barebox into ne=
xt
      Merge tag 'complete_update_support' of git://git.jcrosoft.org/barebox=
 into next
      ppc: Add fls, fls64, __ilog2_u64 and ffs64 bitops
      ppc: add clr/setbits operations
      ppc processor.h: Update for future mpc85xx support
      ppc mmu.h: update for future mpc85xx support
      Merge branch 'next'
      echo: Fix help
      dns: fix recursive loop
      ARM i.MX51 babbage: use dedicated chipselect for PMIC spi
      mfd mc13xxxx: Set mc_dev to NULL on failure
      ARM i.MX51 babbage: move fec init after power init
      fs tftp: depend on NET, not on NET_TFTP
      Release v2012.06.0

Steffen Trumtrar (2):
      bootm: Fix check for ret-value
      bootm: Align oftree

Uwe Hermann (1):
      Remove EXPERIMENTAL flag from loady.

Wolfram Sang (4):
      arm: mxs: add ocotp driver
      arm: mxs: tx28: get MAC from OCOTP
      net: eth: don't say that MAC comes from EEPROM
      arm: tx28: select OCOTP driver

 .gitignore                                         |    1 +
 Makefile                                           |    6 +-
 README                                             |    6 +-
 arch/arm/Makefile                                  |    4 +
 arch/arm/boards/a9m2410/a9m2410.c                  |   12 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |   10 +-
 arch/arm/boards/at91sam9260ek/env/config           |   10 +-
 arch/arm/boards/at91sam9261ek/env/config           |   12 +-
 arch/arm/boards/at91sam9263ek/env/config           |   14 +-
 .../arm/boards/at91sam9m10g45ek/env/bin/boot_board |   51 +
 arch/arm/boards/at91sam9m10g45ek/env/bin/menu_boot |   37 +
 arch/arm/boards/at91sam9m10g45ek/env/config        |   14 +-
 arch/arm/boards/at91sam9m10g45ek/init.c            |   51 +
 arch/arm/boards/at91sam9x5ek/env/config            |    6 +-
 arch/arm/boards/beagle/board.c                     |    6 +-
 arch/arm/boards/chumby_falconwing/env/config       |    2 +-
 arch/arm/boards/edb93xx/edb93xx.c                  |    5 +-
 arch/arm/boards/eukrea_cpuimx25/env/config         |   14 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    6 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    1 -
 arch/arm/boards/eukrea_cpuimx35/env/config         |   14 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    7 +-
 arch/arm/boards/eukrea_cpuimx51/env/config         |   14 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |    4 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    2 +-
 arch/arm/boards/freescale-mx28-evk/env/config      |   12 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   35 +-
 arch/arm/boards/freescale-mx35-3-stack/env/config  |   14 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |   98 +-
 arch/arm/boards/freescale-mx51-pdk/env/config      |   14 +-
 arch/arm/boards/freescale-mx53-loco/board.c        |   19 +-
 arch/arm/boards/freescale-mx53-loco/env/config     |   15 +-
 arch/arm/boards/freescale-mx53-smd/board.c         |    2 +-
 arch/arm/boards/freescale-mx53-smd/env/config      |   14 +-
 arch/arm/boards/freescale-mx6-arm2/Makefile        |    1 +
 arch/arm/boards/freescale-mx6-arm2/board.c         |  173 +
 arch/arm/boards/freescale-mx6-arm2/config.h        |    4 +
 arch/arm/boards/freescale-mx6-arm2/env/config      |   47 +
 arch/arm/boards/freescale-mx6-arm2/flash_header.c  |  170 +
 arch/arm/boards/guf-cupid/board.c                  |    2 +-
 arch/arm/boards/guf-cupid/env/config               |   14 +-
 arch/arm/boards/guf-neso/env/config                |   14 +-
 arch/arm/boards/imx21ads/imx21ads.c                |    2 +-
 arch/arm/boards/karo-tx25/board.c                  |    6 +-
 arch/arm/boards/karo-tx25/env/config               |   14 +-
 arch/arm/boards/karo-tx28/env/config               |   14 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c              |   23 +
 arch/arm/boards/karo-tx51/Makefile                 |    2 +
 arch/arm/boards/karo-tx51/config.h                 |   21 +
 arch/arm/boards/karo-tx51/env/config               |   42 +
 arch/arm/boards/karo-tx51/flash_header.c           |   56 +
 arch/arm/boards/karo-tx51/tx51.c                   |  291 +
 arch/arm/boards/karo-tx51/tx51.dox                 |   50 +
 arch/arm/boards/mini2440/env/config                |   14 +-
 arch/arm/boards/mini2440/mini2440.c                |    8 +-
 arch/arm/boards/mioa701/board.c                    |    4 +-
 arch/arm/boards/netx/netx.c                        |    8 +-
 arch/arm/boards/nhk8815/setup.c                    |    4 +-
 arch/arm/boards/omap3evm/board.c                   |    4 +-
 arch/arm/boards/panda/board.c                      |    7 +-
 arch/arm/boards/panda/env/config                   |   12 +-
 arch/arm/boards/pcm027/Makefile                    |    2 +
 arch/arm/boards/pcm027/board.c                     |  190 +
 arch/arm/boards/pcm027/config.h                    |  328 ++
 arch/arm/boards/pcm027/env/config                  |   46 +
 arch/arm/boards/pcm027/lowlevel_init.S             |  456 ++
 arch/arm/boards/pcm037/env/config                  |   14 +-
 arch/arm/boards/pcm037/pcm037.c                    |   10 +-
 arch/arm/boards/pcm038/env/config                  |   14 +-
 arch/arm/boards/pcm038/pcm038.c                    |   37 +-
 arch/arm/boards/pcm043/env/config                  |   14 +-
 arch/arm/boards/pcm043/pcm043.c                    |    2 +-
 arch/arm/boards/pcm049/board.c                     |    9 +-
 arch/arm/boards/pcm049/env/config                  |   14 +-
 arch/arm/boards/phycard-a-l1/env/config            |   18 +-
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |    4 +-
 arch/arm/boards/phycard-a-xl2/env/config           |   14 +-
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |    4 +-
 arch/arm/boards/phycard-i.MX27/env/config          |   14 +-
 arch/arm/boards/qil-a9260/Makefile                 |    1 +
 arch/arm/boards/qil-a9260/config.h                 |    6 +
 arch/arm/boards/qil-a9260/env/bin/init_board       |   49 +
 arch/arm/boards/qil-a9260/env/config               |   39 +
 arch/arm/boards/qil-a9260/init.c                   |  208 +
 arch/arm/boards/scb9328/env/config                 |   14 +-
 arch/arm/boards/tny-a926x/env/config               |   13 +-
 arch/arm/boards/tqma53/board.c                     |    2 +-
 arch/arm/boards/tqma53/env/config                  |    8 +-
 arch/arm/boards/usb-a926x/env/config               |   16 +-
 arch/arm/boards/versatile/versatilepb.c            |    4 +-
 arch/arm/configs/at91sam9260ek_defconfig           |    4 +-
 arch/arm/configs/at91sam9263ek_defconfig           |    4 +-
 arch/arm/configs/at91sam9g20ek_defconfig           |    4 +-
 arch/arm/configs/freescale-mx6-arm2_defconfig      |   69 +
 arch/arm/configs/freescale_mx51_babbage_defconfig  |    2 +-
 arch/arm/configs/freescale_mx53_loco_defconfig     |    3 +
 arch/arm/configs/mx21ads_defconfig                 |    4 +-
 arch/arm/configs/mx27ads_defconfig                 |    1 -
 arch/arm/configs/neso_defconfig                    |    1 -
 arch/arm/configs/pcm027_defconfig                  |   61 +
 arch/arm/configs/pcm038_defconfig                  |    1 +
 arch/arm/configs/qil_a9260_128mib_defconfig        |   78 +
 arch/arm/configs/qil_a9260_defconfig               |   77 +
 arch/arm/configs/tny_a9260_defconfig               |    4 +-
 arch/arm/configs/tny_a9263_defconfig               |    4 +-
 arch/arm/configs/tny_a9g20_defconfig               |    4 +-
 arch/arm/configs/tx51stk5_defconfig                |  148 +
 arch/arm/configs/usb_a9260_defconfig               |    7 +-
 arch/arm/configs/usb_a9263_128mib_defconfig        |    9 +-
 arch/arm/configs/usb_a9263_defconfig               |    8 +-
 arch/arm/configs/usb_a9g20_128mib_defconfig        |    7 +-
 arch/arm/configs/usb_a9g20_defconfig               |    7 +-
 arch/arm/cpu/cpuinfo.c                             |    2 +
 arch/arm/lib/bootm.c                               |  238 +
 arch/arm/mach-at91/Kconfig                         |   13 +-
 arch/arm/mach-at91/at91rm9200_devices.c            |   59 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |   75 +-
 arch/arm/mach-at91/at91sam9261_devices.c           |   51 +-
 arch/arm/mach-at91/at91sam9263_devices.c           |   51 +-
 arch/arm/mach-at91/at91sam9g45_devices.c           |   57 +-
 arch/arm/mach-at91/at91sam9x5_devices.c            |   66 +-
 arch/arm/mach-at91/include/mach/at91rm9200.h       |    2 +
 arch/arm/mach-at91/include/mach/at91sam9260.h      |    1 +
 arch/arm/mach-at91/include/mach/at91sam9261.h      |    1 +
 arch/arm/mach-at91/include/mach/at91sam9263.h      |    1 +
 arch/arm/mach-at91/include/mach/at91sam9g45.h      |    1 +
 arch/arm/mach-at91/include/mach/at91sam9x5.h       |    1 +
 arch/arm/mach-at91/include/mach/board.h            |   56 +-
 arch/arm/mach-imx/Kconfig                          |   34 +-
 arch/arm/mach-imx/Makefile                         |    1 +
 arch/arm/mach-imx/imx35.c                          |    3 +-
 arch/arm/mach-imx/imx51.c                          |   25 +-
 arch/arm/mach-imx/imx53.c                          |   17 +-
 arch/arm/mach-imx/imx6.c                           |   71 +
 arch/arm/mach-imx/include/mach/clock-imx6.h        |  347 ++
 arch/arm/mach-imx/include/mach/devices-imx51.h     |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h     |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx6.h      |   46 +
 arch/arm/mach-imx/include/mach/generic.h           |    9 +-
 arch/arm/mach-imx/include/mach/imx-regs.h          |   10 +
 arch/arm/mach-imx/include/mach/imx5.h              |    2 +-
 arch/arm/mach-imx/include/mach/imx51-regs.h        |   13 -
 arch/arm/mach-imx/include/mach/imx6-anadig.h       |  721 +++
 arch/arm/mach-imx/include/mach/imx6-regs.h         |  132 +
 arch/arm/mach-imx/include/mach/imx6.h              |    6 +
 arch/arm/mach-imx/include/mach/iomux-mx51.h        | 1133 ++--
 arch/arm/mach-imx/include/mach/iomux-mx53.h        |    8 +-
 arch/arm/mach-imx/include/mach/iomux-mx6.h         | 5630 ++++++++++++++++=
++++
 arch/arm/mach-imx/include/mach/iomux-v3.h          |   78 +-
 arch/arm/mach-imx/include/mach/pmic.h              |   11 -
 arch/arm/mach-imx/iomux-v3.c                       |   40 +-
 arch/arm/mach-imx/speed-imx51.c                    |    4 +-
 arch/arm/mach-imx/speed-imx53.c                    |    4 +-
 arch/arm/mach-imx/speed-imx6.c                     |  393 ++
 arch/arm/mach-imx/speed.c                          |    2 +
 arch/arm/mach-mxs/Kconfig                          |   15 +
 arch/arm/mach-mxs/Makefile                         |    1 +
 arch/arm/mach-mxs/imx.c                            |    2 +
 arch/arm/mach-mxs/include/mach/generic.h           |   10 +
 arch/arm/mach-mxs/include/mach/imx23-regs.h        |    1 +
 arch/arm/mach-mxs/include/mach/imx28-regs.h        |    1 +
 arch/arm/mach-mxs/include/mach/ocotp.h             |   12 +
 arch/arm/mach-mxs/ocotp.c                          |  139 +
 arch/arm/mach-netx/generic.c                       |   37 +-
 arch/arm/mach-netx/include/mach/netx-devices.h     |   73 +
 arch/arm/mach-netx/include/mach/netx-regs.h        |    7 +-
 arch/arm/mach-omap/devices-gpmc-nand.c             |    4 +-
 arch/arm/mach-omap/include/mach/omap4-silicon.h    |    3 +
 arch/arm/mach-omap/omap4_generic.c                 |   59 +-
 arch/arm/mach-pxa/Kconfig                          |   10 +
 arch/blackfin/boards/ipe337/ipe337.c               |    6 +-
 arch/mips/boards/qemu-malta/Makefile               |    2 +-
 arch/mips/boards/qemu-malta/{serial.c =3D> init.c}   |   14 +
 arch/mips/boot/start.S                             |    2 +-
 arch/mips/configs/qemu-malta_defconfig             |    5 +
 arch/mips/include/asm/io.h                         |    5 +
 arch/nios2/boards/generic/generic.c                |    6 +-
 arch/ppc/Kconfig                                   |   42 +-
 arch/ppc/Makefile                                  |   19 +-
 arch/ppc/boards/pcm030/pcm030.c                    |    8 +-
 arch/ppc/configs/pcm030_defconfig                  |    3 +
 arch/ppc/include/asm/barebox.h                     |  103 -
 arch/ppc/include/asm/bitops.h                      |   42 +
 arch/ppc/include/asm/cache.h                       |   17 +-
 arch/ppc/include/asm/common.h                      |    4 +-
 arch/ppc/include/asm/io.h                          |   20 +
 arch/ppc/include/asm/mmu.h                         |   35 +-
 arch/ppc/include/asm/ppc_asm.tmpl                  |  206 +-
 arch/ppc/include/asm/processor.h                   |   44 +
 arch/ppc/lib/Makefile                              |    2 -
 arch/ppc/lib/board_data.c                          |   49 -
 arch/ppc/mach-mpc5xxx/Kconfig                      |   43 +-
 arch/ppc/mach-mpc5xxx/Makefile                     |    1 +
 arch/ppc/mach-mpc5xxx/cpu.c                        |   10 -
 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h       |    1 +
 arch/ppc/mach-mpc5xxx/pci_mpc5200.c                |    2 +-
 arch/ppc/mach-mpc5xxx/start.S                      |   27 +-
 arch/ppc/{lib =3D> mach-mpc5xxx}/time.c              |   27 +-
 arch/ppc/mach-mpc5xxx/traps.c                      |    6 +-
 arch/sandbox/board/board.c                         |    2 +-
 arch/sandbox/board/hostfile.c                      |    2 +-
 arch/x86/boards/x86_generic/generic_pc.c           |    3 +-
 commands/Kconfig                                   |   10 +-
 commands/automount.c                               |   17 +-
 commands/bootm.c                                   |   39 +-
 commands/clear.c                                   |    2 +
 commands/echo.c                                    |    6 +-
 commands/edit.c                                    |   50 +-
 commands/false.c                                   |    2 +
 commands/go.c                                      |    2 +
 commands/help.c                                    |    2 +
 commands/i2c.c                                     |    2 +-
 commands/login.c                                   |    2 +
 commands/lsmod.c                                   |    2 +
 commands/meminfo.c                                 |    2 +
 commands/net.c                                     |    2 +
 commands/partition.c                               |    2 +
 commands/passwd.c                                  |    2 +
 commands/pwd.c                                     |    2 +
 commands/reginfo.c                                 |    2 +
 commands/reset.c                                   |    2 +
 commands/sleep.c                                   |    2 +
 commands/true.c                                    |    2 +
 commands/usb.c                                     |    2 +
 commands/version.c                                 |    2 +
 common/Kconfig                                     |   12 +
 common/Makefile                                    |   18 +
 common/binfmt.c                                    |   95 +
 common/complete.c                                  |  201 +-
 common/console.c                                   |    2 +-
 common/console_simple.c                            |   14 +-
 common/dlmalloc.src                                | 3265 ------------
 common/filetype.c                                  |    6 +
 common/hush.c                                      |  802 +--
 common/menu.c                                      |   59 +-
 common/tlsf_malloc.c                               |    7 +
 common/version.c                                   |    4 +-
 defaultenv/bin/_boot_help                          |    3 +-
 defaultenv/bin/_update_help                        |    3 +-
 defaultenv/bin/boot                                |   24 +-
 defaultenv/bin/hush_hack                           |    1 -
 defaultenv/bin/init                                |   23 +-
 defaultenv/bin/update                              |    5 +
 defaultenv/config                                  |   20 +-
 drivers/ata/intf_platform_ide.c                    |   14 +-
 drivers/base/driver.c                              |   11 +-
 drivers/mci/Kconfig                                |    2 +-
 drivers/mci/imx-esdhc.c                            |   15 +-
 drivers/mci/mci-core.c                             |    2 +-
 drivers/mfd/Kconfig                                |    8 +-
 drivers/mfd/Makefile                               |    3 +-
 drivers/mfd/mc13783.c                              |  237 -
 drivers/mfd/{mc13892.c =3D> mc13xxx.c}               |  159 +-
 drivers/mtd/core.c                                 |    2 +-
 drivers/net/fec_imx.c                              |   25 +-
 drivers/net/miidev.c                               |   22 +-
 drivers/net/netx_eth.c                             |    4 +-
 drivers/serial/arm_dcc.c                           |    2 +-
 drivers/serial/serial_imx.c                        |    2 +-
 drivers/serial/serial_netx.c                       |   11 +-
 drivers/usb/core/usb.c                             |    2 +-
 drivers/usb/gadget/u_serial.c                      |    2 +
 drivers/usb/host/ehci-hcd.c                        |   98 +-
 drivers/usb/host/ohci-at91.c                       |    2 +-
 drivers/video/s3c24xx.c                            |    1 -
 fs/Kconfig                                         |    1 +
 fs/devfs-core.c                                    |   19 +
 fs/fs.c                                            |   15 +-
 fs/tftp.c                                          |    2 +-
 include/aimage.h                                   |   74 +
 include/asm-generic/barebox.lds.h                  |    7 +-
 include/binfmt.h                                   |   39 +
 include/command.h                                  |    8 +
 include/complete.h                                 |   12 +
 include/driver.h                                   |    7 +-
 include/fec.h                                      |    1 +
 include/filetype.h                                 |    2 +
 include/menu.h                                     |    3 +
 include/mfd/mc13892.h                              |  121 -
 include/mfd/mc13xxx.h                              |  172 +
 include/miidev.h                                   |    5 +
 include/net.h                                      |    8 +-
 include/param.h                                    |    6 +-
 include/stringlist.h                               |    7 +-
 lib/glob.c                                         |   10 +-
 lib/parameter.c                                    |   20 +-
 lib/stringlist.c                                   |   32 +-
 net/dhcp.c                                         |   28 +-
 net/dns.c                                          |   17 +-
 net/eth.c                                          |   25 +-
 net/net.c                                          |   32 +-
 net/netconsole.c                                   |    8 +-
 net/tftp.c                                         |    3 +-
 scripts/Makefile                                   |    8 +
 scripts/gen_netx_image.c                           |   21 +-
 scripts/mkcompile_h                                |   96 +
 296 files changed, 14456 insertions(+), 5846 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/env/bin/menu_boot
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/Makefile
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/board.c
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/config.h
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/env/config
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/flash_header.c
 create mode 100644 arch/arm/boards/karo-tx51/Makefile
 create mode 100644 arch/arm/boards/karo-tx51/config.h
 create mode 100644 arch/arm/boards/karo-tx51/env/config
 create mode 100644 arch/arm/boards/karo-tx51/flash_header.c
 create mode 100644 arch/arm/boards/karo-tx51/tx51.c
 create mode 100644 arch/arm/boards/karo-tx51/tx51.dox
 create mode 100644 arch/arm/boards/pcm027/Makefile
 create mode 100644 arch/arm/boards/pcm027/board.c
 create mode 100644 arch/arm/boards/pcm027/config.h
 create mode 100644 arch/arm/boards/pcm027/env/config
 create mode 100644 arch/arm/boards/pcm027/lowlevel_init.S
 create mode 100644 arch/arm/boards/qil-a9260/Makefile
 create mode 100644 arch/arm/boards/qil-a9260/config.h
 create mode 100644 arch/arm/boards/qil-a9260/env/bin/init_board
 create mode 100644 arch/arm/boards/qil-a9260/env/config
 create mode 100644 arch/arm/boards/qil-a9260/init.c
 create mode 100644 arch/arm/configs/freescale-mx6-arm2_defconfig
 create mode 100644 arch/arm/configs/pcm027_defconfig
 create mode 100644 arch/arm/configs/qil_a9260_128mib_defconfig
 create mode 100644 arch/arm/configs/qil_a9260_defconfig
 create mode 100644 arch/arm/configs/tx51stk5_defconfig
 create mode 100644 arch/arm/mach-imx/imx6.c
 create mode 100644 arch/arm/mach-imx/include/mach/clock-imx6.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx6.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx6-anadig.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx6-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx6.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx6.h
 delete mode 100644 arch/arm/mach-imx/include/mach/pmic.h
 create mode 100644 arch/arm/mach-imx/speed-imx6.c
 create mode 100644 arch/arm/mach-mxs/include/mach/ocotp.h
 create mode 100644 arch/arm/mach-mxs/ocotp.c
 create mode 100644 arch/arm/mach-netx/include/mach/netx-devices.h
 rename arch/mips/boards/qemu-malta/{serial.c =3D> init.c} (76%)
 delete mode 100644 arch/ppc/lib/board_data.c
 rename arch/ppc/{lib =3D> mach-mpc5xxx}/time.c (71%)
 create mode 100644 common/binfmt.c
 delete mode 100644 common/dlmalloc.src
 delete mode 100644 defaultenv/bin/hush_hack
 delete mode 100644 drivers/mfd/mc13783.c
 rename drivers/mfd/{mc13892.c =3D> mc13xxx.c} (57%)
 create mode 100644 include/aimage.h
 create mode 100644 include/binfmt.h
 delete mode 100644 include/mfd/mc13892.h
 create mode 100644 include/mfd/mc13xxx.h
 create mode 100755 scripts/mkcompile_h

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
