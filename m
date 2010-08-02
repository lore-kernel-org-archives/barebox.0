Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oftg1-0007id-EY
	for barebox@lists.infradead.org; Mon, 02 Aug 2010 11:59:30 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Mon,  2 Aug 2010 14:58:50 +0300
Message-Id: <cover.1280749932.git.baruch@tkos.co.il>
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
Subject: [PATCH 0/3] arm/imx: serial number / UID support
To: barebox@lists.infradead.org

This patch series adds support for the serial ATAG, and uses this functionality 
to pass the i.MX25 chip UID as a serial number to the Linux kernel.

Baruch Siach (3):
  arm: add support for the serial ATAG
  imx25: add support for UID read from eFuse
  mx25 3ds: set CPU UID

 arch/arm/boards/freescale-mx25-3-stack/3stack.c |    2 ++
 arch/arm/include/asm/armlinux.h                 |    4 ++++
 arch/arm/lib/armlinux.c                         |   19 +++++++++++++++++++
 arch/arm/mach-imx/imx25.c                       |   12 ++++++++++++
 arch/arm/mach-imx/include/mach/generic.h        |    1 +
 arch/arm/mach-imx/include/mach/imx25-regs.h     |    3 +++
 6 files changed, 41 insertions(+), 0 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
