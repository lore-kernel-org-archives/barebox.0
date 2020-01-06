Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWIP-0000HR-AP
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 17:36:10 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  6 Jan 2020 18:35:35 +0100
Message-Id: <20200106173540.20367-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC PATCH 0/5] fs: fat: extend for in-PBL support
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de

The AT91 BootROM loads a boot.bin file from the first FAT partition
into SRAM, when booting from MMC. SoCs like the Zynq do likewise.

To avoid the need for a different configuration for each of the bootloader
stages, add PBL support for reading from FAT.
This way each stage need only have a different PBL entry point.

The first two commits are valid as-is. The rest makes use of them for
the sama5d2. The sama5d2 first stage support is not yet complete (and
won't be for a while if it's up to me), but Lucas asked about it for
the Zynq, so here it is.

Feedback welcome.

Cheers,
Ahmad Fatoum (5):
  pbl: add block I/O API
  fs: fat: extend for in-PBL support
  mci: add first-stage at91-sdhci driver
  ARM: at91: add helpers for MCI barebox chain-loading
  [WIP] ARM: at91: sama5d27-som1: add first stage entry point

 arch/arm/boards/sama5d27-som1/lowlevel.c |  16 +
 arch/arm/mach-at91/Kconfig               |   6 +
 arch/arm/mach-at91/Makefile              |   1 +
 arch/arm/mach-at91/include/mach/xload.h  |  12 +
 arch/arm/mach-at91/xload-mmc.c           |  51 +++
 drivers/mci/Kconfig                      |   4 +
 drivers/mci/Makefile                     |   1 +
 drivers/mci/atmel-sdhci-common.c         | 279 ++++++++++++++
 drivers/mci/atmel-sdhci-pbl.c            | 440 +++++++++++++++++++++++
 drivers/mci/atmel-sdhci.h                |  38 ++
 drivers/mci/sdhci.h                      |  17 +
 fs/Makefile                              |   2 +-
 fs/fat/Kconfig                           |   7 +
 fs/fat/Makefile                          |   4 +-
 fs/fat/diskio.h                          |   7 +-
 fs/fat/fat-pbl.c                         | 148 ++++++++
 fs/fat/ff.c                              | 104 +++---
 fs/fat/ff.h                              |  17 +-
 images/Makefile.at91                     |   4 +
 include/pbl.h                            |   7 +
 20 files changed, 1112 insertions(+), 53 deletions(-)
 create mode 100644 arch/arm/mach-at91/include/mach/xload.h
 create mode 100644 arch/arm/mach-at91/xload-mmc.c
 create mode 100644 drivers/mci/atmel-sdhci-common.c
 create mode 100644 drivers/mci/atmel-sdhci-pbl.c
 create mode 100644 drivers/mci/atmel-sdhci.h
 create mode 100644 fs/fat/fat-pbl.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
