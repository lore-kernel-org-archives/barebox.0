Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TFMfP-0006QO-FR
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 10:10:37 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 66BDAFFAAB2
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 12:16:23 +0200 (CEST)
Date: Sat, 22 Sep 2012 12:07:57 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120922100757.GR26553@game.jcrosoft.org>
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
Subject: [PATCH 0/1 v6] net: introduce phylib
To: barebox@lists.infradead.org

HI,

	v6:
	- probe phy at mdiobus_register
	- reimplement the mdiobuss support

	v5:
	 - drop edev in mii_device

	v4:
	 - move phy_dev attachement to eth_device instead of mii_device
	   this will allow multiple phy_device per mii bus
	 - move phy cdev to phy_device
	 - add interface type support (so phy driver can configure themselves
	   if MII/RMII/RGMII etc...
	 - manage link status at framework level
	 - mx6 update to fixup the phy at device opening

	v3:
	 - fix comment
	 - add phy_driver probe and remove
	 - renambe phydev.h to phy.h and phylib.c to phy.c as in linux

please pull
The following changes since commit 0b3c3e77945243c262f9ff1275479e6d8ea1d5c3:

  net: catch error on eth_send (2012-09-16 20:39:07 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/net_phylib

for you to fetch changes up to c63381861263795d452b8acd1732163a728d8bc5:

  net: introduce phylib (2012-09-22 13:16:11 +0800)

----------------------------------------------------------------
net: check error and introduce phylib

Adapt phylib from linux

This will allow to have
 - phy drivers
 - to only connect the phy at then opening of the device
 - if the phy is not ready or down fail on open

Same behaviour as in linux and will allow to share code and simplify porting.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (1):
      net: introduce phylib

 arch/arm/boards/freescale-mx6-arm2/board.c      |   43 +++++--------
 arch/arm/boards/freescale-mx6-sabrelite/board.c |   40 +++++--------
 arch/arm/configs/phycard_a_l1_defconfig         |    2 +-
 arch/arm/configs/tx51stk5_defconfig             |    2 +-
 drivers/net/Kconfig                             |   30 +++++-----
 drivers/net/Makefile                            |    2 +-
 drivers/net/altera_tse.c                        |   48 +++++++--------
 drivers/net/altera_tse.h                        |    3 +-
 drivers/net/at91_ether.c                        |   49 ++++++++-------
 drivers/net/designware.c                        |   62 ++++++++++---------
 drivers/net/dm9k.c                              |   50 +++++++---------
 drivers/net/ep93xx.c                            |   35 ++++++-----
 drivers/net/ep93xx.h                            |    2 +-
 drivers/net/fec_imx.c                           |   89 +++++++++++++++------------
 drivers/net/fec_imx.h                           |    6 +-
 drivers/net/fec_mpc5200.c                       |   54 ++++++++++-------
 drivers/net/fec_mpc5200.h                       |    4 +-
 drivers/net/gianfar.c                           |   61 ++++++++-----------
 drivers/net/gianfar.h                           |    2 +-
 drivers/net/ks8851_mll.c                        |   36 +++++------
 drivers/net/macb.c                              |   79 ++++++++++++++----------
 drivers/net/miidev.c                            |  316 ------------------------------------------------------------------------------------------------
 drivers/net/netx_eth.c                          |   26 ++++----
 drivers/net/phy/Kconfig                         |   17 ++++++
 drivers/net/phy/Makefile                        |    2 +
 drivers/net/phy/generic.c                       |   36 +++++++++++
 drivers/net/phy/mdio_bus.c                      |  250 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/phy/phy.c                           |  568 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/smc91111.c                          |   47 ++++++---------
 drivers/net/smc911x.c                           |   37 ++++++------
 drivers/net/usb/Kconfig                         |    4 +-
 drivers/net/usb/asix.c                          |   29 ++++-----
 drivers/net/usb/smsc95xx.c                      |   41 ++++++-------
 drivers/net/usb/usbnet.c                        |   11 +---
 include/fec.h                                   |    3 +
 include/linux/ethtool.h                         |  114 +++++++++++++++++++++++++++++++++++
 include/linux/mii.h                             |  421 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------------------------------
 include/linux/phy.h                             |  266 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/miidev.h                                |   51 +++-------------
 include/net.h                                   |    4 ++
 include/usb/usbnet.h                            |    5 +-
 net/eth.c                                       |    8 ++-
 42 files changed, 2034 insertions(+), 921 deletions(-)
 delete mode 100644 drivers/net/miidev.c
 create mode 100644 drivers/net/phy/Kconfig
 create mode 100644 drivers/net/phy/Makefile
 create mode 100644 drivers/net/phy/generic.c
 create mode 100644 drivers/net/phy/mdio_bus.c
 create mode 100644 drivers/net/phy/phy.c
 create mode 100644 include/linux/ethtool.h
 create mode 100644 include/linux/phy.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
