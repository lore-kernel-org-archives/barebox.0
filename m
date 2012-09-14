Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo5.mail-out.ovh.net ([46.105.47.167]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TCQZk-0001oj-Hx
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 07:44:33 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 1BA57FFA8F0
 for <barebox@lists.infradead.org>; Fri, 14 Sep 2012 09:46:08 +0200 (CEST)
Date: Fri, 14 Sep 2012 09:37:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120914073755.GD20834@game.jcrosoft.org>
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
Subject: [PATCH 0/3 v3] net: check error and introduce phylib
To: barebox@lists.infradead.org


HI,

	v3:
	 - fix comment
	 - add phy_driver probe and remove
	 - renambe phydev.h to phy.h and phylib.c to phy.c as in linux

please pull
The following changes since commit 8b3bf5971afbdf1acc5becabb6f15ba4b2a5559d:

  tap: fix missing parent setting on eth_device (2012-09-12 17:26:26 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/net_phylib

for you to fetch changes up to 4b7293febd1176262e3bfe2a3ecf37c0298675d8:

  net: move the eth_dev status detection at driver level (2012-09-14 15:34:03 +0800)

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
Jean-Christophe PLAGNIOL-VILLARD (3):
      net: introduce phylib
      net: catch error on eth_send
      net: move the eth_dev status detection at driver level

 drivers/net/Kconfig        |    2 +
 drivers/net/Makefile       |    2 +-
 drivers/net/altera_tse.c   |   18 ++---
 drivers/net/altera_tse.h   |    1 +
 drivers/net/at91_ether.c   |   26 +++----
 drivers/net/cs8900.c       |    1 +
 drivers/net/designware.c   |   40 ++++++-----
 drivers/net/dm9k.c         |    9 +--
 drivers/net/ep93xx.c       |    7 +-
 drivers/net/fec_imx.c      |   45 ++++++------
 drivers/net/fec_imx.h      |    1 +
 drivers/net/fec_mpc5200.c  |    9 +--
 drivers/net/gianfar.c      |   30 ++++----
 drivers/net/ks8851_mll.c   |   11 ++-
 drivers/net/macb.c         |   40 +++++++----
 drivers/net/miidev.c       |  206 ++++---------------------------------------------------
 drivers/net/netx_eth.c     |    7 +-
 drivers/net/phy/Kconfig    |   17 +++++
 drivers/net/phy/Makefile   |    2 +
 drivers/net/phy/generic.c  |   36 ++++++++++
 drivers/net/phy/phy.c      |  624 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/smc91111.c     |   20 ++----
 drivers/net/smc911x.c      |   12 ++--
 drivers/net/tap.c          |    1 +
 drivers/net/usb/asix.c     |    2 +-
 drivers/net/usb/smsc95xx.c |    2 +-
 drivers/net/usb/usbnet.c   |   11 +--
 include/linux/ethtool.h    |  114 ++++++++++++++++++++++++++++++
 include/linux/mii.h        |  421 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------------
 include/miidev.h           |   13 +---
 include/phy.h              |  146 +++++++++++++++++++++++++++++++++++++++
 include/usb/usbnet.h       |    1 +
 net/eth.c                  |    4 +-
 net/net.c                  |   18 +++--
 34 files changed, 1443 insertions(+), 456 deletions(-)
 create mode 100644 drivers/net/phy/Kconfig
 create mode 100644 drivers/net/phy/Makefile
 create mode 100644 drivers/net/phy/generic.c
 create mode 100644 drivers/net/phy/phy.c
 create mode 100644 include/linux/ethtool.h
 create mode 100644 include/phy.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
