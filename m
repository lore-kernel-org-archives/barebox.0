Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WiIoE-0000kF-MZ
 for barebox@lists.infradead.org; Thu, 08 May 2014 07:32:03 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WiIno-00018M-11
 for barebox@lists.infradead.org; Thu, 08 May 2014 09:31:36 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WiIns-0007vs-Gz
 for barebox@lists.infradead.org; Thu, 08 May 2014 09:31:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  8 May 2014 09:31:34 +0200
Message-Id: <1399534299-27051-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fix i.MX51 babbage ethernet
To: barebox@lists.infradead.org

This once again bends the init order to fit another board. This series
works over a number of shortcomings in barebox and devicetree support.
The problem here is that the Babbage ethernet phy needs vgen3 of the PMIC
enabled.

- We currently do not have proper regulator support for the mc13xxx,
  so we manipulate the PMIC registers directly from the board file. This
  has to happen before the ethernet phy is initialized. Once again
  we fiddle with the initcall order to make that sure. It can't be
  very long until we need some dependency mechanism for devices.
- Even if that is fixed the ethernet phy currently can't be described
  in the devicetree so we can't properly attach a regulator to it.

The following fixes ethernet support for the Babbage board which seems
to be broken for quite some time, at least when barebox is used as a
first stage loader.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      mfd: mc13xxx: Allow to set callback for mc13xxx
      spi: i.MX: Move to coredevice_initcall
      mfd: mc13xxx: move to coredevice_initcall
      ARM: i.MX51 babbage: use mc13xxx_register_callback to initialize PMIC
      ARM: dts: i.MX51 babbage: overwrite upstream FEC iomux settings

 arch/arm/boards/freescale-mx51-babbage/board.c | 27 +++++++-------
 arch/arm/dts/imx51-babbage.dts                 | 36 +++++++++++++++++++
 drivers/mfd/mc13xxx.c                          | 50 ++++++++++++++++++++------
 drivers/net/fec_imx.h                          |  1 +
 drivers/spi/imx_spi.c                          |  2 +-
 include/mfd/mc13xxx.h                          |  6 ++++
 6 files changed, 95 insertions(+), 27 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
