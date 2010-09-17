Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwSro-0004Nj-Ds
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 04:48:10 +0000
Date: Fri, 17 Sep 2010 06:46:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100917044656.GG5762@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: PULL request fix and sh-prepare and Digest and login/password
	Frameworks
To: barebox@lists.infradead.org

Hi,

	I put here a part of the sh-prepare patch seres and other fixes
	and Digest and login/password Frameworks

	the depending patch of the vsprintf update will come later
	and the menu improvement too

Please pull
The following changes since commit af60e5883ea8a550fa5d7c2abbe40d55be438fce:

  vsprintf: fix wrong EXPORT_SYMBOL (2010-09-16 08:31:10 +0200)

are available in the git repository at:
  git://git.jcrosoft.org/barebox.git master

Jean-Christophe PLAGNIOL-VILLARD (24):
      move board.dox to Documentation and update it
      configs: use new savedefconfig format as in linux
      gitignore: update generated link and file
      move version.h to include/generated/ instead of include/linux
      move utsrelease.h to include/generated/ instead of include/linux
      arm: move mach-types.h to include/generated/
      move barebox_default_env.h to include/generated/
      i2c rename CONFIG_DRIVER_I2C_xx to CONFIG_I2C_xx
      types.h: move __kernel_dev_t to include/linux/types.h
      driver: allow register device with specific id
      device: fix dev_name
      amba-pl011: probe fail if we can't get the clock
      stm8815: fix the uart device clock match
      arm: move clkdev to drivers/clk
      init: introduce __BARE_INIT for .section ".text_bare_init.text"
      add digest framework
      add md5 support
      add sha1 support
      add sha256 support
      add password framework
      add passwd command
      add login support
      commands: partition.c fix file mod bits
      i2c: move busses to drivers/i2c/busses

 .gitignore                                         |    5 +-
 {board => Documentation}/board.dox                 |    2 +-
 Documentation/manual_org.dox                       |    4 +-
 Makefile                                           |   14 +-
 arch/arm/Kconfig                                   |    1 -
 arch/arm/Makefile                                  |    6 +-
 arch/arm/boards/a9m2410/a9m2410.c                  |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |    2 +-
 arch/arm/boards/at91sam9260ek/init.c               |    2 +-
 arch/arm/boards/at91sam9263ek/init.c               |    2 +-
 arch/arm/boards/edb93xx/edb93xx.c                  |    2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    6 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    2 +-
 arch/arm/boards/guf-neso/board.c                   |    2 +-
 arch/arm/boards/imx21ads/imx21ads.c                |    2 +-
 arch/arm/boards/imx27ads/imx27ads.c                |    2 +-
 arch/arm/boards/mmccpu/init.c                      |    2 +-
 arch/arm/boards/netx/netx.c                        |    2 +-
 arch/arm/boards/nhk8815/setup.c                    |    2 +-
 arch/arm/boards/omap/board-beagle.c                |    2 +-
 arch/arm/boards/pcm037/pcm037.c                    |    2 +-
 arch/arm/boards/pcm038/pcm038.c                    |    2 +-
 arch/arm/boards/pcm043/pcm043.c                    |    2 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |    2 +-
 arch/arm/boards/pm9263/init.c                      |    2 +-
 arch/arm/boards/scb9328/scb9328.c                  |    2 +-
 arch/arm/common/Kconfig                            |    2 -
 arch/arm/common/Makefile                           |    5 -
 arch/arm/configs/a9m2410_defconfig                 |  203 ----------
 arch/arm/configs/a9m2440_defconfig                 |  204 ----------
 arch/arm/configs/at91sam9260ek_defconfig           |  195 ----------
 arch/arm/configs/at91sam9263ek_defconfig           |  200 ----------
 arch/arm/configs/edb93xx_defconfig                 |  204 ----------
 arch/arm/configs/eukrea_cpuimx25_defconfig         |  210 -----------
 arch/arm/configs/eukrea_cpuimx27_defconfig         |  225 +-----------
 arch/arm/configs/eukrea_cpuimx35_defconfig         |  215 -----------
 arch/arm/configs/freescale_mx25_3stack_defconfig   |  210 -----------
 arch/arm/configs/freescale_mx35_3stack_defconfig   |  210 -----------
 arch/arm/configs/mmccpu_defconfig                  |  196 ----------
 arch/arm/configs/mx21ads_defconfig                 |  210 -----------
 arch/arm/configs/mx27ads_defconfig                 |  210 -----------
 arch/arm/configs/neso_defconfig                    |  211 -----------
 arch/arm/configs/netx_nxdb500_defconfig            |  194 ----------
 arch/arm/configs/nhk8815_defconfig                 |  191 ----------
 .../configs/omap3430_sdp3430_per_uart_defconfig    |  182 ---------
 arch/arm/configs/omap3530_beagle_defconfig         |  210 +----------
 .../arm/configs/omap3530_beagle_per_uart_defconfig |  183 ---------
 arch/arm/configs/omap3_evm_defconfig               |  186 ---------
 arch/arm/configs/pca100_defconfig                  |  211 -----------
 arch/arm/configs/pcm037_defconfig                  |  224 -----------
 arch/arm/configs/pcm038_defconfig                  |  218 -----------
 arch/arm/configs/pcm043_defconfig                  |  221 -----------
 arch/arm/configs/pm9263_defconfig                  |  199 ----------
 arch/arm/configs/scb9328_defconfig                 |  219 -----------
 arch/arm/cpu/cache-armv4.S                         |    3 +-
 arch/arm/cpu/cache-armv5.S                         |    3 +-
 arch/arm/cpu/cache-armv6.S                         |    3 +-
 arch/arm/cpu/cache-armv7.S                         |    3 +-
 arch/arm/include/asm/.gitignore                    |    1 -
 arch/arm/include/asm/clkdev.h                      |   15 +-
 arch/arm/include/asm/posix_types.h                 |    1 -
 arch/arm/mach-imx/Kconfig                          |    8 +-
 arch/arm/mach-nomadik/8815.c                       |    8 +-
 arch/arm/mach-nomadik/Kconfig                      |    2 +-
 arch/arm/mach-nomadik/clock.c                      |    7 +-
 arch/arm/tools/Makefile                            |    2 +-
 arch/arm/tools/gen-mach-types                      |    2 +-
 arch/blackfin/configs/ipe337_defconfig             |  157 --------
 arch/blackfin/include/asm/posix_types.h            |    1 -
 .../m68k/configs/phycore_kpukdr1_5475num_defconfig |  162 +--------
 arch/m68k/configs/phycore_mcf54xx_defconfig        |  162 +--------
 arch/m68k/include/asm/posix_types.h                |    1 -
 arch/ppc/configs/pcm030_defconfig                  |  173 ---------
 arch/ppc/include/asm/posix_types.h                 |    1 -
 arch/sandbox/configs/sandbox_defconfig             |  137 -------
 arch/sandbox/include/asm/posix_types.h             |    1 -
 arch/x86/configs/generic_defconfig                 |  155 --------
 arch/x86/include/asm/posix_types.h                 |    1 -
 commands/Kconfig                                   |   28 ++
 commands/Makefile                                  |    2 +
 commands/login.c                                   |   63 +++
 commands/passwd.c                                  |   98 +++++
 common/Kconfig                                     |   28 ++
 common/Makefile                                    |    8 +-
 common/command.c                                   |    2 +-
 common/digest.c                                    |   77 ++++
 common/password.c                                  |  286 ++++++++++++++
 common/startup.c                                   |    2 +-
 drivers/Kconfig                                    |    1 +
 drivers/Makefile                                   |    1 +
 drivers/clk/Kconfig                                |    4 +
 drivers/clk/Makefile                               |    2 +
 {arch/arm/common => drivers/clk}/clkdev.c          |   24 +-
 drivers/i2c/Kconfig                                |   18 +-
 drivers/i2c/Makefile                               |   15 +-
 drivers/i2c/busses/Kconfig                         |   15 +
 drivers/i2c/busses/Makefile                        |    2 +
 drivers/i2c/{ => busses}/i2c-imx.c                 |    0
 drivers/i2c/{ => busses}/i2c-omap.c                |    0
 drivers/serial/amba-pl011.c                        |    4 +
 include/.gitignore                                 |    1 -
 include/digest.h                                   |   49 +++
 include/driver.h                                   |   12 +-
 include/init.h                                     |    6 +
 include/linux/clkdev.h                             |   36 ++
 include/linux/types.h                              |    2 +
 include/password.h                                 |   41 ++
 lib/Kconfig                                        |   16 +
 lib/Makefile                                       |    3 +
 lib/driver.c                                       |   40 ++-
 lib/md5.c                                          |  317 ++++++++++++++++
 lib/sha1.c                                         |  396 ++++++++++++++++++++
 lib/sha256.c                                       |  319 ++++++++++++++++
 scripts/setupmbr/setupmbr.c                        |    2 +-
 117 files changed, 1934 insertions(+), 6425 deletions(-)
 rename {board => Documentation}/board.dox (98%)
 delete mode 100644 arch/arm/common/Kconfig
 delete mode 100644 arch/arm/common/Makefile
 delete mode 100644 arch/arm/include/asm/.gitignore
 create mode 100644 commands/login.c
 mode change 100755 => 100644 commands/partition.c
 create mode 100644 commands/passwd.c
 create mode 100644 common/digest.c
 create mode 100644 common/password.c
 create mode 100644 drivers/clk/Kconfig
 create mode 100644 drivers/clk/Makefile
 rename {arch/arm/common => drivers/clk}/clkdev.c (90%)
 create mode 100644 drivers/i2c/busses/Kconfig
 create mode 100644 drivers/i2c/busses/Makefile
 rename drivers/i2c/{ => busses}/i2c-imx.c (100%)
 rename drivers/i2c/{ => busses}/i2c-omap.c (100%)
 create mode 100644 include/digest.h
 create mode 100644 include/linux/clkdev.h
 create mode 100644 include/password.h
 create mode 100644 lib/md5.c
 create mode 100644 lib/sha1.c
 create mode 100644 lib/sha256.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
