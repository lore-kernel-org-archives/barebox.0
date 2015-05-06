Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22c.google.com ([2607:f8b0:400e:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq53v-0007pq-Lg
 for barebox@lists.infradead.org; Wed, 06 May 2015 19:32:56 +0000
Received: by pacyx8 with SMTP id yx8so17968020pac.1
 for <barebox@lists.infradead.org>; Wed, 06 May 2015 12:32:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 May 2015 12:31:55 -0700
Message-Id: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 00/18] i.MX serial cleanup, bootstrap code fixes,
 boot via IRAM
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This patch set combines all previously sent patches together:

- Serial cleanups
- Bootstap code fixes/cleanup
- Boot via IRAM

I marked the whole thing as a version 3 since some of the included
patches in some of their incarnations had version 2 and I wanted to
decrease the amount of confusion I was creating :)

Andrey Smirnov (18):
  i.MX: Move UART definitions into a separate file
  i.MX: serial: Add constants for UART clock divisor
  i.MX: serial: Add baud rate calculation convenience functions
  i.MX: serial: Add UART init functions for DEBUG_LL
  i.MX: serial: Convert PUTC_LL to use IOMEM
  i.MX: serial: Convert i.MX51 and i.MX6 to use 'imx*_uart_setup_ll'
  i.MX51: babbage: Implement CONFIG_DEBUG_LL
  i.MX: serial: Distil common clock ungating code
  Makefile.lib: Make 'check_file_size' more flexible
  i.MX: Add provisions to boot from IRAM
  imx-image: Correctly fill image size in prepended header
  bootstrap: Fix potential memory leak in 'read_image_head'
  bootstrap_read_devfs(): Check for errors from devfs_add_partition()
  bootstrap_read_devfs(): Close file after we are done with it
  bootstrap_read_devfs(): Fix potential memory leak
  bootstrap_read_devfs(): Check for errors from dev_add_bb_dev()
  bootstrap_read_devfs(): Remove all partitions upon function completion
  bootstrap: Warn if image size in BB header is zero

 Documentation/boards/imx.rst                       |  27 +++++
 Makefile                                           |   2 +-
 arch/arm/boards/eltec-hipercam/lowlevel.c          |  18 +--
 arch/arm/boards/embest-riotboard/lowlevel.c        |  16 +--
 arch/arm/boards/freescale-mx51-babbage/Makefile    |   3 +
 arch/arm/boards/freescale-mx51-babbage/board.c     |  60 ++++++++++
 .../flash-header-common.imxcfg                     |  58 ++++++++++
 .../flash-header-imx51-babbage-xload.imxcfg        |   3 +
 .../flash-header-imx51-babbage.imxcfg              |  60 +---------
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c  |  67 +++++++++++
 .../arm/boards/freescale-mx6sx-sabresdb/lowlevel.c |  20 +---
 arch/arm/boards/guf-santaro/lowlevel.c             |  18 +--
 arch/arm/boards/karo-tx6x/lowlevel.c               |  21 +---
 arch/arm/boards/phytec-phycard-imx6/lowlevel.c     |  21 +---
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c     |  21 +---
 arch/arm/boards/tqma6x/lowlevel.c                  |  18 +--
 arch/arm/boards/variscite-mx6/lowlevel.c           |  21 +---
 arch/arm/configs/imx_v7-xload_defconfig            |  52 +++++++++
 arch/arm/mach-imx/Kconfig                          |  15 +++
 arch/arm/mach-imx/Makefile                         |   1 +
 arch/arm/mach-imx/include/mach/clock-imx51_53.h    |   5 +-
 arch/arm/mach-imx/include/mach/debug_ll.h          |  85 ++++++++++++--
 arch/arm/mach-imx/xload.c                          |  52 +++++++++
 arch/arm/pbl/Makefile                              |   2 +-
 arch/mips/pbl/Makefile                             |   2 +-
 drivers/serial/serial_imx.c                        | 112 +-----------------
 images/Makefile.imx                                |  20 +++-
 include/serial/imx-uart.h                          | 128 +++++++++++++++++++++
 lib/bootstrap/devfs.c                              |  59 ++++++++--
 scripts/Makefile.lib                               |   6 +-
 scripts/imx/Makefile                               |   2 +
 scripts/imx/imx-image.c                            |  11 +-
 32 files changed, 658 insertions(+), 348 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx51-babbage/flash-header-common.imxcfg
 create mode 100644 arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage-xload.imxcfg
 create mode 100644 arch/arm/configs/imx_v7-xload_defconfig
 create mode 100644 arch/arm/mach-imx/xload.c
 create mode 100644 include/serial/imx-uart.h

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
