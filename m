Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OkdRK-0000KD-57
	for barebox@lists.infradead.org; Sun, 15 Aug 2010 13:39:55 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Sun, 15 Aug 2010 16:39:23 +0300
Message-Id: <cover.1281877781.git.baruch@tkos.co.il>
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
Subject: [PATCH 0/5] imx: support for the IIM fusebox
To: barebox@lists.infradead.org

This patch series adds a driver for the IIM fusebox. As suggested by Sascha 
Hauer, this driver is implemented as a character device, which allows use of 
the standard md/mw commands to access the fuses.

The last patch in this series adds to the fec NIC driver the ability to fetch 
the MAC address from the IIM fusebox.

Baruch Siach (5):
  imx: move IIM registers to their own header
  imx: driver for the IIM fusebox
  imx25: add chip specific IIM fusebox defines
  imx25 3ds: add support for the iim fusebox driver
  fec: add support for IIM stored mac address

 arch/arm/boards/freescale-mx25-3-stack/3stack.c |   31 +++
 arch/arm/mach-imx/Kconfig                       |   18 ++
 arch/arm/mach-imx/Makefile                      |    1 +
 arch/arm/mach-imx/iim.c                         |  291 +++++++++++++++++++++++
 arch/arm/mach-imx/imx35.c                       |    1 +
 arch/arm/mach-imx/include/mach/iim.h            |   42 ++++
 arch/arm/mach-imx/include/mach/imx25-regs.h     |    6 +
 arch/arm/mach-imx/include/mach/imx35-regs.h     |   18 --
 drivers/net/fec_imx.c                           |   11 +
 9 files changed, 401 insertions(+), 18 deletions(-)
 create mode 100644 arch/arm/mach-imx/iim.c
 create mode 100644 arch/arm/mach-imx/include/mach/iim.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
