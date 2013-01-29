Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06pD-0005XU-Cm
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:45:54 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1U06pA-0007W3-Bv
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 09:45:48 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1U06pA-0003gs-Ai
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 09:45:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:45:35 +0100
Message-Id: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] introduce compiletime loglevel
To: barebox@lists.infradead.org

This makes the loglevel configurable at compile time. This allows
to optimize away the lesser important messages from the binary.

Also added is a pr_fmt macro as in the kernel which allows to
define a file specific prefix to the pr_* messages.

As a positive side effect pr_debug() and debug() is no longer
optimized away by the preprocessor but by gcc. This way we have
nice warnings for all the wrong debug calls in the code, so this
series also cleans them up and it makes it harder to introduce
new wrong debug calls.

Sascha

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (1):
      consolidate print* in a single header

Sascha Hauer (11):
      mtd m25p80: consistenly switch to dev_* messages
      treewide: fix format specifiers
      nios2: Let readl return an unsigned int
      nios2: Use unsigned long for __kernel_size_t
      blackfin: Use unsigned long for __kernel_size_t
      USB ehci: Use dev_* for messages
      introduce compile time loglevel
      introduce pr_fmt
      ARM mmu: Use pr_debug
      ARM pcm038: Specify pr_fmt and change messages to pr_*
      mtd nand: Specify pr_fmt and change messages to pr_*

 arch/arm/boards/pcm038/pcm038.c         |    5 ++-
 arch/arm/cpu/mmu.c                      |   27 ++++++++++--
 arch/arm/mach-imx/esdctl.c              |    4 +-
 arch/arm/mach-omap/gpmc.c               |    6 +--
 arch/blackfin/include/asm/posix_types.h |    2 +-
 arch/nios2/include/asm/io.h             |    2 +-
 arch/nios2/include/asm/posix_types.h    |    2 +-
 arch/ppc/lib/board.c                    |    4 +-
 common/Kconfig                          |   16 +++++++
 common/environment.c                    |   10 +++--
 common/hush.c                           |    4 +-
 common/module.c                         |    2 +-
 common/parser.c                         |    4 +-
 common/resource.c                       |   26 ++++++++---
 common/uimage.c                         |    5 ++-
 drivers/mci/mxs.c                       |    2 +-
 drivers/mtd/devices/m25p80.c            |   11 ++---
 drivers/mtd/nand/nand_base.c            |   39 +++++++++--------
 drivers/mtd/nand/nand_bbt.c             |   43 +++++++++---------
 drivers/mtd/nand/nand_write.c           |    4 +-
 drivers/nor/cfi_flash.c                 |   14 +++---
 drivers/nor/cfi_flash.h                 |    4 ++
 drivers/usb/host/ehci-hcd.c             |   73 +++++++++++++++++--------------
 fs/tftp.c                               |    4 +-
 include/common.h                        |   17 +------
 include/driver.h                        |   29 ------------
 include/linux/mtd/mtd.h                 |    2 +-
 include/printk.h                        |   72 ++++++++++++++++++++++++++++++
 lib/gui/bmp.c                           |    2 +-
 lib/xfuncs.c                            |    4 +-
 30 files changed, 269 insertions(+), 170 deletions(-)
 create mode 100644 include/printk.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
