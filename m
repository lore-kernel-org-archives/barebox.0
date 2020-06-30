Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqCtX-0002WY-J1
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 09:49:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jqCtU-0001rC-0c
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 11:49:36 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jqCtT-0003lv-Og
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 11:49:35 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Tue, 30 Jun 2020 11:49:32 +0200
Message-Id: <20200630094934.18228-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] drivers: net: phy: at803x: add clk setup with dt
To: barebox@lists.infradead.org

This series makes the first step to remove the phy_fixups for at80xx
phys, which is usually hardcoded to prepare clk, delay and SmartEEE
glitch fixup. With further support of all these settings in the dts, the
fixups can be removed.

Michael Grzeschik (2):
  net: phy: add uapi/linux/mdio.h from kernel for MDIO MMD access
  drivers: net: phy: at803x: add phy clk setup via dts

 drivers/net/phy/at803x.c  | 181 ++++++++++++++++++++-
 drivers/net/phy/dp83867.c |   3 +-
 drivers/net/phy/micrel.c  |   5 +-
 include/uapi/linux/mdio.h | 327 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 507 insertions(+), 9 deletions(-)
 create mode 100644 include/uapi/linux/mdio.h

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
