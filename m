Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRqQ-0000A3-0g
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:48:12 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VPRq3-0007x0-Vd
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 08:47:43 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VPRq3-0007CO-UQ
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 08:47:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:47:31 +0200
Message-Id: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: misc patches
To: barebox@lists.infradead.org

Several cleanups/fixes I stumbled upon while doing other stuff.

Sascha

----------------------------------------------------------------
Sascha Hauer (11):
      ARM: pfla02: Fix compiler warning
      detect command: Add missing help text for -a option
      ata: ide-sff: Add missing wait for ready in write function
      move devinfo command to its own file
      usb: Turn some printf into pr_*
      globalvar: Do not modify already existing variables
      scripts/Makefile: cleanup
      scripts/Makefile: implement targetprogs-y
      scripts: Move omap4_usbboot to its own directory
      bootm needs uImage support. Select it
      defenv-2: Do not overwrite previously existing global variables

 arch/arm/boards/phytec-pfla02/lowlevel.c    |   2 +-
 commands/Makefile                           |   1 +
 commands/detect.c                           |   1 +
 commands/devinfo.c                          | 158 ++++++++++++++++++++++++++++
 common/Kconfig                              |   1 +
 common/globalvar.c                          |   3 +
 defaultenv-2/base/bin/init                  |  19 ++--
 drivers/ata/ide-sff.c                       |   3 +
 drivers/base/driver.c                       | 142 -------------------------
 drivers/usb/core/usb.c                      |   6 +-
 scripts/.gitignore                          |   1 -
 scripts/Makefile                            |  30 +++---
 scripts/omap4_usbboot/.gitignore            |   1 +
 scripts/omap4_usbboot/Makefile              |   5 +
 scripts/{ => omap4_usbboot}/omap4_usbboot.c |   0
 scripts/{ => omap4_usbboot}/usb.h           |   0
 scripts/{ => omap4_usbboot}/usb_linux.c     |   0
 17 files changed, 205 insertions(+), 168 deletions(-)
 create mode 100644 commands/devinfo.c
 create mode 100644 scripts/omap4_usbboot/.gitignore
 create mode 100644 scripts/omap4_usbboot/Makefile
 rename scripts/{ => omap4_usbboot}/omap4_usbboot.c (100%)
 rename scripts/{ => omap4_usbboot}/usb.h (100%)
 rename scripts/{ => omap4_usbboot}/usb_linux.c (100%)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
