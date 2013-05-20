Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeWQu-0000ZW-Nk
 for barebox@lists.infradead.org; Mon, 20 May 2013 20:11:49 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UeWQY-0005nK-Gp
 for barebox@lists.infradead.org; Mon, 20 May 2013 22:11:26 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UeWQY-00033O-FX
 for barebox@lists.infradead.org; Mon, 20 May 2013 22:11:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 May 2013 22:11:19 +0200
Message-Id: <1369080684-11138-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: 
To: barebox@lists.infradead.org

The following adds devicetree support to the i2c core and
the fsl i2c driver.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      i2c: Add missing result check
      i2c: remove dead code
      i2c: Add support for dynamic i2c bus numbers
      i2c: Add devicetree support
      i2c: fsl: Add devicetree probe support

 drivers/i2c/busses/i2c-imx.c | 10 ++++++
 drivers/i2c/i2c.c            | 76 ++++++++++++++++++++++++++++++++++----------
 include/i2c/i2c.h            |  1 +
 3 files changed, 70 insertions(+), 17 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
