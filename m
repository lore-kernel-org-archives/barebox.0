Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2Dx-0005NI-4a
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:22 +0000
Received: by mail-pl1-x644.google.com with SMTP id w14-v6so442982plp.6
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:19 -0700
Message-Id: <20180824025243.19479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 00/24] i.MX BBU improvements and bugfixes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series is the result simplification, bugfixing and adding
features to some of the code in BBU subsytem:

  - Patches 1 - 13 are a number of code simplifications intended to
    minimize amount of duplicated code as well as generic improvements
    (IMHO)

  - Patches 14 - 18 are i.MX8MQ and VF610 related changes

  - Patches 19 - 24 are a result of discovering that a number of error
    cases were silently ignored and not reported as update
    failures. Patch 22 is technically not related to BBU at all, but
    since I discovered the problem while working on this series, I
    kept it as a part of this series

This patchset was tested of following platforms:

  - i.MX51 ZII RDU1 (SPI-NOR and eMMC)
  - i.MX6Q ZII RDU2 (SPI-NOR and eMMC)
  - VF610 ZII Vybrid Dev Board Rev C. (SPI-NOR)
  - i.MX8MQ NXP EVK (eMMC)
  - i.MX8MQ ZII RDU3 (not supported by upstream Barebox)

Feedback is wellcome!

Changes since [v1]:

    - Added inner-image check for i.MX51 and other v1 users
      (i.MX27/imx_bbu_external_nor_register_handler() is now the only
      user of filetype_unknown)

    - Added pwrite_full() implementation converted corresponding patch
      to use pwrite_full()

    - Added != NULL in "bbu: Remove logical negation in
      barebox_update_handler_exists()" for better clarity

    - Fixed various spelling errors

[v1] http://lists.infradead.org/pipermail/barebox/2018-August/034286.html

Thanks,
Andrey Smirnov

Andrey Smirnov (24):
  ARM: i.MX: bbu: Remove unused define
  filetype: Add arch/ to include path
  filetype: Add code to detect i.MX image v1
  filetype: Add code to detect i.MX image v2
  ARM: i.MX: bbu: Move inner-image type check
  ARM: i.MX: bbu: Drop IMX_INTERNAL_FLAG_NAND
  ARM: i.MX: bbu: Consolidate various update helpers
  ARM: i.MX: bbu: Simplify imx53_bbu_internal_nand_register_handler()
  ARM: i.MX: bbu: Constify all 'devicefile' arguments
  ARM: i.MX: bbu: Detect which platforms need v2 i.MX header
  ARM: i.MX: bbu: Alias imx5*_bbu_internal_mmc_register_handler()
  ARM: i.MX: bbu: Alias imx5*_bbu_internal_spi_i2c_register_handler()
  ARM: i.MX: bbu: Move protect code into a separate routine
  ARM: i.MX: bbu: Adjust FLASH_HEADER_OFFSET_MMC for i.MX8MQ
  ARM: i.MX: bbu: Add support for SPI/I2C on VFxxx
  ARM: i.MX: zii-vf610-dev-rev-b/c: Add support for BBU on SPI-NOR
  ARM: i.MX: bbu: Add support for MMC on i.MX8MQ
  ARM: nxp-imx8mq-evk: Add eMMC BBU configuration
  libfile: Introduce pwrite_full()
  ARM: i.MX: bbu: Use pwrite_full() instead of pwrite()
  bbu: Remove logical negation in barebox_update_handler_exists()
  block: Do not ignore error in blk->ops->write()
  bbu: Report update failures explicitly
  bbu: command: Make sure specified update handler exists

 arch/arm/boards/nxp-imx8mq-evk/board.c |   3 +
 arch/arm/boards/zii-vf610-dev/board.c  |  19 ++
 arch/arm/dts/vf610-zii-dev-rev-b.dts   |  11 +
 arch/arm/mach-imx/imx-bbu-internal.c   | 344 ++++++++++++++-----------
 arch/arm/mach-imx/include/mach/bbu.h   |  60 +++--
 commands/barebox-update.c              |  15 +-
 common/Makefile                        |   1 +
 common/bbu.c                           |  14 +-
 common/block.c                         |  17 +-
 common/filetype.c                      |  11 +
 include/filetype.h                     |   2 +
 include/libfile.h                      |   1 +
 lib/libfile.c                          |  24 ++
 13 files changed, 337 insertions(+), 185 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
