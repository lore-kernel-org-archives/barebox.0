Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og107.obsmtp.com ([64.18.0.184])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEjer-0003MT-Lr
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 16:31:22 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 20 Sep 2012 17:31:04 +0100
Message-Id: <1348158669-14034-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/5] gianfar: mdio bus support
To: barebox@lists.infradead.org

This patch set removes the mdio bus registration and phy access functions from
the Ethernet driver. The mdio bus is registered independently.
The Ethernet driver then finds the mii device by name to have access
to the PHYs.
Since the mdio bus requires to be reset, a reset function is added to the
mii_device structure. The reset function is called when a PHY is 
connected by the Ethernet driver.

Renaud Barbier (5):
  phylib: bus reset function
  FSL mdio bus support
  gianfar update
  FSL mdio: configuration and build file
  P2020rdb: eTSEC2 support

 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c |   25 ++++-
 arch/ppc/include/asm/fsl_mdio.h               |   11 ++
 arch/ppc/mach-mpc85xx/eth-devices.c           |   14 +--
 arch/ppc/mach-mpc85xx/include/mach/gianfar.h  |    2 +
 drivers/net/Kconfig                           |    5 +
 drivers/net/Makefile                          |    1 +
 drivers/net/fsl_mdio.c                        |  134 +++++++++++++++++++++++++
 drivers/net/gianfar.c                         |  127 ++++--------------------
 drivers/net/gianfar.h                         |    3 +-
 drivers/net/phy/phy.c                         |    3 +
 include/miidev.h                              |    1 +
 11 files changed, 204 insertions(+), 122 deletions(-)
 create mode 100644 arch/ppc/include/asm/fsl_mdio.h
 create mode 100644 drivers/net/fsl_mdio.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
