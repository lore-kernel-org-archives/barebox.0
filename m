Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLWk-0007qR-Fo
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 08:01:10 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QmLWi-0004Dh-BE
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 10:01:04 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QmLWi-0002zy-9F
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 10:01:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 10:00:54 +0200
Message-Id: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: switch more devices to use resources
To: barebox@lists.infradead.org

The following series switches more (mostly i.MX) devices to
use resources instead of map_base.

Sascha Hauer (8):
      ARM i.MX: add helper for usb device registration
      ARM i.MX cupid: use device registration helpers
      ARM i.MX pca100: use device registration helpers
      ARM i.MX scb9328: create uart registration helpers and use them
      ARM i.MX35 3stack: use device registration helpers
      ARM i.MX21ads : use device registration helpers
      ARM i.MX pcm037: use device registration helpers
      add a ns16550 registration helper and use it

 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    9 +----
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   10 +----
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    9 +----
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    9 +----
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |   18 +-------
 arch/arm/boards/guf-cupid/board.c                 |   46 +++-----------------
 arch/arm/boards/guf-neso/board.c                  |   10 +----
 arch/arm/boards/imx21ads/imx21ads.c               |   10 +----
 arch/arm/boards/omap/board-beagle.c               |   12 +----
 arch/arm/boards/omap/board-omap3evm.c             |   22 ++++------
 arch/arm/boards/omap/board-sdp343x.c              |   12 +----
 arch/arm/boards/panda/board.c                     |   12 +----
 arch/arm/boards/pcm037/pcm037.c                   |   39 +++++-------------
 arch/arm/boards/pcm038/pcm038.c                   |    9 +----
 arch/arm/boards/pcm049/board.c                    |   12 +----
 arch/arm/boards/phycard-i.MX27/pca100.c           |   27 +-----------
 arch/arm/boards/scb9328/scb9328.c                 |   11 +----
 arch/arm/mach-imx/devices.c                       |    5 ++
 arch/arm/mach-imx/include/mach/devices-imx1.h     |   11 +++++
 arch/arm/mach-imx/include/mach/devices-imx25.h    |    9 ++++
 arch/arm/mach-imx/include/mach/devices-imx27.h    |   13 ++++++
 arch/arm/mach-imx/include/mach/devices-imx31.h    |   15 +++++++
 arch/arm/mach-imx/include/mach/devices-imx35.h    |   10 +++++
 arch/arm/mach-imx/include/mach/devices.h          |    2 +-
 arch/x86/boards/x86_generic/generic_pc.c          |   15 ++-----
 include/driver.h                                  |    7 +++
 26 files changed, 131 insertions(+), 233 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx1.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
