Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUn-0004J0-IQ
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:04 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aJNUQ-0007rT-LW
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 16:37:38 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1aJNUQ-0004yu-DQ
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 16:37:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:21 +0100
Message-Id: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] input core
To: Barebox List <barebox@lists.infradead.org>

This series adds an input driver core and ports some input driver over
to it.

Currently the input drivers are written as console drivers. The problem
with this is that we can only generate a character when a key is
pressed, but we can't ask for the current state of a key. One very
common usecase for buttons in a bootloader is to ask if the user is
holding a button while booting to go into a recovery mode or boot from
alternative sources. We should support this usecase and with this input
core we can.
A nice side effect is that the input driver get simpler since the input
core handles stuff like key repetition and fifos for the keys.

Sascha

----------------------------------------------------------------
Sascha Hauer (15):
      poller: Fix async poller
      keymap: Fix braces
      keymap: remove exotic and nonprintable keys
      keymap: Add keypad keys
      keymap: Add apostrophe, backslash and home
      keymap: Add keymap for keys with shift pressed
      input: Add input core
      input: usb keyboard: convert to input framework
      input: imx-keypad: Use dev_* functions
      input: move matrix_keypad_build_keymap() to C file
      input: imx-keypad: convert to input framework
      input: Add device tree parsing support for matrix keymap
      input: imx-keypad: Add device tree support
      input: gpio-keys: Use KEY_* keycodes
      input: gpio-keys: convert to input framework

 arch/arm/boards/archosg9/board.c         |   5 +-
 arch/arm/boards/at91sam9261ek/init.c     |   7 +-
 arch/arm/boards/at91sam9m10g45ek/init.c  |  15 +-
 arch/arm/boards/usb-a926x/init.c         |   9 +-
 arch/arm/mach-imx/include/mach/devices.h |   2 +-
 common/poller.c                          |  26 ++-
 drivers/input/Kconfig                    |   9 +
 drivers/input/Makefile                   |   2 +
 drivers/input/gpio_keys.c                |  71 ++------
 drivers/input/imx_keypad.c               |  92 ++++------
 drivers/input/input.c                    | 202 +++++++++++++++++++++
 drivers/input/keymap.c                   | 173 ++++++++++--------
 drivers/input/matrix-keymap.c            |  89 ++++++++++
 drivers/input/usb_kbd.c                  | 296 ++++++-------------------------
 include/input/input.h                    |  34 ++++
 include/input/keyboard.h                 |   1 +
 include/input/matrix_keypad.h            |  35 ++++
 include/matrix_keypad.h                  |  59 ------
 include/poller.h                         |   4 +
 19 files changed, 628 insertions(+), 503 deletions(-)
 create mode 100644 drivers/input/input.c
 create mode 100644 drivers/input/matrix-keymap.c
 create mode 100644 include/input/input.h
 create mode 100644 include/input/matrix_keypad.h
 delete mode 100644 include/matrix_keypad.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
