Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TK7rW-0005B9-Sb
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 13:22:43 +0000
Received: from mail413.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 371F71050535
 for <barebox@lists.infradead.org>; Fri,  5 Oct 2012 15:28:59 +0200 (CEST)
Date: Fri, 5 Oct 2012 15:20:17 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121005132017.GS26553@game.jcrosoft.org>
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
Subject: [PATCH 0/4 v2] add gpio primcell pl061 support
To: barebox@lists.infradead.org

Hi,

The following changes since commit 6bb06524d665b4fbcefddb6b914273466fe801dd:

  ARM pbl: actually create cached mappings in the decompressor (2012-10-04 18:30:58 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/gpio_arm

for you to fetch changes up to 74968e99803d7d974c7423052e40443848e8be99:

  versatilepb: add gpio support (2012-10-05 15:08:05 +0800)

----------------------------------------------------------------
add gpio primcell pl061 support

update gpiolib to select GENERIC_GPIO and provice a generic header

use is on versatilepb

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      gpiolib: select GENERIC_GPIO
      gpio: provide generic gpio header
      gpio: add ARM Primcell pl061 support
      versatilepb: add gpio support

 arch/arm/Kconfig                            |    1 +
 arch/arm/configs/versatilepb_defconfig      |    2 +
 arch/arm/mach-ep93xx/include/mach/gpio.h    |   27 +-------------
 arch/arm/mach-imx/include/mach/gpio.h       |    7 +---
 arch/arm/mach-mxs/include/mach/gpio.h       |    6 +--
 arch/arm/mach-omap/include/mach/gpio.h      |   43 +---------------------
 arch/arm/mach-samsung/include/mach/gpio.h   |    6 +--
 arch/arm/mach-versatile/core.c              |   10 +++++
 arch/arm/mach-versatile/include/mach/gpio.h |    1 +
 drivers/gpio/Kconfig                        |    7 ++++
 drivers/gpio/Makefile                       |    2 +
 drivers/gpio/gpio-pl061.c                   |  158 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/asm-generic/gpio.h                  |   10 +++++
 include/linux/amba/pl061.h                  |   12 ++++++
 14 files changed, 211 insertions(+), 81 deletions(-)
 create mode 100644 arch/arm/mach-versatile/include/mach/gpio.h
 create mode 100644 drivers/gpio/gpio-pl061.c
 create mode 100644 include/asm-generic/gpio.h
 create mode 100644 include/linux/amba/pl061.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
