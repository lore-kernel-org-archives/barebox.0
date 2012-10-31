Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo5.mail-out.ovh.net ([178.32.96.204]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTX1E-0001zy-FV
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 12:03:38 +0000
Received: from mail193.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id DB8B0FFA42F
 for <barebox@lists.infradead.org>; Wed, 31 Oct 2012 13:10:41 +0100 (CET)
Date: Wed, 31 Oct 2012 13:01:22 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121031120122.GF29599@game.jcrosoft.org>
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
Subject: [PATCH 0/2] m25p80: re-import it againt mtd_add_host
To: barebox@lists.infradead.org

Hi,

	so we now create the cdev via mtd

	This will also simplify sync with linux

	to avoid the m25p8000 or m25p00 the cdev is still named name m25p and the
	drivers m25p80

	sync with linux too

	this patch series is agianst mtd_dataflash support

The following changes since commit 9428c386f876fa3a8871eeea4725a805cea5c367:

  mtd: add dataflash support (2012-10-31 04:48:39 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/m25p80

for you to fetch changes up to 35b8b98230dbcfe25973d5ed52a874027b4f3f05:

  m25p80: sync flash support with the kernel (2012-10-31 04:51:08 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      m25p80: re-import it againt mtd_add_host
      m25p80: sync flash support with the kernel

 arch/arm/boards/freescale-mx6-sabrelite/board.c |    2 +-
 drivers/mtd/devices/Kconfig                     |   27 ++++++++++++
 drivers/mtd/devices/Makefile                    |    1 +
 drivers/{nor => mtd/devices}/m25p80.c           |  512 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------------------------------------------------------------------------------------
 drivers/nor/Kconfig                             |   27 ------------
 drivers/nor/Makefile                            |    1 -
 drivers/nor/m25p80.h                            |   84 ------------------------------------
 include/linux/mtd/cfi.h                         |   65 ++++++++++++++++++++++++++++
 8 files changed, 371 insertions(+), 348 deletions(-)
 rename drivers/{nor => mtd/devices}/m25p80.c (65%)
 delete mode 100644 drivers/nor/m25p80.h
 create mode 100644 include/linux/mtd/cfi.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
