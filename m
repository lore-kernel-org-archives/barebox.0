Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og110.obsmtp.com ([64.18.0.20])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SykoQ-0005XW-Gb
 for barebox@lists.infradead.org; Tue, 07 Aug 2012 14:31:11 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  7 Aug 2012 15:30:54 +0100
Message-Id: <1344349858-6068-1-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1343232061-1789-1-git-send-email-renaud.barbier@ge.com>
References: <1343232061-1789-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH V2 0/4] ppc: Freescale TSEC driver
To: barebox@lists.infradead.org

The patchset v2 addresses the comments from version 1. 'printf' in the
Ethernet driver are replaced by dev_dbg, dev_err or dev_info and excessive
NULL checkings are removed. The platform Ethernet initialization is a
generic architecture function (moved to mach-mpc85xx).
Finally, the send function uses 'is_timeout' to wait for packet 
transmission but the send function still uses 2 descriptors as using only
one fails.

Renaud Barbier (4):
  ppc: GIANFAR base address definition
  net: GIANFAR driver
  fsl: Freescale TSEC specific initialization.
  ppc: P2020RDB Ethernet configuration

 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c   |   14 +
 arch/ppc/configs/p2020rdb_defconfig             |    6 +
 arch/ppc/mach-mpc85xx/Makefile                  |    1 +
 arch/ppc/mach-mpc85xx/eth-devices.c             |   49 ++
 arch/ppc/mach-mpc85xx/include/mach/gianfar.h    |   31 ++
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h |    7 +
 drivers/net/Kconfig                             |    5 +
 drivers/net/Makefile                            |    1 +
 drivers/net/gianfar.c                           |  548 +++++++++++++++++++++++
 drivers/net/gianfar.h                           |  284 ++++++++++++
 10 files changed, 946 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/mach-mpc85xx/eth-devices.c
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/gianfar.h
 create mode 100644 drivers/net/gianfar.c
 create mode 100644 drivers/net/gianfar.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
