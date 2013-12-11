Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqiAf-0000h9-PI
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 11:41:46 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VqiAJ-0002qp-En
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 12:41:19 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1VqiAJ-0002Ru-Dd
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 12:41:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Dec 2013 12:41:08 +0100
Message-Id: <1386762077-23205-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: mii patches
To: barebox@lists.infradead.org

This makes mii phys found on mii buses available independently of
networks devices. Also it makes all phy devices visible to the
user, not only the one attached to an ethernet device. This makes
the miitool command (or simpler: md -w -s /dev/phyx) more useful

The current mii code allows to only register a phy device when
there's an ethernet device around. This dependency is removed so
that it's possible to register phys without ethernet devices.

With this series the miitool gets a -s option to scan all registered
mii buses for devices which can be examined afterwards. This is
implemented with the device 'detect' mechanism, so a 'detect -a'
or 'detect miibus0' is also possible to detect phys.

Sascha

----------------------------------------------------------------
Sascha Hauer (9):
      net: phy: cleanup attached device handling
      net: phy: bail out early in phy_device_connect
      net: phy: move duplicated code out of if/else
      net: phy: check if a phy already has an ethernet device
      net: phy: track registered state of a phy device
      net: phy: move phy_init_hw to phy_device_connect
      net: phy: Track mii buses on a list
      net: phy: implement detect callback for miibus devices
      miitool: Add option to scan mii buses

 commands/miitool.c         |  12 ++++-
 drivers/net/phy/mdio_bus.c |  49 ++++++++++++++++-----
 drivers/net/phy/phy.c      | 106 ++++++++++++++++++++++++++-------------------
 include/linux/phy.h        |  12 +++++
 4 files changed, 120 insertions(+), 59 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
