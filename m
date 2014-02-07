Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBgsZ-0007KE-Fb
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:33:44 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WBgsD-0001PQ-JX
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 09:33:21 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WBgsD-0006Yc-IH
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 09:33:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Feb 2014 09:33:18 +0100
Message-Id: <1391762000-19451-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: match of_modaliases
To: barebox@lists.infradead.org

Right now barebox does not match the "vendor,device" compatible entries
in the devicetree. Implement this and also let the m25p80 driver match
to the different flash types, not only "m25p80".

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      i2c/spi: match of_modaliases
      mtd: m25p80: set driver id_table

 drivers/base/bus.c           | 37 +++++++++++++++++++++++++++++++++++++
 drivers/i2c/i2c.c            |  2 +-
 drivers/mtd/devices/m25p80.c | 16 ++++++----------
 drivers/spi/spi.c            |  2 +-
 include/driver.h             |  3 ++-
 5 files changed, 47 insertions(+), 13 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
