Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5kG-0005gk-RZ
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 11:07:05 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 5A95310502C6
 for <barebox@lists.infradead.org>; Fri,  5 Oct 2012 13:13:18 +0200 (CEST)
Date: Fri, 5 Oct 2012 13:04:35 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121005110435.GR26553@game.jcrosoft.org>
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
Subject: [PATCH 0/4] add gpio primcell pl061 support
To: barebox@lists.infradead.org

Hi,

The following changes since commit 6bb06524d665b4fbcefddb6b914273466fe801dd:

  ARM pbl: actually create cached mappings in the decompressor (2012-10-04 18:30:58 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/gpio_arm

for you to fetch changes up to 953ebaa113eda17d737d62673d53f593b4b076f3:

  versatilepb: add gpio support (2012-10-05 12:56:34 +0800)

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
 arch/arm/mach-versatile/core.c              |   10 +++++
 arch/arm/mach-versatile/include/mach/gpio.h |    1 +
 drivers/gpio/Kconfig                        |    7 ++++
 drivers/gpio/Makefile                       |    2 +
 drivers/gpio/gpio-pl061.c                   |  168 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/asm-generic/gpio.h                  |   10 +++++
 include/linux/amba/pl061.h                  |   16 ++++++++
 9 files changed, 217 insertions(+)
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
