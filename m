Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mZP-00034K-MM
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 12:52:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Aug 2019 14:51:50 +0200
Message-Id: <20190822125158.10296-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/8] i.MX8 EVK patches
To: Barebox List <barebox@lists.infradead.org>

Here are several patches for ARM aarch64 in general and more
specifically for the i.MX8 EVK which currently is not bootable.
Currently relocation on ARM aarch64 doesn't work correctly and
the i.MX8 EVK code exploits some of the oddities for its boot
process. This series aims to fix that up.

Sascha

Sascha Hauer (8):
  ARM: aarch64: Fixup relocation table for the second relocation
  ARM: aarch64: Fix get_runtime_offset after relocation
  pbl: Move piggy verification into pbl_barebox_uncompress()
  ARM: i.MX: imx8-ddrc: Remove debug code
  ARM: nxp-imx8mq-evk: Remove duplicate call to
    imx8mq_cpu_lowlevel_init()
  ARM: nxp-imx8mq-evk: Replace trampoline
  ARM: i.MX8: Fix piggydata loading
  ARM: nxp-imx8mq-evk: Update comments

 arch/arm/boards/nxp-imx8mq-evk/Makefile     |  2 +-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c   | 38 +++++----------------
 arch/arm/boards/nxp-imx8mq-evk/trampoline.S | 10 ------
 arch/arm/cpu/common.c                       |  2 ++
 arch/arm/cpu/uncompress.c                   | 17 +--------
 arch/arm/lib64/runtime-offset.S             | 18 ++--------
 arch/arm/mach-imx/imx8-ddrc.c               | 20 ++---------
 drivers/mci/imx-esdhc-pbl.c                 | 21 +++++++-----
 pbl/decomp.c                                | 17 +++++++++
 9 files changed, 48 insertions(+), 97 deletions(-)
 delete mode 100644 arch/arm/boards/nxp-imx8mq-evk/trampoline.S

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
