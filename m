Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNV73-0003qz-MQ
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 20:48:42 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 2D8FAFF9472
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 22:55:18 +0200 (CEST)
Date: Sun, 14 Oct 2012 22:46:22 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121014204622.GT13639@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/3] add mtd dataflash support
To: barebox@lists.infradead.org

HI,

	the following patch serie add the dataflash support
	and use it on Calao USB-A9263

	I'll add later the support on Atmel Reference Board

The following changes since commit 461e7d7aefb128a63b84687ba7e361473ada91c6:

  mtd-core: add writesize in MEMGETINFO ioctl (2012-10-13 14:30:50 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/calao

for you to fetch changes up to cc1c399fbad7c8e818d7030777317703ced86c1c:

  usb-a9263: add spi dataflash support (2012-10-14 20:13:00 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      import include/linux/math64.h
      mtd: add dataflash support
      usb-a9263: add spi dataflash support

 arch/arm/boards/usb-a926x/init.c            |   21 +++
 arch/arm/configs/usb_a9263_128mib_defconfig |    3 +-
 arch/arm/configs/usb_a9263_defconfig        |    3 +-
 drivers/mtd/devices/Kconfig                 |   18 ++
 drivers/mtd/devices/Makefile                |    1 +
 drivers/mtd/devices/mtd_dataflash.c         |  882 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/math64.h                      |  121 +++++++++++++
 include/spi/flash.h                         |    2 +-
 8 files changed, 1048 insertions(+), 3 deletions(-)
 create mode 100644 drivers/mtd/devices/mtd_dataflash.c
 create mode 100644 include/linux/math64.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
