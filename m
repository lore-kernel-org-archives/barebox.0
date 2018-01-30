Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egRZQ-00076V-Hy
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 08:47:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Jan 2018 09:46:51 +0100
Message-Id: <20180130084657.31943-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/6] bbu: Make image pointer const
To: Barebox List <barebox@lists.infradead.org>

The image pointer in the bbu data structure should be const so that we
can pass const pointers in there. This is changed in this series.

Sascha Hauer (6):
  bbu: imx-bbu-internal: Do not modify image
  bbu: imx-bbu-internal: make pointers to image const
  bbu: command: create temporary variable holding the pointer to the
    image
  bbu: Make pointer to image const
  usb: gadget: fastboot: allow data.image to be const
  ARM: am33xx: bbu: Make pointers to image const

 arch/arm/mach-imx/imx-bbu-internal.c    | 25 ++++++++++++++++++-------
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c |  4 ++--
 commands/barebox-update.c               |  8 +++++---
 drivers/usb/gadget/f_fastboot.c         |  9 ++++++---
 include/bbu.h                           |  2 +-
 5 files changed, 32 insertions(+), 16 deletions(-)

-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
