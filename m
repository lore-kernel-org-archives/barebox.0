Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x229.google.com ([2607:f8b0:400e:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKb-0001p5-91
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:22 +0000
Received: by mail-pf0-x229.google.com with SMTP id p6so8522582pfn.4
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:10 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:46 -0700
Message-Id: <20180414175103.10125-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/17] i.MX bootsource bugfixes, refactoring and VFxxx support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This patchset is the result of my work on adding support for
bootsource detection of VFxxx as well as fixing a number of
bugs/unsupported corner cases in similar i.MX7 specific code.

NOTE: While VFxxx support is added in this series the code integrating
it into the SoC initalization sequnce is not included. Patch for that
is dependent on recently submitted "i.MX reset reason detection
support" and I didn't want to intertwine two otherwise independent
submissions.

Feedback is wellcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (17):
  ARM: i.MX: boot: Coalesce copy-pasted code
  ARM: i.MX: Add function to extract BMOD value
  ARM: i.MX: Simplify serial bootsource detection for i.MX6 and 7
  ARM: i.MX: Account for unprogrammed fuses on i.MX6 and i.MX7
  ARM: i.MX7: boot: Add code to handle SD/MMC manufacture mode
  ARM: i.MX7: boot: Remove incorrect NAND bootsource detection
  ARM: i.MX7: boot: Fix SPI-NOR/QSPI boot source mixup
  ARM: i.MX: boot: Remove unnecessary retruns
  ARM: i.MX: boot: Move magic values into small functions
  ARM: i.MX: boot: Share code to detect NAND as a boot source
  ARM: i.MX: boot: Check for NAND boot only if necessary on i.MX53, 6
  ARM: i.MX53: boot: Move magic numbers info utility functions
  ARM: i.MX6: boot: Move magic numbers into utility functions
  ARM: i.MX7: boot: Move magic numbers into utility functions
  bootsource: Add BOOTSOURCE_CAN
  ARM: VFxxx: Implement code to detect bootsource
  ARM: i.MX6: boot: Return BOOTSOURCE_SPI_NOR, not BOOTSOURCE_SPI

 arch/arm/boards/datamodul-edm-qmx6/board.c |   2 +-
 arch/arm/boards/dfi-fs700-m60/board.c      |   2 +-
 arch/arm/boards/phytec-som-imx6/board.c    |   2 +-
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c  |   2 +-
 arch/arm/mach-imx/boot.c                   | 411 ++++++++++++++++++++---------
 arch/arm/mach-imx/include/mach/generic.h   |   2 +
 arch/arm/mach-imx/xload.c                  |   2 +-
 common/bootsource.c                        |   1 +
 include/bootsource.h                       |   1 +
 9 files changed, 289 insertions(+), 136 deletions(-)

-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
