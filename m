Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo5.mail-out.ovh.net ([178.32.119.138]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TumzM-0006T3-Vz
 for barebox@lists.infradead.org; Mon, 14 Jan 2013 16:34:22 +0000
Received: from mail439.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id E36B7FFB155
 for <barebox@lists.infradead.org>; Mon, 14 Jan 2013 17:43:52 +0100 (CET)
Date: Mon, 14 Jan 2013 17:32:53 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130114163253.GD22953@game.jcrosoft.org>
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
Subject: [PATCH 0/5] some fixes
To: barebox@lists.infradead.org

HI,

	some fixes for master

The following changes since commit dbdd533232c463da503f6b85ade060153f1b17d6:

  fixup! commands: add ubiformat (2013-01-09 18:22:35 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91_fixes

for you to fetch changes up to 97d4ca970a591b0461df776b10206db33ee79beb:

  qt1070: init default key code first (2013-01-15 00:26:19 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (5):
      w1: gpio: use int for gpio
      at91: sam9x5ek: use -EINVAL for invalid gpio on 1-wire
      at91sam9g45: fix i2c typos
      atmel_spi: fix spi cs gpio request loop
      qt1070: init default key code first

 arch/arm/boards/at91sam9x5ek/init.c      |    1 +
 arch/arm/mach-at91/at91sam9g45_devices.c |    6 +++---
 drivers/input/qt1070.c                   |    3 ++-
 drivers/spi/atmel_spi.c                  |    2 +-
 include/linux/w1-gpio.h                  |    4 ++--
 5 files changed, 9 insertions(+), 7 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
