Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBQZI-0003hO-NS
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 13:31:57 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TBQZG-0005KS-SH
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 15:31:54 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TBQZG-0006GI-R9
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 15:31:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Sep 2012 15:31:48 +0200
Message-Id: <1347370313-15184-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] device/driver work
To: barebox@lists.infradead.org

The following patches are contain some misc driver core changes.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      mfd mc13xxx: Separate I2C and SPI probe
      SPI: Put SPI devices on their own bus
      I2C: Put I2C devices on their own bus
      driver: rewrite dev_printf as a function
      driver: Add platform_device_id mechanism

 drivers/base/driver.c   |   19 +++++++++++++++++++
 drivers/base/platform.c |   17 ++++++++++++++++-
 drivers/eeprom/at25.c   |    2 +-
 drivers/i2c/i2c.c       |   23 +++++++++++++++++++++++
 drivers/mfd/lp3972.c    |    2 +-
 drivers/mfd/mc13xxx.c   |   28 ++++++++++++++++++----------
 drivers/mfd/mc34704.c   |    4 ++--
 drivers/mfd/mc34708.c   |    4 ++--
 drivers/mfd/mc9sdz60.c  |    2 +-
 drivers/mfd/stmpe-i2c.c |    2 +-
 drivers/mfd/twl4030.c   |    2 +-
 drivers/mfd/twl6030.c   |    2 +-
 drivers/nor/m25p80.c    |    2 +-
 drivers/spi/spi.c       |   24 ++++++++++++++++++++++++
 include/driver.h        |   15 ++++++++++++---
 include/i2c/i2c.h       |    8 ++++++++
 include/spi/spi.h       |    7 +++++++
 17 files changed, 138 insertions(+), 25 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
