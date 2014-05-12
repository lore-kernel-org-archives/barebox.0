Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjkJ7-0003xU-Mq
 for barebox@lists.infradead.org; Mon, 12 May 2014 07:05:55 +0000
Received: from tellur.localdomain (p4FE65757.dip0.t-ipconnect.de
 [79.230.87.87]) by lynxeye.de (Postfix) with ESMTPA id 4DDE918B4246
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 09:04:54 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 12 May 2014 09:07:41 +0200
Message-Id: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/25] Tegra-next
To: barebox@lists.infradead.org

Ok, here we go: this is a truckload of fixes and new
features for the Tegra arch. One big patch series this time
as it took me some time to validate everything.

Patches 1-6 introduce a proper reset controller and remove
the old hacks used to reset the devices. This is needed for
the follow on patches as the Tegra i2c driver needs closer
control over device reset.

Patches 7-10 add the Tegra i2c driver and the necessary clocks.

Patch 11 uses the new i2c support to active the SDMMC1 voltage
rail on Beaver.

Patches 12-15 are fixes to the Tegra MCI and pinctrl to make
SD cards work on Tegra 3, not only eMMC as before.

Patches 17-25 import the Tegra cbootimage tool, add
infrastructure to build persistable images and convert
existing boards over to use it.

All in all this now allows to build flashable images. I
verified that things are working by loading an image from
SD card on Beaver and writing it to the boot partition on eMMC.

After reset of the board I'm now greeted by barebox instead
of U-Boot. :)

Lucas Stach (25):
  reset: add reset controller framework
  tegra: lowlevel: add function to fetch chipid
  reset: add tegra reset controller
  clk: tegra: reset UARTS from clock controller
  mci: tegra: add reset control
  clk: tegra: remove device reset hack
  clk: tegra: allow to register clocks with 16 bit divider
  clk: tegra30: register i2c clocks
  clk: tegra20: register i2c clocks
  i2c: add Tegra driver
  ARM: tegra: beaver: activate sdmmc1 voltage rail
  ARM: tegra: beaver: adjust pinmux to make sdmmc1 work
  mci: tegra: apply pad autocalibration on T30
  mci: tegra: don't set 8bit mode unconditionally
  pinctrl: tegra30: parse drive groups
  scripts: tegra: import cbootimage
  tegra: cbootimage: remove noisy output
  Makefile.lib: add rule to built Tegra BCTs
  images: add Tegra20 image build rules
  images: add Tegra30 image build rules
  ARM: boards: colibri t20: import BCT cfgs
  images: tegra: build all Toradex Colibri images
  ARM: boards: beaver: import BCT cfg
  images: tegra: build NVidia Beaver image
  images: tegra: rename ac100 image

 .gitignore                                         |    1 +
 arch/arm/Kconfig                                   |    1 +
 arch/arm/boards/nvidia-beaver/Makefile             |    3 +
 .../boards/nvidia-beaver/beaver-2gb-emmc.bct.cfg   |  819 +++++++++++++++
 arch/arm/boards/nvidia-beaver/board.c              |   38 +
 arch/arm/boards/toradex-colibri-t20/Makefile       |    4 +
 .../colibri-t20_256_hsmmc.bct.cfg                  |  451 ++++++++
 .../colibri-t20_256_v11_nand.bct.cfg               |  459 ++++++++
 .../colibri-t20_256_v12_nand.bct.cfg               |  459 ++++++++
 .../colibri-t20_512_hsmmc.bct.cfg                  |  451 ++++++++
 .../colibri-t20_512_v11_nand.bct.cfg               |  459 ++++++++
 .../colibri-t20_512_v12_nand.bct.cfg               |  459 ++++++++
 arch/arm/boards/toradex-colibri-t20/entry.c        |   42 +-
 arch/arm/dts/tegra30-beaver.dts                    |   10 +
 arch/arm/mach-tegra/include/mach/lowlevel.h        |    6 +
 arch/arm/mach-tegra/include/mach/tegra30-car.h     |    2 +
 drivers/Kconfig                                    |    1 +
 drivers/Makefile                                   |    1 +
 drivers/clk/tegra/clk-periph.c                     |   46 +-
 drivers/clk/tegra/clk-tegra20.c                    |   16 +
 drivers/clk/tegra/clk-tegra30.c                    |   19 +
 drivers/clk/tegra/clk.c                            |  145 ++-
 drivers/clk/tegra/clk.h                            |   18 +
 drivers/i2c/busses/Kconfig                         |    4 +
 drivers/i2c/busses/Makefile                        |    1 +
 drivers/i2c/busses/i2c-tegra.c                     |  708 +++++++++++++
 drivers/mci/tegra-sdmmc.c                          |   37 +-
 drivers/pinctrl/pinctrl-tegra30.c                  |  159 ++-
 drivers/reset/Kconfig                              |   13 +
 drivers/reset/Makefile                             |    1 +
 drivers/reset/core.c                               |  236 +++++
 images/.gitignore                                  |    4 +
 images/Makefile                                    |    3 +-
 images/Makefile.tegra                              |   70 +-
 include/linux/reset-controller.h                   |   50 +
 include/linux/reset.h                              |   67 ++
 scripts/Makefile                                   |    1 +
 scripts/Makefile.lib                               |    6 +
 scripts/tegra/Makefile                             |   22 +
 scripts/tegra/aes_ref.c                            |  326 ++++++
 scripts/tegra/bct_dump.c                           |  296 ++++++
 scripts/tegra/cbootimage.c                         |  242 +++++
 scripts/tegra/cbootimage.h                         |  108 ++
 scripts/tegra/context.c                            |   42 +
 scripts/tegra/context.h                            |   28 +
 scripts/tegra/crypto.c                             |  299 ++++++
 scripts/tegra/crypto.h                             |   47 +
 scripts/tegra/data_layout.c                        |  898 ++++++++++++++++
 scripts/tegra/data_layout.h                        |   55 +
 scripts/tegra/nvaes_ref.h                          |   35 +
 scripts/tegra/parse.c                              |  803 ++++++++++++++
 scripts/tegra/parse.h                              |  923 ++++++++++++++++
 scripts/tegra/set.c                                |  206 ++++
 scripts/tegra/set.h                                |   49 +
 scripts/tegra/t114/nvbctlib_t114.c                 | 1103 +++++++++++++++++++
 scripts/tegra/t114/nvboot_bct_t114.h               |  363 +++++++
 scripts/tegra/t114/nvboot_sdram_param_t114.h       |  806 ++++++++++++++
 scripts/tegra/t114/parse_t114.c                    |  430 ++++++++
 scripts/tegra/t124/nvbctlib_t124.c                 | 1104 ++++++++++++++++++++
 scripts/tegra/t124/nvboot_bct_t124.h               |  359 +++++++
 scripts/tegra/t124/nvboot_sdram_param_t124.h       |  803 ++++++++++++++
 scripts/tegra/t124/parse_t124.c                    |  429 ++++++++
 scripts/tegra/t20/nvbctlib_t20.c                   |  684 ++++++++++++
 scripts/tegra/t20/nvboot_bct_t20.h                 |  316 ++++++
 scripts/tegra/t20/nvboot_sdram_param_t20.h         |  363 +++++++
 scripts/tegra/t20/parse_t20.c                      |  251 +++++
 scripts/tegra/t30/nvbctlib_t30.c                   |  891 ++++++++++++++++
 scripts/tegra/t30/nvboot_bct_t30.h                 |  379 +++++++
 scripts/tegra/t30/nvboot_sdram_param_t30.h         |  568 ++++++++++
 scripts/tegra/t30/parse_t30.c                      |  360 +++++++
 70 files changed, 18820 insertions(+), 38 deletions(-)
 create mode 100644 arch/arm/boards/nvidia-beaver/beaver-2gb-emmc.bct.cfg
 create mode 100644 arch/arm/boards/nvidia-beaver/board.c
 create mode 100644 arch/arm/boards/toradex-colibri-t20/colibri-t20_256_hsmmc.bct.cfg
 create mode 100644 arch/arm/boards/toradex-colibri-t20/colibri-t20_256_v11_nand.bct.cfg
 create mode 100644 arch/arm/boards/toradex-colibri-t20/colibri-t20_256_v12_nand.bct.cfg
 create mode 100644 arch/arm/boards/toradex-colibri-t20/colibri-t20_512_hsmmc.bct.cfg
 create mode 100644 arch/arm/boards/toradex-colibri-t20/colibri-t20_512_v11_nand.bct.cfg
 create mode 100644 arch/arm/boards/toradex-colibri-t20/colibri-t20_512_v12_nand.bct.cfg
 create mode 100644 drivers/i2c/busses/i2c-tegra.c
 create mode 100644 drivers/reset/Kconfig
 create mode 100644 drivers/reset/Makefile
 create mode 100644 drivers/reset/core.c
 create mode 100644 include/linux/reset-controller.h
 create mode 100644 include/linux/reset.h
 create mode 100644 scripts/tegra/Makefile
 create mode 100644 scripts/tegra/aes_ref.c
 create mode 100644 scripts/tegra/bct_dump.c
 create mode 100644 scripts/tegra/cbootimage.c
 create mode 100644 scripts/tegra/cbootimage.h
 create mode 100644 scripts/tegra/context.c
 create mode 100644 scripts/tegra/context.h
 create mode 100644 scripts/tegra/crypto.c
 create mode 100644 scripts/tegra/crypto.h
 create mode 100644 scripts/tegra/data_layout.c
 create mode 100644 scripts/tegra/data_layout.h
 create mode 100644 scripts/tegra/nvaes_ref.h
 create mode 100644 scripts/tegra/parse.c
 create mode 100644 scripts/tegra/parse.h
 create mode 100644 scripts/tegra/set.c
 create mode 100644 scripts/tegra/set.h
 create mode 100644 scripts/tegra/t114/nvbctlib_t114.c
 create mode 100644 scripts/tegra/t114/nvboot_bct_t114.h
 create mode 100644 scripts/tegra/t114/nvboot_sdram_param_t114.h
 create mode 100644 scripts/tegra/t114/parse_t114.c
 create mode 100644 scripts/tegra/t124/nvbctlib_t124.c
 create mode 100644 scripts/tegra/t124/nvboot_bct_t124.h
 create mode 100644 scripts/tegra/t124/nvboot_sdram_param_t124.h
 create mode 100644 scripts/tegra/t124/parse_t124.c
 create mode 100644 scripts/tegra/t20/nvbctlib_t20.c
 create mode 100644 scripts/tegra/t20/nvboot_bct_t20.h
 create mode 100644 scripts/tegra/t20/nvboot_sdram_param_t20.h
 create mode 100644 scripts/tegra/t20/parse_t20.c
 create mode 100644 scripts/tegra/t30/nvbctlib_t30.c
 create mode 100644 scripts/tegra/t30/nvboot_bct_t30.h
 create mode 100644 scripts/tegra/t30/nvboot_sdram_param_t30.h
 create mode 100644 scripts/tegra/t30/parse_t30.c

-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
