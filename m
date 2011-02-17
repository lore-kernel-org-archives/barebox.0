Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pq2Cw-0007z8-4G
	for barebox@lists.infradead.org; Thu, 17 Feb 2011 11:39:40 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Pq2Cu-0006Pq-AP
	for barebox@lists.infradead.org; Thu, 17 Feb 2011 12:39:36 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Pq2Cu-0006Fm-83
	for barebox@lists.infradead.org; Thu, 17 Feb 2011 12:39:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Feb 2011 12:39:27 +0100
Message-Id: <1297942771-2289-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX25 patches
To: barebox@lists.infradead.org

The following adds support for the Ka-Ro tx25 board. Also, it brings
the i.MX25 iomux support (more or less) in sync with the kernel. The
kernel currently sets the sion bit for gpios which is imo wrong, so
this patch does not set the sion bits.

Sascha

Sascha Hauer (4):
      ARM i.MX: sync i.MX25 iomux support with kernel
      ARM i.MX esdctl: Add some missing bitfields
      initial karo tx25 board support
      ARM tx25: Add defconfig

 arch/arm/Makefile                                 |    1 +
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   90 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |   36 +-
 arch/arm/boards/karo-tx25/Makefile                |   24 +
 arch/arm/boards/karo-tx25/board.c                 |  312 +++++
 arch/arm/boards/karo-tx25/config.h                |   31 +
 arch/arm/boards/karo-tx25/env/bin/init_board      |    6 +
 arch/arm/boards/karo-tx25/env/config              |   53 +
 arch/arm/boards/karo-tx25/lowlevel.c              |  173 +++
 arch/arm/configs/tx25stk5_defconfig               |   49 +
 arch/arm/mach-imx/Kconfig                         |    9 +
 arch/arm/mach-imx/include/mach/esdctl.h           |    4 +
 arch/arm/mach-imx/include/mach/iomux-mx25.h       | 1288 +++++++++------------
 arch/arm/mach-imx/include/mach/iomux-mx51.h       |    2 +-
 arch/arm/mach-imx/include/mach/iomux-v3.h         |   37 +-
 15 files changed, 1264 insertions(+), 851 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx25/Makefile
 create mode 100644 arch/arm/boards/karo-tx25/board.c
 create mode 100644 arch/arm/boards/karo-tx25/config.h
 create mode 100644 arch/arm/boards/karo-tx25/env/bin/init_board
 create mode 100644 arch/arm/boards/karo-tx25/env/config
 create mode 100644 arch/arm/boards/karo-tx25/lowlevel.c
 create mode 100644 arch/arm/configs/tx25stk5_defconfig


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
