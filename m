Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNIXw-0005ip-V3
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 07:55:53 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed,  3 Apr 2013 09:55:42 +0200
Message-Id: <1364975745-1479-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 0/3] ARM: zynq: add support for ethernet
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi!

This series adds support for the first ethernet core on the Zynq7000.
As I can't test the second one, I haven't bothered adding it in the
patches.

Regards,
Steffen

Steffen Trumtrar (3):
  net: macb: turn off endian_swp_pkt_en
  ARM: zynq: add support for ethernet
  ARM: zedboard: add ethernet device

 arch/arm/boards/avnet-zedboard/board.c          | 13 +++++++++++++
 arch/arm/boards/avnet-zedboard/lowlevel.c       | 11 ++++++++++-
 arch/arm/mach-zynq/Kconfig                      |  1 +
 arch/arm/mach-zynq/clk-zynq7000.c               |  8 +++++++-
 arch/arm/mach-zynq/devices.c                    |  5 +++++
 arch/arm/mach-zynq/include/mach/devices.h       |  7 +++++++
 arch/arm/mach-zynq/include/mach/zynq7000-regs.h |  1 +
 drivers/net/macb.c                              |  1 +
 drivers/net/macb.h                              |  2 ++
 9 files changed, 47 insertions(+), 2 deletions(-)

-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
