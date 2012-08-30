Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og108.obsmtp.com ([64.18.0.186])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T75IH-0004jV-DX
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 14:00:26 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 30 Aug 2012 15:00:12 +0100
Message-Id: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/5] IMX i2c driver update for the PPC 85xx
To: barebox@lists.infradead.org

This patch replaces the patch "ppc: Freescale TSEC driver".
This patch set prepares the PPC 85xx SOC to use the IMX i2c driver and updates
the driver with specific clock settings.
The patch also introduces a function returning the system clock to calculate
the i2c frequency bus divider. Finally, the P2020RDB board support is updated
to test the driver on 8-bit and 16-bit I2C.

This patch has not been tested on a IMX board.

Renaud Barbier (5):
  mpc85xx: i2c frequency
  ppc/asm/fsl_i2c.h is removed
  mpc85xx: header update
  i2c: adapt the i2c-imx driver to mpc85xx machines.
  ppc: p2020rdb i2c support

 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c      |   18 +++-
 arch/ppc/configs/p2020rdb_defconfig                |    3 +
 arch/ppc/include/asm/fsl_i2c.h                     |   86 -------------------
 .../include/mach/{clocks.h => clock.h}             |    1 +
 arch/ppc/mach-mpc85xx/include/mach/generic.h       |   24 ++++++
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |    3 +
 arch/ppc/mach-mpc85xx/speed.c                      |   11 ++-
 arch/ppc/mach-mpc85xx/time.c                       |    2 +-
 drivers/i2c/busses/Kconfig                         |    4 +-
 drivers/i2c/busses/i2c-imx.c                       |   87 +++++++++++++++++++-
 10 files changed, 143 insertions(+), 96 deletions(-)
 delete mode 100644 arch/ppc/include/asm/fsl_i2c.h
 rename arch/ppc/mach-mpc85xx/include/mach/{clocks.h => clock.h} (91%)
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/generic.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
