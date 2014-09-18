Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XUVsZ-0001gm-SA
 for barebox@lists.infradead.org; Thu, 18 Sep 2014 07:11:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XUVs4-0004kw-En
 for barebox@lists.infradead.org; Thu, 18 Sep 2014 09:11:16 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XUVs4-0000kF-Dv
 for barebox@lists.infradead.org; Thu, 18 Sep 2014 09:11:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Sep 2014 09:11:11 +0200
Message-Id: <1411024275-31766-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: net: phy updates
To: barebox@lists.infradead.org

This series gets direct phy register accesses out of the generic code
path. This is necessary for phys which have a different register
layout not handled correctly by the generic code. Also the phy link
status check is moved to a poller callback. With this we get periodic
link status updates printed on the console.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      net: phy: introduce phy_aneg_done
      net: phy: Use xzalloc for small allocations
      net: phy: don't use 'dev' as name for variables of type struct phy_device
      net: phy: Use poller for periodic link check

 drivers/net/Kconfig   |   1 +
 drivers/net/phy/phy.c | 189 +++++++++++++++++++++++++++++++++-----------------
 include/linux/phy.h   |   4 ++
 net/eth.c             |  23 ++----
 4 files changed, 139 insertions(+), 78 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
