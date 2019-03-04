Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0nUf-0002DW-6O
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 13:18:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 14:18:48 +0100
Message-Id: <20190304131853.30864-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/5] ESDHC xload: Prepare for Layerscape support
To: Barebox List <barebox@lists.infradead.org>

The i.MX ESDHC xload support needs some preparations before Layerscape
support can be added. These are done here, the actual Layerscape support
comes in a later series.

Sascha

Sascha Hauer (5):
  esdhc-xload: Move to drivers/mci
  esdhc-xload: move some register defines to header file
  esdhc-xload: Use static inline io wrappers
  esdhc-xload: Add bigendian support
  esdhc-xload: check for PRSSTAT_BREN only after each block

 arch/arm/mach-imx/Kconfig                     |   2 +
 arch/arm/mach-imx/Makefile                    |   2 +-
 drivers/mci/Kconfig                           |   3 +
 drivers/mci/Makefile                          |   1 +
 .../mci/imx-esdhc-pbl.c                       | 105 +++++++++++-------
 drivers/mci/imx-esdhc.c                       |   9 --
 drivers/mci/imx-esdhc.h                       |   8 ++
 7 files changed, 79 insertions(+), 51 deletions(-)
 rename arch/arm/mach-imx/xload-esdhc.c => drivers/mci/imx-esdhc-pbl.c (79%)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
