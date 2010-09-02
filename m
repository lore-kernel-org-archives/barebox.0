Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OrFf0-00038d-Qq
	for barebox@lists.infradead.org; Thu, 02 Sep 2010 19:41:23 +0000
Date: Thu, 2 Sep 2010 21:40:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100902194046.GA21449@game.jcrosoft.org>
References: <20100902141001.GA28968@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100902141001.GA28968@game.jcrosoft.org>
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
Subject: [PATCH 0/9 V2] preperation for sh adding
To: barebox@lists.infradead.org

Hi,

	this version 2
	update the vsprintf by managing the iB internally and the Space
	before the unit as optional

	the others comments was also fix

The following changes since commit 0d35c3c8a0c2a1f1ff06eac20a12af0186753bc4:

  menu: simplify usage for clients (2010-08-30 21:06:02 +0200)

are available in the git repository at:
  git://git.jcrosoft.org/barebox.git sh-prepare

Jean-Christophe PLAGNIOL-VILLARD (9):
      types.h: move __kernel_dev_t to include/linux/types.h
      device: fix dev_name
      stm8815: fix the uart device clock match
      arm: move clkdev to drivers/clk
      vsprintf: add %w and %w support to print unit
      at91/clock: switch to %w for clock info printing
      cfi_flash: use %W and IEEE 1541 format
      use %W instead of size_human_readable and use IEEE 1541 format
      clkdev: add print clk info command

 arch/arm/Kconfig                          |    1 -
 arch/arm/Makefile                         |    2 +-
 arch/arm/common/Kconfig                   |    2 -
 arch/arm/common/Makefile                  |    5 --
 arch/arm/configs/nhk8815_defconfig        |    2 +-
 arch/arm/include/asm/clkdev.h             |   15 +-----
 arch/arm/include/asm/posix_types.h        |    1 -
 arch/arm/mach-at91/clock.c                |    8 +--
 arch/arm/mach-nomadik/8815.c              |    6 +-
 arch/arm/mach-nomadik/Kconfig             |    2 +-
 arch/arm/mach-nomadik/clock.c             |    7 +--
 arch/blackfin/include/asm/posix_types.h   |    1 -
 arch/m68k/include/asm/posix_types.h       |    1 -
 arch/ppc/include/asm/posix_types.h        |    1 -
 arch/sandbox/include/asm/posix_types.h    |    1 -
 arch/x86/include/asm/posix_types.h        |    1 -
 commands/Kconfig                          |    7 ++
 commands/bootm.c                          |    7 +-
 common/startup.c                          |    9 +--
 drivers/Kconfig                           |    1 +
 drivers/Makefile                          |    1 +
 drivers/clk/Kconfig                       |    4 +
 drivers/clk/Makefile                      |    2 +
 {arch/arm/common => drivers/clk}/clkdev.c |   57 +++++++++++++++---
 drivers/nor/cfi_flash.c                   |    8 +-
 include/common.h                          |    1 -
 include/driver.h                          |   12 ++--
 include/linux/clkdev.h                    |   36 +++++++++++
 include/linux/kernel.h                    |   20 ++++++
 include/linux/types.h                     |    2 +
 lib/Makefile                              |    1 -
 lib/display_options.c                     |   60 -------------------
 lib/driver.c                              |   16 ++---
 lib/vsprintf.c                            |   91 +++++++++++++++++++++++++++++
 34 files changed, 250 insertions(+), 141 deletions(-)
 delete mode 100644 arch/arm/common/Kconfig
 delete mode 100644 arch/arm/common/Makefile
 create mode 100644 drivers/clk/Kconfig
 create mode 100644 drivers/clk/Makefile
 rename {arch/arm/common => drivers/clk}/clkdev.c (74%)
 create mode 100644 include/linux/clkdev.h
 delete mode 100644 lib/display_options.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
