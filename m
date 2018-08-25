Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ftfie-0006BZ-Du
 for barebox@lists.infradead.org; Sat, 25 Aug 2018 21:03:41 +0000
Received: by mail-pl1-x644.google.com with SMTP id d9-v6so2477566plr.2
 for <barebox@lists.infradead.org>; Sat, 25 Aug 2018 14:03:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 25 Aug 2018 14:03:09 -0700
Message-Id: <20180825210315.4661-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/6] i.MX51 RDU1 and Babbage USB fixes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

These patches are a number of fixes I came up with while looking into
USB related problems on Babbage board.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (6):
  clk: i.MX: Port Linux clock tree for i.MX51 and i.MX53
  ARM: imx51-zii-rdu1: Swtich to using Linux clock tree
  ARM: freescale-mx51-babbage: Swtich to using Linux clock tree
  ARM: freescale-mx51-babbage: Add USBH1 PHY reset sequence
  dts: imx51-babbage: Add USBH1 iomux configuration
  ARM: imx51-zii-rdu1: Add USBH1,2 iomux configuration

 .../arm/boards/freescale-mx51-babbage/board.c |  35 ++
 arch/arm/dts/imx51-babbage.dts                |  24 +
 arch/arm/dts/imx51-zii-rdu1.dts               |  46 ++
 arch/arm/mach-imx/Kconfig                     |   2 +
 drivers/clk/imx/Makefile                      |   2 +-
 drivers/clk/imx/clk-imx51-imx53.c             | 549 ++++++++++++++++++
 6 files changed, 657 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/imx/clk-imx51-imx53.c

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
