Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sv8fc-0003Fk-S3
 for barebox@lists.infradead.org; Sat, 28 Jul 2012 15:11:10 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Sv8fL-00034x-0N
 for barebox@lists.infradead.org; Sat, 28 Jul 2012 17:10:51 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Sv8fK-0003Xx-VO
 for barebox@lists.infradead.org; Sat, 28 Jul 2012 17:10:50 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 28 Jul 2012 17:10:42 +0200
Message-Id: <1343488250-12570-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCHv2] Add the Samsung S3C6410 SoC to Barebox
To: barebox@lists.infradead.org

This patch series adds support for the Samsung's S3C6410 ARMv11 SoC
and with this main support also two popular platforms which are using this
SoC: FriendlyARM's Mini6410 and Tiny6410.

These patches are based on the 'master' branch and thus suffer on a missing
adpation in the Samsung serial driver, which is part of the 'next' branch.

I would wait until the 'next' branch gets merged into 'master' while the next
release and then re-send the required changes for the serial driver to make
the serial console work with this new SoC.

Comments are still welcome.

Regards,
Juergen

The following changes since commit e8bbacab05d8a8e7e86e31e9208457409bcbb1b0:

  i2c: fix printf format specifier (2012-07-26 12:41:55 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/jbe/barebox.git s3c6410_2nd_try_for_inclusion

for you to fetch changes up to 4043fe98bb117399ca9e64c64e38e3bfe64212e2:

  ARM/Samsung: add the Tiny6410 platform as a user of the S3C6410 SoC (2012-07-28 16:31:26 +0200)

----------------------------------------------------------------
Juergen Beisert (8):
      ARM/Samsung: add S3C6410 SoC iomap
      ARM/Samsung: adapt the generic timer driver to support the S3C6410 SoC
      ARM/Samsung: add the clock tree support for the S3C6410 SoC
      ARM/Samsung: add GPIO handling support for the S3C6410 SoC
      ARM/Samsung: add generic S3C6410 SoC specific functions
      ARM/Samsung: add the S3C6410 SoC
      ARM/Samsung: add the Mini6410 platform as a user of the S3C6410 SoC
      ARM/Samsung: add the Tiny6410 platform as a user of the S3C6410 SoC

 arch/arm/Kconfig                                   |    6 +
 arch/arm/Makefile                                  |    2 +
 arch/arm/boards/friendlyarm-mini6410/Makefile      |    1 +
 arch/arm/boards/friendlyarm-mini6410/config.h      |    8 +
 arch/arm/boards/friendlyarm-mini6410/env/config    |   56 ++
 arch/arm/boards/friendlyarm-mini6410/mini6410.c    |  305 +++++++++++
 arch/arm/boards/friendlyarm-tiny6410/Kconfig       |   19 +
 arch/arm/boards/friendlyarm-tiny6410/Makefile      |    3 +
 arch/arm/boards/friendlyarm-tiny6410/config.h      |    8 +
 .../friendlyarm-tiny6410/development-board.c       |  100 ++++
 arch/arm/boards/friendlyarm-tiny6410/env/config    |   56 ++
 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c    |   80 +++
 arch/arm/boards/friendlyarm-tiny6410/tiny6410.h    |   14 +
 arch/arm/configs/friendlyarm_mini6410_defconfig    |   40 ++
 arch/arm/configs/friendlyarm_tiny6410_defconfig    |   41 ++
 arch/arm/mach-samsung/Kconfig                      |   40 ++
 arch/arm/mach-samsung/Makefile                     |    1 +
 arch/arm/mach-samsung/clocks-s3c64xx.c             |  338 ++++++++++++
 arch/arm/mach-samsung/gpio-s3c64xx.c               |  301 +++++++++++
 .../mach-samsung/include/mach/devices-s3c64xx.h    |   40 ++
 arch/arm/mach-samsung/include/mach/gpio.h          |    3 +
 arch/arm/mach-samsung/include/mach/iomux-s3c64xx.h |  542 ++++++++++++++++++++
 arch/arm/mach-samsung/include/mach/s3c-clocks.h    |    3 +
 arch/arm/mach-samsung/include/mach/s3c-generic.h   |   17 +
 arch/arm/mach-samsung/include/mach/s3c-iomap.h     |    3 +
 .../arm/mach-samsung/include/mach/s3c64xx-clocks.h |   67 +++
 arch/arm/mach-samsung/include/mach/s3c64xx-iomap.h |   51 ++
 arch/arm/mach-samsung/mem-s3c64xx.c                |   66 +++
 arch/arm/mach-samsung/s3c-timer.c                  |   17 +-
 29 files changed, 2224 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/Makefile
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/config.h
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/env/config
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/mini6410.c
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/Kconfig
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/Makefile
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/config.h
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/development-board.c
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/env/config
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/tiny6410.h
 create mode 100644 arch/arm/configs/friendlyarm_mini6410_defconfig
 create mode 100644 arch/arm/configs/friendlyarm_tiny6410_defconfig
 create mode 100644 arch/arm/mach-samsung/clocks-s3c64xx.c
 create mode 100644 arch/arm/mach-samsung/gpio-s3c64xx.c
 create mode 100644 arch/arm/mach-samsung/include/mach/devices-s3c64xx.h
 create mode 100644 arch/arm/mach-samsung/include/mach/iomux-s3c64xx.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c64xx-clocks.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c64xx-iomap.h
 create mode 100644 arch/arm/mach-samsung/mem-s3c64xx.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
