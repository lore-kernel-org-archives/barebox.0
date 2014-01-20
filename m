Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W5Epu-0007Eb-RZ
 for barebox@lists.infradead.org; Mon, 20 Jan 2014 13:24:19 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1W5EpZ-0008E9-2a
 for barebox@lists.infradead.org; Mon, 20 Jan 2014 14:23:57 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1W5EpZ-0000F9-0o
 for barebox@lists.infradead.org; Mon, 20 Jan 2014 14:23:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Jan 2014 14:23:53 +0100
Message-Id: <1390224236-11032-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: TQ tqma53 devicetree support
To: barebox@lists.infradead.org

This converts the TQ tqma53 to devicetree and multiboard support.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      ARM: dts: Add TQ tqma53/mba53 dts files
      ARM: dts: i.MX53: tqma53: Add barebox specifics
      ARM: i.MX53: tqma53: Switch to devicetree and multiboard support

 arch/arm/boards/tqma53/Makefile                    |   1 -
 arch/arm/boards/tqma53/board.c                     | 249 +-------------------
 .../tqma53/flash-header-tq-tqma53-1gib.imxcfg      |   5 +
 .../tqma53/flash-header-tq-tqma53-512mib.imxcfg    |   5 +
 arch/arm/boards/tqma53/flash-header-tq-tqma53.h    |  61 +++++
 arch/arm/boards/tqma53/flash_header.c              | 113 ---------
 arch/arm/boards/tqma53/lowlevel.c                  |  25 +-
 arch/arm/dts/Makefile                              |   4 +-
 arch/arm/dts/imx53-mba53.dts                       | 253 +++++++++++++++++++++
 arch/arm/dts/imx53-tqma53.dtsi                     | 196 ++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |   9 +-
 images/Makefile.imx                                |  10 +
 12 files changed, 570 insertions(+), 361 deletions(-)
 create mode 100644 arch/arm/boards/tqma53/flash-header-tq-tqma53-1gib.imxcfg
 create mode 100644 arch/arm/boards/tqma53/flash-header-tq-tqma53-512mib.imxcfg
 create mode 100644 arch/arm/boards/tqma53/flash-header-tq-tqma53.h
 delete mode 100644 arch/arm/boards/tqma53/flash_header.c
 create mode 100644 arch/arm/dts/imx53-mba53.dts
 create mode 100644 arch/arm/dts/imx53-tqma53.dtsi

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
