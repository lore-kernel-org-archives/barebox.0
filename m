Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6Psc-0002CB-Ag
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 19:23:59 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1W6PsE-0005RR-8N
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 20:23:34 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <mgr@pengutronix.de>) id 1W6PsE-0004YW-7J
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 20:23:34 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 23 Jan 2014 20:23:27 +0100
Message-Id: <1390505010-7546-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 0/3] dove: cubox: ethernet support
To: barebox@lists.infradead.org

Hi,

this series adds ethernet support for the dove-cubox.

I could only test this with barebox being loaded as
second stage bootloader. As the lowlevel image, that
should be loaded via uart into sram, is currently not booting.

Michael Grzeschik (3):
  ARM: mvebu: make dove_memory_find reachable for drivers
  net: mv643xx: add driver support
  ARM: mvebu: add ethernet node

 arch/arm/dts/dove-cubox.dts                  |   4 +
 arch/arm/dts/dove.dtsi                       |  10 +
 arch/arm/mach-mvebu/dove.c                   |   4 +-
 arch/arm/mach-mvebu/include/mach/dove-regs.h |   3 +
 drivers/net/Kconfig                          |   5 +
 drivers/net/Makefile                         |   1 +
 drivers/net/mv643xx.c                        | 714 +++++++++++++++++++++++++++
 drivers/net/mv643xx.h                        | 473 ++++++++++++++++++
 8 files changed, 1212 insertions(+), 2 deletions(-)
 create mode 100644 drivers/net/mv643xx.c
 create mode 100644 drivers/net/mv643xx.h

-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
