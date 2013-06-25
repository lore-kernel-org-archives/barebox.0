Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og104.obsmtp.com ([64.18.0.178])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrT0u-0007pY-J6
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 13:10:36 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 25 Jun 2013 14:09:58 +0100
Message-Id: <1372165800-18759-1-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1369926935-24159-1-git-send-email-renaud.barbier@ge.com>
References: <1369926935-24159-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH v2 0/2] gianfar: prevent resource conflict
To: barebox@lists.infradead.org

This patch v2 avoids resource conflicts between the gianfar port
instances by substituting dev_request_mem_region for
dev_get_mem_region.

In addition, it separates the MDIO buses from their Ethernet device
by creating MDIO bus devices to access the external bus and TBI
interfaces.

This patch is tested on the P2020RDB for which there are 3 MDIO buses:
- The main MDIO bus "gfar-mdio", linked to port eTSEC1 is used to
  connect external PHYs for all ports and map the internal TBI
  interface of eTSEC1.
- The MDIO buses "gfar-tpiphy" map TBI interface registers on all
  remaining ports.

Renaud Barbier (2):
  ppc: gianfar MDIO buses
  P2020RDB: update build configuration

 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c |   13 ++-
 arch/ppc/configs/p2020rdb_defconfig           |    4 +-
 arch/ppc/mach-mpc85xx/eth-devices.c           |   44 +++++---
 arch/ppc/mach-mpc85xx/include/mach/gianfar.h  |    4 +
 drivers/net/gianfar.c                         |  146 +++++++++++++++++++------
 drivers/net/gianfar.h                         |   13 ++-
 6 files changed, 165 insertions(+), 59 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
