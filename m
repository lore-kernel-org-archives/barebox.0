Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo5.mail-out.ovh.net ([178.32.119.138]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TDEDb-00036h-U5
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 12:45:01 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 22A71FF9925
 for <barebox@lists.infradead.org>; Sun, 16 Sep 2012 14:50:40 +0200 (CEST)
Date: Sun, 16 Sep 2012 14:42:23 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120916124223.GK25990@game.jcrosoft.org>
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
Subject: [PATCH 0/3 v4] net: introduce phylib
To: barebox@lists.infradead.org

HI,

	v4:
	 - move phy_dev attachement to eth_device instead of mii_device
	   this will allow multiple phy_device per mii bus
	 - move phy cdev to phy_device
	 - add interface type support (so phy driver can configure themselves
	   if MII/RMII/RGMII etc...
	 - manage link status at framework level
	 - mx6 udpdate to fixup the phy at device opening

	v3:
	 - fix comment
	 - add phy_driver probe and remove
	 - renambe phydev.h to phy.h and phylib.c to phy.c as in linux

please pull
The following changes since commit 0b3c3e77945243c262f9ff1275479e6d8ea1d5c3:

  net: catch error on eth_send (2012-09-16 20:39:07 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/net_phylib

for you to fetch changes up to f58d255dd01b394607ade918fa7f61a6d13c7f6b:

  net: introduce phylib (2012-09-16 20:39:21 +0800)

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

 arch/arm/boards/freescale-mx6-arm2/board.c      |   41 ++++-----
 arch/arm/boards/freescale-mx6-sabrelite/board.c |   38 +++------
 drivers/net/Kconfig                             |    2 +
 drivers/net/Makefile                            |    2 +-
 drivers/net/altera_tse.c                        |   19 ++---
 drivers/net/altera_tse.h                        |    1 +
 drivers/net/at91_ether.c                        |   31 ++++---
 drivers/net/designware.c                        |   39 +++++----
 drivers/net/dm9k.c                              |   11 +--
 drivers/net/ep93xx.c                            |    9 +-
 drivers/net/fec_imx.c                           |   64 +++++++++-----
 drivers/net/fec_imx.h                           |    4 +
 drivers/net/fec_mpc5200.c                       |   26 ++++--
 drivers/net/gianfar.c                           |   34 +++-----
 drivers/net/ks8851_mll.c                        |   13 ++-
 drivers/net/macb.c                              |   56 +++++++-----
 drivers/net/miidev.c                            |  250 +----------------------------------------------------
 drivers/net/netx_eth.c                          |    9 +-
 drivers/net/phy/Kconfig                         |   17 ++++
 drivers/net/phy/Makefile                        |    2 +
 drivers/net/phy/generic.c                       |   36 ++++++++
 drivers/net/phy/phy.c                           |  688 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/smc91111.c                          |   22 ++---
 drivers/net/smc911x.c                           |   14 ++-
 drivers/net/usb/asix.c                          |    3 +-
 drivers/net/usb/smsc95xx.c                      |    3 +-
 drivers/net/usb/usbnet.c                        |   11 +--
 include/fec.h                                   |    3 +
 include/linux/ethtool.h                         |  114 +++++++++++++++++++++++++
 include/linux/mii.h                             |  421 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------
 include/linux/phy.h                             |  206 ++++++++++++++++++++++++++++++++++++++++++++
 include/miidev.h                                |   18 ----
 include/net.h                                   |    4 +
 include/usb/usbnet.h                            |    1 +
 net/eth.c                                       |    6 +-
 35 files changed, 1628 insertions(+), 590 deletions(-)
 create mode 100644 drivers/net/phy/Kconfig
 create mode 100644 drivers/net/phy/Makefile
 create mode 100644 drivers/net/phy/generic.c
 create mode 100644 drivers/net/phy/phy.c
 create mode 100644 include/linux/ethtool.h
 create mode 100644 include/linux/phy.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
