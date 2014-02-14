Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEKrG-0004Vn-Em
 for barebox@lists.infradead.org; Fri, 14 Feb 2014 15:39:18 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WEKqt-00052k-DO
 for barebox@lists.infradead.org; Fri, 14 Feb 2014 16:38:55 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WEKqt-0006P1-CA
 for barebox@lists.infradead.org; Fri, 14 Feb 2014 16:38:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Feb 2014 16:38:50 +0100
Message-Id: <1392392334-20254-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Add devicetree support to gpio-keys driver
To: barebox@lists.infradead.org

This adds devicetree support for the gpio-keys driver and the necessary
prerequisites.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      input: Add BB_ prefix to KEY_ defines
      input: gpio-keys: separate internal data from platform_data
      input: Add keycode to barebox key translation table
      input: gpio-keys: Add devicetree probe support

 arch/arm/boards/archosg9/board.c        |   6 +-
 arch/arm/boards/at91sam9261ek/init.c    |   6 +-
 arch/arm/boards/at91sam9m10g45ek/init.c |  14 +--
 arch/arm/boards/at91sam9m10ihd/init.c   |   2 +-
 arch/arm/boards/usb-a926x/init.c        |   8 +-
 commands/edit.c                         |  18 ++--
 common/menu.c                           |  18 ++--
 drivers/input/Makefile                  |   1 +
 drivers/input/gpio_keys.c               | 156 ++++++++++++++++++++++++++------
 drivers/input/keymap.c                  | 136 ++++++++++++++++++++++++++++
 drivers/input/qt1070.c                  |   4 +-
 include/gpio_keys.h                     |   7 --
 include/input/keyboard.h                |  10 ++
 include/readkey.h                       |  34 +++----
 lib/readkey.c                           |  36 ++++----
 lib/readline.c                          |  26 +++---
 16 files changed, 360 insertions(+), 122 deletions(-)
 create mode 100644 drivers/input/keymap.c
 create mode 100644 include/input/keyboard.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
