Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Fm7-0004pv-FN
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 09:15:56 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Sep 2019 11:15:38 +0200
Message-Id: <20190909091542.15671-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 0/4] stm32mp: add support for STPMIC1
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The STM32MP157C-DK2 has a PMIC on board. This series adds basic support
for it as well as a watchdog driver to validate it's working.

v1 -> v2:
	- replaced debug() with dev_dbg()
	- ceased modifying struct i2c_msg::buf and i2c_msg::len where noted
	- ported over i2c_parse_fw_timings helper
	All suggested by Sascha

Ahmad Fatoum (4):
  i2c: port Linux i2c_parse_fw_timings
  i2c: add stm32f7 I2C adapter driver
  mfd: add support for STPMIC1
  watchdog: add support for STPMIC1 integrated watchdog

 drivers/i2c/busses/Kconfig     |   5 +
 drivers/i2c/busses/Makefile    |   1 +
 drivers/i2c/busses/i2c-stm32.c | 863 +++++++++++++++++++++++++++++++++
 drivers/i2c/i2c.c              |  55 +++
 drivers/mfd/Kconfig            |   6 +
 drivers/mfd/Makefile           |   1 +
 drivers/mfd/stpmic1.c          |  99 ++++
 drivers/watchdog/Kconfig       |   7 +
 drivers/watchdog/Makefile      |   1 +
 drivers/watchdog/stpmic1_wdt.c | 223 +++++++++
 include/i2c/i2c.h              |  20 +
 11 files changed, 1281 insertions(+)
 create mode 100644 drivers/i2c/busses/i2c-stm32.c
 create mode 100644 drivers/mfd/stpmic1.c
 create mode 100644 drivers/watchdog/stpmic1_wdt.c

-- 
2.23.0



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
