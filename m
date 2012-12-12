Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TisPd-0002tq-Dc
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 19:56:18 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TisPa-0002u6-HZ
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 20:56:10 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TisPa-0000YL-Gf
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 20:56:10 +0100
Date: Wed, 12 Dec 2012 20:56:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121212195610.GA10369@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: stable update: v2012.12.1
To: barebox@lists.infradead.org

We have a fixup release for december. This fixes the generic phy
support

Sascha

----------------------------------------------------------------
Release v2012.12.1

Fixup release:

- Fix generic phy match no device making networkin nonfunctional
  on most boards

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      driver: introduce device_probe to manully probe a device
      phylib: fix generic phy driver probe

 drivers/base/driver.c     |   23 +++++++++++++++++------
 drivers/net/phy/Kconfig   |    8 ++------
 drivers/net/phy/Makefile  |    1 -
 drivers/net/phy/generic.c |   36 ------------------------------------
 drivers/net/phy/phy.c     |   34 ++++++++++++++++++++++++++++++++--
 include/driver.h          |    5 +++++
 6 files changed, 56 insertions(+), 51 deletions(-)
 delete mode 100644 drivers/net/phy/generic.c
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
