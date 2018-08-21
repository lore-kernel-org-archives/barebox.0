Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22a.google.com ([2607:f8b0:400e:c01::22a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs07f-000053-4R
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:26:36 +0000
Received: by mail-pl0-x22a.google.com with SMTP id c6-v6so3448994pls.4
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:26:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 20 Aug 2018 23:25:41 -0700
Message-Id: <20180821062603.17393-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/22] i.MX BBU improvements and bugfixes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series is the result simplification, bugfixing and adding
features to some of the code in BBU subsytem:

  - Patch 2 "filetype: Add code to detect i.MX image v1" is not really
    used anywhere in the series and is provided for the sake of
    completness. It should probably dropeed but I thought I'd include
    it just in case

  - Patches 1, 3 - 12 are a number of code simplifications intended to
    minimize amount of duplicated code as well as generic improvements
    (IMHO)

  - Patches 13 - 17 are i.MX8MQ and VF610 related changes

  - Patches 18 - 22 are a result of discovering that a number of error
    cases were silently ignored and not reported as update
    failures. Patch 20 is technically not related to BBU at all, but
    since I discovered the problem while working on this series, I
    kept it as a part of this series

This patchset was tested of following platforms:

  - i.MX51 ZII RDU1 (SPI-NOR and eMMC)
  - i.MX6Q ZII RDU2 (SPI-NOR and eMMC)
  - VF610 ZII Vybrid Dev Board Rev C. (SPI-NOR)
  - i.MX8MQ NXP EVK (eMMC)
  - i.MX8MQ ZII RDU3 (not supported by upstream Barebox)

Feedback is wellcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (22):
  ARM: i.MX: bbu: Remove unused define
  filetype: Add code to detect i.MX image v1
  filetype: Add code to detect i.MX image v2
  ARM: i.MX: bbu: Move inner-image type check
  ARM: i.MX: bbu: Drop IMX_INTERNAL_FLAG_NAND
  ARM: i.MX: bbu: Consolidate vairous update helpers
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
  ARM: i.MX: bbu: Adjust error code check for pwrite()
  bbu: Remove logical negation in barebox_update_handler_exists()
  block: Do not ignore error in blk->ops->write()
  bbu: Report update failures explicitly
  bbu: command: Make sure specified update handler exists

 arch/arm/boards/nxp-imx8mq-evk/board.c |   3 +
 arch/arm/boards/zii-vf610-dev/board.c  |  19 ++
 arch/arm/dts/vf610-zii-dev-rev-b.dts   |  11 +
 arch/arm/mach-imx/imx-bbu-internal.c   | 339 ++++++++++++++-----------
 arch/arm/mach-imx/include/mach/bbu.h   |  60 +++--
 commands/barebox-update.c              |  15 +-
 common/bbu.c                           |  14 +-
 common/block.c                         |  17 +-
 common/filetype.c                      |  11 +
 include/filetype.h                     |   2 +
 10 files changed, 307 insertions(+), 184 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
