Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ol0P2-0000aI-LQ
	for barebox@lists.infradead.org; Mon, 16 Aug 2010 14:11:13 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Mon, 16 Aug 2010 17:10:32 +0300
Message-Id: <cover.1281966840.git.baruch@tkos.co.il>
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
Subject: [PATCH v2 0/6] imx: support for the IIM fusebox
To: barebox@lists.infradead.org

This patch series adds a driver for the IIM fusebox. As suggested by Sascha 
Hauer, this driver is implemented as a character device, which allows use of 
the standard md/mw commands to access the fuses.

Patches 3 and 6 also add to the fec_imx NIC driver the ability to fetch the MAC 
address from the IIM fusebox.

Changes from v1:

	* Put the imx_iim platform code in the imx25 code instead of the board 
	  code. This avoids code duplication in each board.

	* Move the MAC address fetch code into the imx_iim driver, and use 
	  platform data to pass the MAC address fusebox offset. This avoids 
	  ugly ifdefs in the fec_imx driver.

Baruch Siach (6):
  imx: move IIM registers to their own header
  imx: driver for the IIM fusebox
  imx iim: add mac address support
  imx25: add chip specific IIM fusebox defines
  imx25: add iim platform code
  fec_imx: add support for IIM stored mac address

 arch/arm/mach-imx/Kconfig                   |   18 ++
 arch/arm/mach-imx/Makefile                  |    1 +
 arch/arm/mach-imx/iim.c                     |  311 +++++++++++++++++++++++++++
 arch/arm/mach-imx/imx25.c                   |   44 ++++
 arch/arm/mach-imx/imx35.c                   |    1 +
 arch/arm/mach-imx/include/mach/iim.h        |   55 +++++
 arch/arm/mach-imx/include/mach/imx25-regs.h |    8 +-
 arch/arm/mach-imx/include/mach/imx35-regs.h |   18 --
 drivers/net/fec_imx.c                       |    4 +-
 9 files changed, 439 insertions(+), 21 deletions(-)
 create mode 100644 arch/arm/mach-imx/iim.c
 create mode 100644 arch/arm/mach-imx/include/mach/iim.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
