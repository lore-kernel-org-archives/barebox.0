Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo5.mail-out.ovh.net ([91.121.55.239]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TF2kU-0004Tj-Va
 for barebox@lists.infradead.org; Fri, 21 Sep 2012 12:54:28 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 27ED61014178
 for <barebox@lists.infradead.org>; Fri, 21 Sep 2012 15:00:16 +0200 (CEST)
Date: Fri, 21 Sep 2012 14:51:51 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120921125151.GM26553@game.jcrosoft.org>
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
Subject: [PATCH 0/5] at91 framebuffer support
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

Hi,

	The following patch serie add the support of the Framebuffer on at91
	sam9261/sam9263 and sam9g45. The sam9x5 series is not yet supported as
	they use an other IP.

	And enable it on sam0m10g45ek (9263ek and 9261ek will be availlable
	later).

	This is based on the next branch

The following changes since commit 6392955f283389fa4fecb0e2d5d1837bcb83f480:

  Merge branch 'for-next/testing-menu' into next (2012-09-20 23:11:42 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/atmel_fb

for you to fetch changes up to a60a81609fdc332ca8b84d2b8633dc59f8aacbc8:

  at91sam9m10g45ek: add lcdc support (2012-09-21 20:49:25 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (5):
      video: add atmel lcdc frambuffer support
      at91sam9263: add atmel lcdc frambuffer support
      at91sam9261: add atmel lcdc frambuffer support
      at91sam9g45: add atmel lcdc frambuffer support
      at91sam9m10g45ek: add lcdc support

 arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board |    7 +++
 arch/arm/boards/at91sam9m10g45ek/env/splash.png     |  Bin 0 -> 22747 bytes
 arch/arm/boards/at91sam9m10g45ek/init.c             |   35 +++++++++++++
 arch/arm/configs/at91sam9m10g45ek_defconfig         |   11 ++--
 arch/arm/mach-at91/at91sam9261.c                    |    1 +
 arch/arm/mach-at91/at91sam9261_devices.c            |   51 ++++++++++++++++++
 arch/arm/mach-at91/at91sam9263.c                    |    1 +
 arch/arm/mach-at91/at91sam9263_devices.c            |   40 +++++++++++++++
 arch/arm/mach-at91/at91sam9g45.c                    |    1 +
 arch/arm/mach-at91/at91sam9g45_devices.c            |   49 ++++++++++++++++++
 arch/arm/mach-at91/include/mach/atmel_lcdc.h        |  209 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/board.h             |    4 ++
 drivers/video/Kconfig                               |    4 ++
 drivers/video/Makefile                              |    1 +
 drivers/video/atmel_lcdfb.c                         |  477 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 15 files changed, 888 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/env/splash.png
 create mode 100644 arch/arm/mach-at91/include/mach/atmel_lcdc.h
 create mode 100644 drivers/video/atmel_lcdfb.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
