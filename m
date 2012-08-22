Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og106.obsmtp.com ([64.18.0.182])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T4CYJ-0007y4-4t
 for barebox@lists.infradead.org; Wed, 22 Aug 2012 15:09:03 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 22 Aug 2012 16:08:50 +0100
Message-Id: <1345648133-31721-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/3] Freescale I2C driver
To: barebox@lists.infradead.org

This patch set introduces the Freescale I2C driver. It is tested on the
P2020RDB board using i2c devices(8-bit and 16-bit) found on both SOC buses.
A function is also added to the mpc85xx architecture to return the system
frequency used to calculate the i2c frequency bus divider.

Renaud Barbier (3):
  mpc85xx: i2c frequency
  Freescale I2C driver
  ppc: p2020rdb i2c support

 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c |   20 ++-
 arch/ppc/configs/p2020rdb_defconfig           |    3 +
 arch/ppc/include/asm/fsl_i2c.h                |   80 +++----
 arch/ppc/mach-mpc85xx/include/mach/clocks.h   |    1 +
 arch/ppc/mach-mpc85xx/speed.c                 |    9 +
 drivers/i2c/busses/Kconfig                    |    4 +
 drivers/i2c/busses/Makefile                   |    1 +
 drivers/i2c/busses/i2c-fsl.c                  |  356 +++++++++++++++++++++++++
 8 files changed, 425 insertions(+), 49 deletions(-)
 create mode 100644 drivers/i2c/busses/i2c-fsl.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
