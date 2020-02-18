Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44wK-0004a5-QH
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 15:37:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Feb 2020 16:37:26 +0100
Message-Id: <20200218153732.14845-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/6] i.MX: Fix external NAND boot
To: Barebox List <barebox@lists.infradead.org>

The external NAND boot on i.MX is broken since b0348d677b ("ARM: Compile
with -fPIE"). This series fixes it.

Sascha Hauer (6):
  ARM: i.MX Phytec phycard i.MX27: get fdt in common init function
  ARM: i.MX Phytec phycard i.MX27: replace __naked with noinline
  ARM: i.MX Phytec phycore i.MX27: replace __naked with noinline
  ARM: i.MX: external NAND boot: remove unnecessary arguments from
    imx*_nand_load_image
  ARM: i.MX: external NAND boot: Leave icache disabled
  ARM: i.MX: external NAND boot: Fix passing boarddata

 arch/arm/boards/eukrea_cpuimx25/lowlevel.c    |   2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c    |   2 +-
 arch/arm/boards/guf-cupid/lowlevel.c          |   2 +-
 arch/arm/boards/guf-neso/lowlevel.c           |   2 +-
 arch/arm/boards/karo-tx25/lowlevel.c          |  34 ++-
 .../boards/phytec-phycard-imx27/lowlevel.c    |  38 ++-
 .../boards/phytec-phycore-imx27/lowlevel.c    |  36 ++-
 .../boards/phytec-phycore-imx31/lowlevel.c    |   2 +-
 .../boards/phytec-phycore-imx35/lowlevel.c    |   2 +-
 arch/arm/cpu/lowlevel.S                       |   2 +
 arch/arm/mach-imx/external-nand-boot.c        | 274 ++++++++++--------
 arch/arm/mach-imx/include/mach/imx-nand.h     |  19 +-
 12 files changed, 248 insertions(+), 167 deletions(-)

-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
