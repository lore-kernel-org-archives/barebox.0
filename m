Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x230.google.com ([2607:f8b0:400e:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f89rV-0003pN-65
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 19:32:26 +0000
Received: by mail-pg0-x230.google.com with SMTP id e9so3187010pgr.7
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2018 12:32:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 Apr 2018 12:31:38 -0700
Message-Id: <20180416193157.16094-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 00/19] i.MX bootsource bugfixes,
 refactoring and VFxxx support
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

Changes since [v1]:

	- Patchset converted to use FIELD_GET macro (which was ported
          from the kernel)

	- Spelling fixes

[v1] https://www.spinics.net/lists/u-boot-v2/msg32506.html

Feedback is wellcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (19):
  ARM: i.MX: boot: Coalesce copy-pasted code
  include: Port linux/build_bug.h from Linux kernel
  include: Port linux/bitfield.h from Linux kernel
  ARM: i.MX: Add a function to extract BMOD value
  ARM: i.MX: Simplify serial bootsource detection for i.MX6 and 7
  ARM: i.MX: Account for unprogrammed fuses on i.MX6 and i.MX7
  ARM: i.MX7: boot: Add code to handle SD/MMC manufacture mode
  ARM: i.MX7: boot: Remove incorrect NAND bootsource detection
  ARM: i.MX7: boot: Fix SPI-NOR/QSPI boot source mixup
  ARM: i.MX: boot: Remove unnecessary returns
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
 arch/arm/mach-imx/boot.c                   | 436 ++++++++++++++++++++---------
 arch/arm/mach-imx/include/mach/generic.h   |   2 +
 arch/arm/mach-imx/xload.c                  |   2 +-
 common/bootsource.c                        |   1 +
 include/bootsource.h                       |   1 +
 include/linux/bitfield.h                   | 152 ++++++++++
 include/linux/bug.h                        |  25 +-
 include/linux/build_bug.h                  |  83 ++++++
 12 files changed, 550 insertions(+), 160 deletions(-)
 create mode 100644 include/linux/bitfield.h
 create mode 100644 include/linux/build_bug.h

-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
