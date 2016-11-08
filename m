Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4A3W-00062H-Om
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 17:19:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1c4A3B-00040P-0G
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 18:19:09 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <sha@pengutronix.de>) id 1c4A3A-0006pe-Lu
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 18:19:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2016 18:19:00 +0100
Message-Id: <20161108171907.20726-1-s.hauer@pengutronix.de>
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
Subject: i.MX6ul support
To: Barebox List <barebox@lists.infradead.org>

This series adds i.MX6ul support. The only new thing really added is
the clock support, the rest is mainly adding compatible strings for
the different drivers.

Sascha

----------------------------------------------------------------
Sascha Hauer (7):
      ARM: i.MX: beginning i.MX6ul support
      ARM: i.MX6ul: Add clock support
      ARM: i.MX6 gpt: Add i.MX6ul support
      pinmux: imx-iomux-v3: Add i.MX6ul support
      serial: i.MX: Add i.MX6ul support
      ARM: i.MX: ocotp: Add i.MX6ul support
      ARM: i.MX6 esdctl: Add i.MX6ul support

 arch/arm/mach-imx/Kconfig               |   4 +
 arch/arm/mach-imx/Makefile              |   1 +
 arch/arm/mach-imx/clk-imx6ul.c          | 426 ++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/clocksource.c         |   3 +
 arch/arm/mach-imx/esdctl.c              |  19 ++
 arch/arm/mach-imx/imx.c                 |   2 +
 arch/arm/mach-imx/imx6.c                |   3 +
 arch/arm/mach-imx/include/mach/esdctl.h |   1 +
 arch/arm/mach-imx/include/mach/imx6.h   |   2 +
 arch/arm/mach-imx/ocotp.c               |   3 +
 drivers/pinctrl/imx-iomux-v3.c          |   2 +
 drivers/serial/serial_imx.c             |   3 +
 12 files changed, 469 insertions(+)
 create mode 100644 arch/arm/mach-imx/clk-imx6ul.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
