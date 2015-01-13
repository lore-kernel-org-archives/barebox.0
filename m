Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAv1H-0004OK-L9
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:32:04 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 478AB1008581
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 07:31:41 +0100 (CET)
Date: Tue, 13 Jan 2015 07:31:28 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150113063128.GC30554@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH 0/6 v2] raspberry-pi: updates
To: barebox@lists.infradead.org

Hi,

	v2:

		send correct leds patch

	The following patch serie prepare the raspberry for USB support

The following changes since commit 9cd14d260aa22ae089f81a07be2c0e5dea2ffc94:

  Merge branch 'for-next/pbl-console' (2015-01-09 17:38:27 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/rpi

for you to fetch changes up to 70d2d564af770d99c0e8a4fbfa314e6d55d58629:

  regulator: add bcm2835 driver (2015-01-11 19:04:06 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (6):
      raspberry-pi: add board model detection
      raspberry-pi: add leds support
      amba: pl011: add support for regulator
      driver: add postcore_platform_driver
      regulator: allow to use it with non DT device
      regulator: add bcm2835 driver

 arch/arm/boards/raspberry-pi/env/init/ps1 |   7 +++++++
 arch/arm/boards/raspberry-pi/rpi.c        | 138 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 arch/arm/mach-bcm2835/include/mach/mbox.h |  83 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/regulator/Kconfig                 |   7 ++++++-
 drivers/regulator/Makefile                |   1 +
 drivers/regulator/bcm2835.c               | 149 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/regulator/core.c                  |  98 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------
 drivers/serial/amba-pl011.c               |  11 +++++++++++
 include/driver.h                          |   2 ++
 include/regulator.h                       |  10 ++++++++++
 10 files changed, 488 insertions(+), 18 deletions(-)
 create mode 100644 arch/arm/boards/raspberry-pi/env/init/ps1
 create mode 100644 drivers/regulator/bcm2835.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
