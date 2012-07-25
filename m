Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og105.obsmtp.com ([64.18.0.180])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Su41h-0001LH-Bc
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 16:01:30 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 25 Jul 2012 17:00:58 +0100
Message-Id: <1343232061-1789-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/3] ppc: Freescale TSEC driver.
To: barebox@lists.infradead.org

This patchset adds support for the Freescale Ethernet driver(TSEC).
It is tested on a P2020RDB board using the eTSEC3 interface(RGMII)
only.

Renaud Barbier (3):
  ppc: GIANFAR base address definition
  net: GIANFAR driver
  ppc: P2020RDB Ethernet configuration

 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c   |   38 ++
 arch/ppc/configs/p2020rdb_defconfig             |    6 +
 arch/ppc/mach-mpc85xx/include/mach/gianfar.h    |   31 ++
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h |    7 +
 drivers/net/Kconfig                             |    5 +
 drivers/net/Makefile                            |    1 +
 drivers/net/gianfar.c                           |  558 +++++++++++++++++++++++
 drivers/net/gianfar.h                           |  288 ++++++++++++
 8 files changed, 934 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/gianfar.h
 create mode 100644 drivers/net/gianfar.c
 create mode 100644 drivers/net/gianfar.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
