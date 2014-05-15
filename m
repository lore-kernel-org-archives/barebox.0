Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkpDb-0000rL-3T
 for barebox@lists.infradead.org; Thu, 15 May 2014 06:32:39 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WkpD9-00033A-GO
 for barebox@lists.infradead.org; Thu, 15 May 2014 08:32:11 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WkpDF-000856-BG
 for barebox@lists.infradead.org; Thu, 15 May 2014 08:32:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 08:32:11 +0200
Message-Id: <1400135535-29312-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Multi network device improvements
To: barebox@lists.infradead.org

Currently all network packets go through the current ethernet device.
This means when the interface is changed with the ethact command all
existing NFS mounts / TFTP mounts become nonfunctional because the
packets go to the wrong interface. This series fixes that. Also
the 'ifup' command now changes the current interface to the one to
be brought up. Otherwise the correct interface is configured, but
for example dhcp requests would go out the current interface which
may be the wrong one.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      net: ifup: Set current ethernet device when doing ifup
      net: Pass eth_device to net_receive
      net: Allow to use multiple network interfaces at once
      net: phy: Print ethernet device in the link information

 drivers/net/altera_tse.c   |  2 +-
 drivers/net/ar231x.c       |  2 +-
 drivers/net/arc_emac.c     |  2 +-
 drivers/net/at91_ether.c   |  2 +-
 drivers/net/cpsw.c         |  2 +-
 drivers/net/cs8900.c       |  2 +-
 drivers/net/davinci_emac.c |  2 +-
 drivers/net/designware.c   |  2 +-
 drivers/net/dm9k.c         |  2 +-
 drivers/net/ep93xx.c       |  2 +-
 drivers/net/ethoc.c        |  2 +-
 drivers/net/fec_imx.c      |  2 +-
 drivers/net/fec_mpc5200.c  |  2 +-
 drivers/net/gianfar.c      |  2 +-
 drivers/net/ks8851_mll.c   |  2 +-
 drivers/net/macb.c         |  4 ++--
 drivers/net/netx_eth.c     |  2 +-
 drivers/net/orion-gbe.c    |  2 +-
 drivers/net/phy/phy.c      |  2 +-
 drivers/net/smc91111.c     |  2 +-
 drivers/net/smc911x.c      |  2 +-
 drivers/net/tap.c          |  2 +-
 drivers/net/usb/asix.c     |  2 +-
 drivers/net/usb/smsc95xx.c |  4 ++--
 drivers/net/usb/usbnet.c   |  2 +-
 drivers/net/xgmac.c        |  2 +-
 include/net.h              |  5 ++--
 net/eth.c                  | 58 +++++++++++++++++++++++++---------------------
 net/ifup.c                 |  2 ++
 net/net.c                  | 21 ++++++++---------
 30 files changed, 74 insertions(+), 68 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
