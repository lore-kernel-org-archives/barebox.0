Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T73to-0001sg-Vz
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 12:31:06 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 30 Aug 2012 14:30:47 +0200
Message-Id: <1346329850-3866-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 0/3] ARM i.MX6: basic USB H1 support
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

This series adds basic support for usb host1 on imx6q. This was tested on a
sabrelite board.

Steffen Trumtrar (3):
  ARM i.MX6: add the usbphy1 base addr
  ARM i.MX6: enable usbphy1
  usb: use ep-specific pwrgood delay

 arch/arm/mach-imx/Makefile                 |    2 +-
 arch/arm/mach-imx/include/mach/imx6-regs.h |    1 +
 arch/arm/mach-imx/usb-imx6.c               |  111 ++++++++++++++++++++++++++++
 drivers/usb/core/usb.c                     |    3 +-
 4 files changed, 115 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-imx/usb-imx6.c

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
