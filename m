Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8URc-0003Rl-Ol
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 11:03:53 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  3 Sep 2012 13:03:45 +0200
Message-Id: <1346670227-1840-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 0/2] Add stmpe mfd
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi,

this adds support for a stmpe1601 mfd connected via i2c.
This was only tested with the gpiolib support from the previous patch-series
"ARM i.MX: add gpiolib support".

With v2 I added the dependency on gpiolib in the Kconfig file and removed the
hardcoded gpiobase by a platformdata-provided or dynamic gpiobase.

Regards,

Steffen


Steffen Trumtrar (2):
  mfd: add stmpe-i2c driver
  gpio: add driver for stmpe io-expander

 drivers/Kconfig           |    1 +
 drivers/gpio/Kconfig      |    9 +++
 drivers/gpio/Makefile     |    2 +
 drivers/gpio/gpio-stmpe.c |  162 +++++++++++++++++++++++++++++++++++++++++++
 drivers/mfd/Kconfig       |    4 ++
 drivers/mfd/Makefile      |    1 +
 drivers/mfd/stmpe-i2c.c   |  166 +++++++++++++++++++++++++++++++++++++++++++++
 include/mfd/stmpe-i2c.h   |   56 +++++++++++++++
 8 files changed, 401 insertions(+)
 create mode 100644 drivers/gpio/Kconfig
 create mode 100644 drivers/gpio/Makefile
 create mode 100644 drivers/gpio/gpio-stmpe.c
 create mode 100644 drivers/mfd/stmpe-i2c.c
 create mode 100644 include/mfd/stmpe-i2c.h

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
