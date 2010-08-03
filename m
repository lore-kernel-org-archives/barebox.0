Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgH2c-0002CA-UK
	for barebox@lists.infradead.org; Tue, 03 Aug 2010 12:56:24 +0000
Date: Tue, 3 Aug 2010 14:51:42 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100803125142.GA9556@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/3] introduce clk framework
To: barebox@lists.infradead.org

Hi,

The following changes since commit 139ec08127825f2fdc4d0386d26f1fad9f745c2c:

  Merge branch 'next' (2010-08-03 09:31:38 +0200)

Jean-Christophe PLAGNIOL-VILLARD (3):
      initcall: add postconsole_initcall
      clock: Introduce clock framework from Linux
      at91: implement clock framework

 arch/arm/boards/at91sam9260ek/config.h      |    2 +-
 arch/arm/boards/at91sam9263ek/config.h      |    2 +-
 arch/arm/boards/at91sam9263ek/init.c        |    3 -
 arch/arm/boards/mmccpu/config.h             |    2 +-
 arch/arm/boards/mmccpu/init.c               |    3 -
 arch/arm/boards/pm9263/config.h             |    2 +-
 arch/arm/boards/pm9263/init.c               |    3 -
 arch/arm/mach-at91/Makefile                 |    2 +-
 arch/arm/mach-at91/at91sam9260.c            |  207 ++++++++
 arch/arm/mach-at91/at91sam9260_devices.c    |   18 +-
 arch/arm/mach-at91/at91sam9263.c            |  217 +++++++++
 arch/arm/mach-at91/at91sam9263_devices.c    |   13 +-
 arch/arm/mach-at91/clock.c                  |  672 +++++++++++++++++++++++++++
 arch/arm/mach-at91/clock.h                  |   31 ++
 arch/arm/mach-at91/generic.h                |   14 +
 arch/arm/mach-at91/gpio.c                   |    3 +
 arch/arm/mach-at91/include/mach/at91_dbgu.h |   66 +++
 arch/arm/mach-at91/include/mach/clk.h       |   39 --
 arch/arm/mach-at91/include/mach/cpu.h       |  118 +++++
 arch/arm/mach-at91/include/mach/gpio.h      |    1 +
 drivers/net/macb.c                          |   11 +-
 drivers/serial/atmel.c                      |   32 ++-
 include/init.h                              |    1 +
 include/linux/clk.h                         |  158 +++++++
 24 files changed, 1545 insertions(+), 75 deletions(-)
 create mode 100644 arch/arm/mach-at91/clock.c
 create mode 100644 arch/arm/mach-at91/clock.h
 create mode 100644 arch/arm/mach-at91/generic.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91_dbgu.h
 delete mode 100644 arch/arm/mach-at91/include/mach/clk.h
 create mode 100644 arch/arm/mach-at91/include/mach/cpu.h
 create mode 100644 include/linux/clk.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
