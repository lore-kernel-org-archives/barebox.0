Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTEk5-0008Rw-8v
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 16:32:42 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TTEk2-0004bK-Jk
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 17:32:38 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TTEk2-0005N3-Ie
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 17:32:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Oct 2012 17:32:35 +0100
Message-Id: <1351614757-20520-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] phylib delayed scan
To: barebox@lists.infradead.org

As mentioned scanning the mdiobus for devices can take some time which
unnecessarily delays the boot when no network is needed, so scan the bus
when somebody is interested in the devices.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      mdiobus: return existing phydev in mdiobus_scan
      mdiobus: do not scan the bus at registration time

 drivers/net/phy/mdio_bus.c |   26 ++++----------------------
 drivers/net/phy/phy.c      |    4 ++--
 2 files changed, 6 insertions(+), 24 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
