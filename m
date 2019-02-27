Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyuRY-0004Jx-Mq
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 08:19:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Feb 2019 09:19:40 +0100
Message-Id: <20190227081945.27001-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/5] i2c: i.MX driver some cleanup
To: Barebox List <barebox@lists.infradead.org>

Some small improvements for the i.MX I2C driver.

Sascha Hauer (5):
  i2c: i.MX: Do not call i2c_fsl_bus_busy twice
  i2c: i.MX: move disabling of controller out of i2c_fsl_stop
  i2c: i.MX: Track stopped status in I2CR_MSTA bit
  i2c: i.MX: consolidate code
  i2c: i.MX: fix variable name

 drivers/i2c/busses/i2c-imx.c | 121 +++++++++++++----------------------
 1 file changed, 46 insertions(+), 75 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
