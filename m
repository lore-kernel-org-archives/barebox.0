Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X06jd-0005VE-CE
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 10:16:55 +0000
Received: by mail-la0-f49.google.com with SMTP id gf5so1654519lab.8
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 03:16:30 -0700 (PDT)
Date: Thu, 26 Jun 2014 14:28:27 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140626142827.ade227cb4fa1909f4267a9c0@gmail.com>
In-Reply-To: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
References: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: New Documentation for barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 26 Jun 2014 10:51:31 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi all,
> =

> I am happy to announce new documentation for barebox.

Aghhhh!

All my mips documentation have gone away!

I'm ready to convert old dox-files to new rst-files by myself,
but I need some recomendations.

Could I put rst mips files into Documentation/boards/mips?

> The following series removes the in-tree documentation and replaces
> it with completely rewritten sphinxs based documentation. As of now
> we have a more or less complete user manual. There surely is room
> for improvements but we think that it is good enough already and
> surely better than what we have now.
> =

> The documentation is written with Sphinx. Sphinx is
> the Python Documentation Generator, see http://sphinx-doc.org/.
> The files are written in reStructuredText, a format which is
> sufficiently easy to write and nice to read even in sourcecode
> format.
> =

> Thank you Jan, Lukas and Jochen for help writing documentation and
> fixing typos.
> =

> `make docs` will generate static html files. The plan is to replace
> the existing Wiki Documentation with these files. Florian is currently
> writing template files to make the pages look nice and not-so-standard.
> =

> Comments and reviews are very welcome.
> =

> Sascha
> =

> The following changes since commit bbc70303c7166dbe8e72ea12fdc486c28a60c3=
02:
> =

>   kernel-install: fix return value check for getline (2014-06-26 09:44:47=
 +0200)
> =

> are available in the git repository at:
> =

>   git://git.pengutronix.de/git/barebox.git doc
> =

> for you to fetch changes up to f77fa0cc6de9c9a26e492016e67b0fdfc2039f91:
> =

>   Documentation: Add new sphinxs docs (2014-06-26 10:12:32 +0200)
> =

> ----------------------------------------------------------------
> Jan Luebbe (2):
>       ubiformat: avoid macros in help text
>       automount: fix description typo
> =

> Sascha Hauer (5):
>       commands: addpart: Improve description
>       Documentation: remove doxygen documentation
>       Documentation: remove remaining documentation
>       Documentation: remove devicetree docs
>       Documentation: Add new sphinxs docs
> =

>  Documentation/.gitignore                           |    1 +
>  Documentation/barebox-main.dox                     |  126 --
>  Documentation/board.dox                            |   94 --
>  Documentation/boards.dox                           |   74 --
>  Documentation/boards.rst                           |   10 +
>  Documentation/boards/cirrus-logic.rst              |    9 +
>  .../boards/edb9xxx/cirrus_logic_edb9301.rst        |   10 +
>  .../boards/edb9xxx/cirrus_logic_edb9302.rst        |   10 +
>  .../boards/edb9xxx/cirrus_logic_edb9302a.rst       |   10 +
>  .../boards/edb9xxx/cirrus_logic_edb9307.rst        |   13 +
>  .../boards/edb9xxx/cirrus_logic_edb9307a.rst       |   13 +
>  .../boards/edb9xxx/cirrus_logic_edb9312.rst        |   13 +
>  .../boards/edb9xxx/cirrus_logic_edb9315.rst        |   13 +
>  .../boards/edb9xxx/cirrus_logic_edb9315a.rst       |   12 +
>  Documentation/boards/imx.rst                       |  103 ++
>  Documentation/boards/imx/Garz-Fricke-Cupid.rst     |    9 +
>  Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst |   38 +
>  Documentation/boards/imx/eukrea_cpuimx27.rst       |   11 +
>  Documentation/boards/imx/synertronixx_scb9328.rst  |   12 +
>  Documentation/boards/mxs/Chumby-Falconwing.rst     |   46 +
>  Documentation/boards/mxs/Freescale-i.MX23-evk.rst  |   28 +
>  Documentation/boards/mxs/KaRo-TX28.rst             |   48 +
>  Documentation/boards/omap.rst                      |   40 +
>  Documentation/boards/s3c/Digi-a9m2440.rst          |   67 +
>  Documentation/boards/samsung.rst                   |    9 +
>  Documentation/boards/sandbox.rst                   |   67 +
>  Documentation/boards/tegra.rst                     |  102 ++
>  Documentation/boards/x86.rst                       |  128 ++
>  Documentation/building.dox                         |   60 -
>  Documentation/commands.dox                         |  111 --
>  Documentation/commands.rst                         |    9 +
>  Documentation/conf.py                              |  262 ++++
>  Documentation/console.txt                          |   13 -
>  Documentation/developers_manual.dox                |   24 -
>  Documentation/devices_drivers.txt                  |   72 --
>  Documentation/devicetree/bindings/barebox.txt      |   10 -
>  .../bindings/barebox/barebox,environment.txt       |   25 -
>  .../bindings/leds/{common.txt =3D> common.rst}       |    3 +-
>  .../misc/{fsl,imx-iim.txt =3D> fsl,imx-iim.rst}      |   13 +-
>  .../misc/{fsl,imx-ocotp.txt =3D> fsl,imx-ocotp.rst}  |   13 +-
>  Documentation/devicetree/index.rst                 |   13 +
>  Documentation/download.rst                         |   16 +
>  Documentation/filesystems.rst                      |   10 +
>  Documentation/filesystems/fat.rst                  |   15 +
>  Documentation/filesystems/nfs.rst                  |   12 +
>  Documentation/filesystems/ramfs.rst                |   10 +
>  Documentation/filesystems/tftp.rst                 |   16 +
>  Documentation/first_steps.dox                      |   61 -
>  Documentation/gen_commands.py                      |  164 +++
>  Documentation/glossary.rst                         |   18 +
>  Documentation/index.rst                            |   26 +
>  Documentation/manual_org.dox                       |   27 -
>  Documentation/omap4_usb_booting.txt                |   27 -
>  Documentation/porting.txt                          |  115 --
>  Documentation/timekeeping.txt                      |   13 -
>  Documentation/user/automount.rst                   |   34 +
>  Documentation/user/barebox.rst                     |  178 +++
>  Documentation/user/booting-linux.rst               |  267 ++++
>  Documentation/user/defaultenv-2.rst                |  113 ++
>  Documentation/user/devicetree.rst                  |   84 ++
>  Documentation/user/driver-model.rst                |   91 ++
>  Documentation/user/framebuffer.rst                 |   43 +
>  Documentation/user/hush.rst                        |   52 +
>  Documentation/user/introduction.rst                |   27 +
>  Documentation/user/memory-areas.rst                |   27 +
>  Documentation/user/multi-image.rst                 |   54 +
>  Documentation/user/networking.rst                  |   81 ++
>  Documentation/user/pbl.rst                         |   31 +
>  Documentation/user/system-setup.rst                |   64 +
>  Documentation/user/ubi.rst                         |  138 +++
>  Documentation/user/updating.rst                    |   29 +
>  Documentation/user/usb.rst                         |   65 +
>  Documentation/user/user-manual.rst                 |   33 +
>  Documentation/user/variables.rst                   |   49 +
>  Documentation/users_manual.dox                     |   18 -
>  Doxyfile                                           | 1310 --------------=
------
>  Makefile                                           |   21 +-
>  arch/architecture.dox                              |  175 ---
>  arch/arm/boards/a9m2410/a9m2410.c                  |   68 -
>  arch/arm/boards/a9m2440/a9m2440.c                  |   79 --
>  arch/arm/boards/beagle/board.c                     |   31 -
>  arch/arm/boards/ccxmx51/ccxmx51.dox                |    7 -
>  arch/arm/boards/chumby_falconwing/falconwing.c     |  138 ---
>  arch/arm/boards/edb93xx/edb93xx.dox                |  108 --
>  .../arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.dox |   11 -
>  .../arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.dox |    4 -
>  .../arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.dox |    4 -
>  arch/arm/boards/freescale-mx21-ads/imx21ads.dox    |    5 -
>  arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |   32 -
>  arch/arm/boards/freescale-mx27-ads/imx27ads.dox    |    5 -
>  arch/arm/boards/freescale-mx35-3ds/3stack.dox      |    4 -
>  .../arm/boards/freescale-mx51-babbage/mx51-pdk.dox |    4 -
>  arch/arm/boards/freescale-mx53-qsb/mx53-pdk.dox    |    4 -
>  arch/arm/boards/freescale-mx53-smd/mx53-smd.dox    |    4 -
>  arch/arm/boards/friendlyarm-mini2440/mini2440.c    |  159 ---
>  arch/arm/boards/guf-cupid/cupid.dox                |    9 -
>  arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |   59 -
>  arch/arm/boards/karo-tx28/tx28.c                   |   52 -
>  arch/arm/boards/karo-tx51/tx51.dox                 |   50 -
>  arch/arm/boards/module-mb7707/module-mb7707.dox    |   29 -
>  arch/arm/boards/mx31moboard/mx31moboard.dox        |   10 -
>  arch/arm/boards/netx/netx.dox                      |    9 -
>  arch/arm/boards/omap343xdsp/board.c                |   26 -
>  arch/arm/boards/phytec-phycard-imx27/pca100.dox    |    8 -
>  arch/arm/boards/phytec-phycard-omap3/pca-a-l1.dox  |   16 -
>  arch/arm/boards/phytec-phycore-imx27/pcm038.dox    |    9 -
>  arch/arm/boards/phytec-phycore-imx31/pcm037.dox    |   11 -
>  arch/arm/boards/phytec-phycore-imx35/pcm043.dox    |   28 -
>  arch/arm/boards/qil-a926x/qil-a9260.dox            |   22 -
>  arch/arm/boards/scb9328/scb9328.dox                |    9 -
>  arch/arm/boards/tny-a926x/tny-a9263.dox            |   33 -
>  arch/arm/boards/tny-a926x/tny-a9g20-lpw.dox        |   37 -
>  arch/arm/boards/toshiba-ac100/toshiba-ac100.dox    |   37 -
>  arch/arm/boards/usb-a926x/usb-a9263.dox            |   30 -
>  arch/arm/boards/usb-a926x/usb-a9g20-lpw.dox        |   33 -
>  arch/arm/boards/virt2real/virt2real.dox            |   41 -
>  arch/arm/mach-arm.dox                              |   67 -
>  arch/arm/mach-davinci/mach-davinci.dox             |    7 -
>  arch/arm/mach-omap/arch-omap.dox                   |   96 --
>  arch/arm/mach-samsung/lowlevel-s3c24x0.S           |    8 -
>  arch/arm/mach-samsung/mem-s3c24x0.c                |   57 -
>  arch/blackfin/boards/ipe337/ipe337.dox             |   10 -
>  arch/blackfin/mach-bf.dox                          |    9 -
>  arch/mips/boards/dlink-dir-320/dlink-dir-320.dox   |   38 -
>  arch/mips/boards/loongson-ls1b/loongson_ls1b.dox   |   47 -
>  arch/mips/boards/qemu-malta/qemu-malta.dox         |   20 -
>  arch/mips/boards/ritmix-rzx50/ritmix-rzx50.dox     |   46 -
>  arch/mips/boards/tplink-mr3020/tplink-mr3020.dox   |   64 -
>  arch/mips/mach-bcm47xx/mach-bcm47xx.dox            |    7 -
>  arch/mips/mach-loongson/mach-loongson.dox          |    7 -
>  arch/mips/mach-malta/mach-malta.dox                |    7 -
>  arch/mips/mach-mips.dox                            |   69 --
>  arch/mips/mach-xburst/mach-xburst.dox              |    7 -
>  arch/ppc/boards/pcm030/pcm030.dox                  |    8 -
>  arch/ppc/mach-ppc.dox                              |    9 -
>  arch/sandbox/os/common.c                           |   55 -
>  arch/x86/boards/x86_generic/generic_pc.c           |   34 -
>  arch/x86/boot/bioscall.S                           |    4 -
>  arch/x86/lib/bios_disk.S                           |    3 -
>  arch/x86/lib/linux_start.S                         |    3 -
>  arch/x86/mach-x86.dox                              |  128 --
>  commands/automount.c                               |    2 +-
>  commands/bootm.c                                   |   17 -
>  commands/cp.c                                      |   14 -
>  commands/devinfo.c                                 |   28 -
>  commands/dfu.c                                     |   10 -
>  commands/echo.c                                    |    8 -
>  commands/edit.c                                    |   16 -
>  commands/flash.c                                   |   52 -
>  commands/gpio.c                                    |   62 -
>  commands/led.c                                     |    9 -
>  commands/linux16.c                                 |   66 -
>  commands/loadenv.c                                 |    9 -
>  commands/miitool.c                                 |    6 -
>  commands/mount.c                                   |   36 -
>  commands/partition.c                               |   40 +-
>  commands/printenv.c                                |   14 -
>  commands/saveenv.c                                 |   18 -
>  commands/setenv.c                                  |   13 -
>  commands/splash.c                                  |   11 -
>  commands/ubiformat.c                               |   10 +-
>  commands/usbserial.c                               |    4 -
>  common/kallsyms.c                                  |    4 -
>  include/command.h                                  |    4 -
>  include/driver.h                                   |   26 -
>  include/i2c/i2c.h                                  |    4 -
>  include/linux/mtd/mtd-abi.h                        |    4 -
>  include/linux/mtd/mtd.h                            |    4 -
>  include/spi/spi.h                                  |    4 -
>  include/usb/ch9.h                                  |    4 -
>  include/usb/composite.h                            |    4 -
>  include/usb/gadget.h                               |    4 -
>  include/usb/usb.h                                  |    4 -
>  net/netconsole.c                                   |   28 -
>  scripts/doxy_filter.awk                            |  103 --
>  175 files changed, 2893 insertions(+), 5042 deletions(-)
>  delete mode 100644 Documentation/barebox-main.dox
>  delete mode 100644 Documentation/board.dox
>  delete mode 100644 Documentation/boards.dox
>  create mode 100644 Documentation/boards.rst
>  create mode 100644 Documentation/boards/cirrus-logic.rst
>  create mode 100644 Documentation/boards/edb9xxx/cirrus_logic_edb9301.rst
>  create mode 100644 Documentation/boards/edb9xxx/cirrus_logic_edb9302.rst
>  create mode 100644 Documentation/boards/edb9xxx/cirrus_logic_edb9302a.rst
>  create mode 100644 Documentation/boards/edb9xxx/cirrus_logic_edb9307.rst
>  create mode 100644 Documentation/boards/edb9xxx/cirrus_logic_edb9307a.rst
>  create mode 100644 Documentation/boards/edb9xxx/cirrus_logic_edb9312.rst
>  create mode 100644 Documentation/boards/edb9xxx/cirrus_logic_edb9315.rst
>  create mode 100644 Documentation/boards/edb9xxx/cirrus_logic_edb9315a.rst
>  create mode 100644 Documentation/boards/imx.rst
>  create mode 100644 Documentation/boards/imx/Garz-Fricke-Cupid.rst
>  create mode 100644 Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst
>  create mode 100644 Documentation/boards/imx/eukrea_cpuimx27.rst
>  create mode 100644 Documentation/boards/imx/synertronixx_scb9328.rst
>  create mode 100644 Documentation/boards/mxs/Chumby-Falconwing.rst
>  create mode 100644 Documentation/boards/mxs/Freescale-i.MX23-evk.rst
>  create mode 100644 Documentation/boards/mxs/KaRo-TX28.rst
>  create mode 100644 Documentation/boards/omap.rst
>  create mode 100644 Documentation/boards/s3c/Digi-a9m2440.rst
>  create mode 100644 Documentation/boards/samsung.rst
>  create mode 100644 Documentation/boards/sandbox.rst
>  create mode 100644 Documentation/boards/tegra.rst
>  create mode 100644 Documentation/boards/x86.rst
>  delete mode 100644 Documentation/building.dox
>  delete mode 100644 Documentation/commands.dox
>  create mode 100644 Documentation/commands.rst
>  create mode 100644 Documentation/conf.py
>  delete mode 100644 Documentation/console.txt
>  delete mode 100644 Documentation/developers_manual.dox
>  delete mode 100644 Documentation/devices_drivers.txt
>  delete mode 100644 Documentation/devicetree/bindings/barebox.txt
>  delete mode 100644 Documentation/devicetree/bindings/barebox/barebox,env=
ironment.txt
>  rename Documentation/devicetree/bindings/leds/{common.txt =3D> common.rs=
t} (86%)
>  rename Documentation/devicetree/bindings/misc/{fsl,imx-iim.txt =3D> fsl,=
imx-iim.rst} (62%)
>  rename Documentation/devicetree/bindings/misc/{fsl,imx-ocotp.txt =3D> fs=
l,imx-ocotp.rst} (64%)
>  create mode 100644 Documentation/devicetree/index.rst
>  create mode 100644 Documentation/download.rst
>  create mode 100644 Documentation/filesystems.rst
>  create mode 100644 Documentation/filesystems/fat.rst
>  create mode 100644 Documentation/filesystems/nfs.rst
>  create mode 100644 Documentation/filesystems/ramfs.rst
>  create mode 100644 Documentation/filesystems/tftp.rst
>  delete mode 100644 Documentation/first_steps.dox
>  create mode 100755 Documentation/gen_commands.py
>  create mode 100644 Documentation/glossary.rst
>  create mode 100644 Documentation/index.rst
>  delete mode 100644 Documentation/manual_org.dox
>  delete mode 100644 Documentation/omap4_usb_booting.txt
>  delete mode 100644 Documentation/porting.txt
>  delete mode 100644 Documentation/timekeeping.txt
>  create mode 100644 Documentation/user/automount.rst
>  create mode 100644 Documentation/user/barebox.rst
>  create mode 100644 Documentation/user/booting-linux.rst
>  create mode 100644 Documentation/user/defaultenv-2.rst
>  create mode 100644 Documentation/user/devicetree.rst
>  create mode 100644 Documentation/user/driver-model.rst
>  create mode 100644 Documentation/user/framebuffer.rst
>  create mode 100644 Documentation/user/hush.rst
>  create mode 100644 Documentation/user/introduction.rst
>  create mode 100644 Documentation/user/memory-areas.rst
>  create mode 100644 Documentation/user/multi-image.rst
>  create mode 100644 Documentation/user/networking.rst
>  create mode 100644 Documentation/user/pbl.rst
>  create mode 100644 Documentation/user/system-setup.rst
>  create mode 100644 Documentation/user/ubi.rst
>  create mode 100644 Documentation/user/updating.rst
>  create mode 100644 Documentation/user/usb.rst
>  create mode 100644 Documentation/user/user-manual.rst
>  create mode 100644 Documentation/user/variables.rst
>  delete mode 100644 Documentation/users_manual.dox
>  delete mode 100644 Doxyfile
>  delete mode 100644 arch/architecture.dox
>  delete mode 100644 arch/arm/boards/ccxmx51/ccxmx51.dox
>  delete mode 100644 arch/arm/boards/edb93xx/edb93xx.dox
>  delete mode 100644 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.dox
>  delete mode 100644 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.dox
>  delete mode 100644 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.dox
>  delete mode 100644 arch/arm/boards/freescale-mx21-ads/imx21ads.dox
>  delete mode 100644 arch/arm/boards/freescale-mx27-ads/imx27ads.dox
>  delete mode 100644 arch/arm/boards/freescale-mx35-3ds/3stack.dox
>  delete mode 100644 arch/arm/boards/freescale-mx51-babbage/mx51-pdk.dox
>  delete mode 100644 arch/arm/boards/freescale-mx53-qsb/mx53-pdk.dox
>  delete mode 100644 arch/arm/boards/freescale-mx53-smd/mx53-smd.dox
>  delete mode 100644 arch/arm/boards/guf-cupid/cupid.dox
>  delete mode 100644 arch/arm/boards/karo-tx51/tx51.dox
>  delete mode 100644 arch/arm/boards/module-mb7707/module-mb7707.dox
>  delete mode 100644 arch/arm/boards/mx31moboard/mx31moboard.dox
>  delete mode 100644 arch/arm/boards/netx/netx.dox
>  delete mode 100644 arch/arm/boards/phytec-phycard-imx27/pca100.dox
>  delete mode 100644 arch/arm/boards/phytec-phycard-omap3/pca-a-l1.dox
>  delete mode 100644 arch/arm/boards/phytec-phycore-imx27/pcm038.dox
>  delete mode 100644 arch/arm/boards/phytec-phycore-imx31/pcm037.dox
>  delete mode 100644 arch/arm/boards/phytec-phycore-imx35/pcm043.dox
>  delete mode 100644 arch/arm/boards/qil-a926x/qil-a9260.dox
>  delete mode 100644 arch/arm/boards/scb9328/scb9328.dox
>  delete mode 100644 arch/arm/boards/tny-a926x/tny-a9263.dox
>  delete mode 100644 arch/arm/boards/tny-a926x/tny-a9g20-lpw.dox
>  delete mode 100644 arch/arm/boards/toshiba-ac100/toshiba-ac100.dox
>  delete mode 100644 arch/arm/boards/usb-a926x/usb-a9263.dox
>  delete mode 100644 arch/arm/boards/usb-a926x/usb-a9g20-lpw.dox
>  delete mode 100644 arch/arm/boards/virt2real/virt2real.dox
>  delete mode 100644 arch/arm/mach-arm.dox
>  delete mode 100644 arch/arm/mach-davinci/mach-davinci.dox
>  delete mode 100644 arch/arm/mach-omap/arch-omap.dox
>  delete mode 100644 arch/blackfin/boards/ipe337/ipe337.dox
>  delete mode 100644 arch/blackfin/mach-bf.dox
>  delete mode 100644 arch/mips/boards/dlink-dir-320/dlink-dir-320.dox
>  delete mode 100644 arch/mips/boards/loongson-ls1b/loongson_ls1b.dox
>  delete mode 100644 arch/mips/boards/qemu-malta/qemu-malta.dox
>  delete mode 100644 arch/mips/boards/ritmix-rzx50/ritmix-rzx50.dox
>  delete mode 100644 arch/mips/boards/tplink-mr3020/tplink-mr3020.dox
>  delete mode 100644 arch/mips/mach-bcm47xx/mach-bcm47xx.dox
>  delete mode 100644 arch/mips/mach-loongson/mach-loongson.dox
>  delete mode 100644 arch/mips/mach-malta/mach-malta.dox
>  delete mode 100644 arch/mips/mach-mips.dox
>  delete mode 100644 arch/mips/mach-xburst/mach-xburst.dox
>  delete mode 100644 arch/ppc/boards/pcm030/pcm030.dox
>  delete mode 100644 arch/ppc/mach-ppc.dox
>  delete mode 100644 arch/x86/mach-x86.dox
>  delete mode 100644 scripts/doxy_filter.awk
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
