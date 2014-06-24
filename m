Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22a.google.com ([2a00:1450:400c:c05::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzNoK-0006XP-Ki
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 10:18:45 +0000
Received: by mail-wi0-f170.google.com with SMTP id cc10so5561813wib.3
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 03:18:21 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 24 Jun 2014 12:18:07 +0200
Message-Id: <1403605091-26174-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/4] Orion GBE fixes and Marvell PHY driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This patch set comprises some fixes and improvements related with ethernet
support on Marvell Orion SoC based boards.

Patch 1 adds a check for ePAPR standard "phy-connection-type" property to
of_get_phy_mode.

Patch 2 resolves a device name conflict on orion-gbe port names when using
more than one controller instance.

Patch 3 extends ethernet serial port setup to also check for delayed RGMII
interface modes.

Patch 4 finally adds a driver for Marvell PHYs with 88E1121R as a first
PHY driver.

The patches have been tested on Globalscale Guruplug. For ethernet, the
board needs a DT fix that has been picked up for Linux v3.16-rc yesterday
and should be available in barebox soon. For the second ethernet port,
barebox is still missing pinctrl for Kirkwood, but that is next on my
"polish private branches for submission"-TODO list.

Sebastian Hesselbarth (4):
  of: net: respect phy-connection-type property
  net: orion: generate unique port device names
  net: orion-gbe: extend RGMII detection to delayed modes
  net: phy: add support for Marvell PHY drivers

 drivers/net/orion-gbe.c   |   8 +-
 drivers/net/phy/Kconfig   |   5 ++
 drivers/net/phy/Makefile  |   1 +
 drivers/net/phy/marvell.c | 199 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/of/of_net.c       |   2 +
 5 files changed, 213 insertions(+), 2 deletions(-)
 create mode 100644 drivers/net/phy/marvell.c

---
Cc: barebox@lists.infradead.org
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
