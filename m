Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6FmG-0004gY-DR
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 13:27:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Apr 2018 15:26:50 +0200
Message-Id: <20180411132654.10620-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/4] Fix NAND controller clock for i.MX6plus
To: Barebox List <barebox@lists.infradead.org>

The i.MX6 plus SoC variants have some changes in the clock controller,
start integrating them beginning with the NAND controller clock.
Before doing so we have to add proper detection code for the i.MX6 plus.

Sascha Hauer (4):
  ARM: i.MX6: de-inline i.MX6 type detection
  ARM: i.MX6: factor out function to read si_rev
  ARM: i.MX6: Add cpu type for 'plus' variants
  clk: i.MX6: Fix enfc_sel for i.MX6dqp

 arch/arm/boards/phytec-som-imx6/board.c   |  2 +-
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c |  4 +-
 arch/arm/mach-imx/imx6.c                  | 42 +++++++++++++---
 arch/arm/mach-imx/include/mach/imx6.h     | 81 +++++++++++++++++--------------
 drivers/clk/imx/clk-imx6.c                | 19 +++++++-
 5 files changed, 99 insertions(+), 49 deletions(-)

-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
