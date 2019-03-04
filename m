Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0jkF-0001uW-BW
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 09:18:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 10:18:33 +0100
Message-Id: <20190304091843.17839-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/10] i2c: i.MX more cleanup, early driver
To: Barebox List <barebox@lists.infradead.org>

These are more cleanups to the i.MX i2c driver. As the last patch an
early i2c driver for use in PBL is added. This is needed for reading
the SPD data for upcoming Layerscape support.

Sascha

Sascha Hauer (10):
  i2c: i.MX: remove unnecesary define
  i2c: i.MX: remove unnecessary ifdef
  i2c: i.MX: Fix FSL_I2C_DFSRR register offset
  i2c: i.MX: remove unnecessary ifdef
  i2c: i.MX: Consolidate status polling loops
  i2c: i.MX: stop after read only in last transfer of a message
  i2c: i.MX: remove unused define
  i2c: i.MX: Read clock-frequency from device tree
  i2c: i.MX: Create header file for register defines
  i2c: i.MX: Add early driver for use in PBL

 drivers/i2c/Kconfig                |   3 +
 drivers/i2c/busses/Makefile        |   1 +
 drivers/i2c/busses/i2c-imx-early.c | 310 +++++++++++++++++++++++++++++
 drivers/i2c/busses/i2c-imx.c       | 157 ++++-----------
 drivers/i2c/busses/i2c-imx.h       |  52 +++++
 include/i2c/i2c-early.h            |  10 +
 6 files changed, 419 insertions(+), 114 deletions(-)
 create mode 100644 drivers/i2c/busses/i2c-imx-early.c
 create mode 100644 drivers/i2c/busses/i2c-imx.h
 create mode 100644 include/i2c/i2c-early.h

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
