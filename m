Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5UR-0006xO-1v
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:19:24 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Wn5Ty-0004Wn-Fo
 for barebox@lists.infradead.org; Wed, 21 May 2014 14:18:54 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1Wn5U5-0001xG-K0
 for barebox@lists.infradead.org; Wed, 21 May 2014 14:19:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:18:50 +0200
Message-Id: <1400674740-6467-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] devicetree support for ethernet phys
To: barebox@lists.infradead.org

This series adds support for specifying ethernet phys in the
devicetree and to connect them with ethernet devices. We already
have beginning support for that used in the orion-gbe driver.
This series has the advantage that the devicetree handling is
completely transparent to the ethernet driver as long as it
fills in the device_nodes of the devices correctly. Also support
for limiting the speed in devicetree is added. This is useful
for boards which have gigabit controllers and gigabit phys but
only 100MBit magnetics.

Sascha

----------------------------------------------------------------
Sascha Hauer (10):
      net: phy: factor out phy_device_attach function
      net: phy: move setting of phy_map to phy_register_device
      net: phy: register phys specified in devicetree
      net: phy: Support finding a phy in the devicetree
      net: phy: Support limiting phy speed in the devicetree
      net: orion-gbe: use transparent-to-driver of mdio functions
      net: phy: remove now unused of_phy_device_connect
      net: phy: genphy: always write MII_CTRL1000 when available
      net: phy: genphy: Make it work with of_set_phy_supported
      net: fec_imx: Add devicetree support for mdio bus

 drivers/net/fec_imx.c        |   5 ++
 drivers/net/orion-gbe.c      |  62 +++++++++-------
 drivers/net/phy/mdio-mvebu.c |   1 +
 drivers/net/phy/mdio_bus.c   | 107 ++++++++++++++++++++++++++-
 drivers/net/phy/phy.c        | 169 ++++++++++++++++++++++++-------------------
 include/linux/phy.h          |  36 ++++-----
 6 files changed, 253 insertions(+), 127 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
