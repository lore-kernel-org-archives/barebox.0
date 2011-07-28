Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLVU-0007jK-LW
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 07:59:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 09:59:36 +0200
Message-Id: <1311839985-11285-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: i.MX IIM module rework
To: barebox@lists.infradead.org

This series reworks the i.MX IIM module and adds support for more
SoCs.

Sascha Hauer (9):
      ARM i.MX: IIM rework
      ARM i.MX IIM: add support for more SoCs
      ARM i.MX IIM: Make explicit sensing the default
      ARM i.MX25 IIM: switch IIM support to use resources
      ARM i.MX35: Add IIM support
      ARM i.MX31: Add IIM support
      ARM i.MX51: Add IIM support
      ARM i.MX IIM: switch to resources
      ARM i.MX27: Add IIM support

 arch/arm/mach-imx/Kconfig                   |    2 +-
 arch/arm/mach-imx/iim.c                     |  102 ++++++++++++++-------------
 arch/arm/mach-imx/imx25.c                   |   39 ++---------
 arch/arm/mach-imx/imx27.c                   |   10 +++
 arch/arm/mach-imx/imx31.c                   |   11 +++
 arch/arm/mach-imx/imx35.c                   |   11 +++
 arch/arm/mach-imx/imx51.c                   |   10 +++
 arch/arm/mach-imx/include/mach/imx27-regs.h |    1 +
 8 files changed, 101 insertions(+), 85 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
