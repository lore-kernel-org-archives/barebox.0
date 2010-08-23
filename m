Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OnNkc-0003y3-Kc
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 03:31:11 +0000
Date: Mon, 23 Aug 2010 05:30:59 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100823033059.GS8693@game.jcrosoft.org>
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
Subject: [PATCH 0/5] AT91 fix and preparation for at91rm9200 readding and
	at91sam9261
To: barebox@lists.infradead.org

Hi Sascha,

this contain fix up and prepacation for adding at91rm9200 and at91sam9261

please pull

The following changes since commit c52f80cc89e559ade702486d03bb8bfe3113db6c:

  Add missing include (2010-08-22 12:08:10 +0200)

are available in the git repository at:
  git://git.jcrosoft.org/barebox.git at91

Jean-Christophe PLAGNIOL-VILLARD (5):
      mmccpu: fix typo in AT91_MAIN_CLOCK
      dm9000: allow to specify that no srom is present
      at91: rename clocksource.c -> at91sam926x_time.c
      macb: introduce HAS_MACB configuration
      at91: remove non used and obsolete at91rm9200 code

 arch/arm/Kconfig                                   |    5 -
 arch/arm/Makefile                                  |    1 -
 arch/arm/boards/mmccpu/config.h                    |    2 +-
 arch/arm/boards/scb9328/scb9328.c                  |    1 +
 arch/arm/mach-at91/Kconfig                         |    2 +
 arch/arm/mach-at91/Makefile                        |    6 +-
 .../{clocksource.c => at91sam926x_time.c}          |    0
 arch/arm/mach-at91rm9200/Kconfig                   |   16 -
 arch/arm/mach-at91rm9200/include/mach/AT91RM9200.h |  762 --------------------
 arch/arm/mach-at91rm9200/include/mach/hardware.h   |   78 --
 drivers/net/Kconfig                                |    5 +-
 drivers/net/dm9000.c                               |    3 +-
 include/dm9000.h                                   |    1 +
 13 files changed, 14 insertions(+), 868 deletions(-)
 rename arch/arm/mach-at91/{clocksource.c => at91sam926x_time.c} (100%)
 delete mode 100644 arch/arm/mach-at91rm9200/Kconfig
 delete mode 100644 arch/arm/mach-at91rm9200/include/mach/AT91RM9200.h
 delete mode 100644 arch/arm/mach-at91rm9200/include/mach/hardware.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
