Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SGMKg-0005fD-GP
 for barebox@lists.infradead.org; Sat, 07 Apr 2012 03:28:59 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id AF63DFF83A6
 for <barebox@lists.infradead.org>; Sat,  7 Apr 2012 05:29:46 +0200 (CEST)
Date: Sat, 7 Apr 2012 05:12:28 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120407031228.GF16306@game.jcrosoft.org>
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
Subject: [PATCH 0/4] at91 boot menu support
To: barebox@lists.infradead.org

Hi,

	This patch series add the support on at91sam9m10g45ek of a boot menu.

	this pull include also at91-fixes, menu

please full
The following changes since commit 9c29dab5aab70d399c51d2cae73d9e40c5948707:

  net: env: getenv_ip use resolv (2012-04-03 11:39:29 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git at91

for you to fetch changes up to 6c0b0166b7b0ba9ec5733366b5edfc34e5eb165b:

  at91sam9m10g45ek: add boot menu support (2012-04-07 10:55:37 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (8):
      at91rm9200ek: set maximum nor flash size
      at91sam9260ek/9g20ek: udpate defconfig
      menu: fix double action when "\n\r" or "\r\n" is received
      menu: add color fancy support
      defaultenv: add support for custom board boot
      at91sam9m10g45ek: add gpio keys support
      at91sam9m10g45ek: enable kernel console over framebuffer
      at91sam9m10g45ek: add boot menu support

 arch/arm/boards/at91rm9200ek/init.c                |    3 +-
 .../arm/boards/at91sam9m10g45ek/env/bin/boot_board |   51 +++++++++++++++++++
 arch/arm/boards/at91sam9m10g45ek/env/bin/menu_boot |   37 ++++++++++++++
 arch/arm/boards/at91sam9m10g45ek/env/config        |    2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c            |   51 +++++++++++++++++++
 arch/arm/configs/at91sam9260ek_defconfig           |    5 ++-
 arch/arm/configs/at91sam9g20ek_defconfig           |    8 +++-
 common/menu.c                                      |   53 +++++++++++++++++---
 defaultenv/bin/init                                |   18 ++++---
 include/menu.h                                     |    3 +
 10 files changed, 213 insertions(+), 18 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/env/bin/menu_boot

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
