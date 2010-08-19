Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OlvFx-0003rV-31
	for barebox@lists.infradead.org; Thu, 19 Aug 2010 02:53:30 +0000
Date: Thu, 19 Aug 2010 04:48:11 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100819024811.GG454@game.jcrosoft.org>
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
Subject: [PATCH 0/6] AT91 fies and new soc & board
To: barebox@lists.infradead.org

Hi,

	the following patches add the support of the at91sam9261 with the
	ek ref board and the pm9261 from Ronetix

	this also prepare the re-adding of the RM9200 in the mach-at91

  mmccpu: fix typo in AT91_MAIN_CLOCK (2010-08-18 23:21:16 +0800)

are available in the git repository at:
  git://git.jcrosoft.org/barebox.git at91

Jean-Christophe PLAGNIOL-VILLARD (6):
      dm9000: allow to specify that no srom is present
      at91: Introduction of at91sam9261 SOC.
      at91: add Ronetix pm9261 board support
      at91: rename clocksource.c -> at91sam926x_time.c
      macb: introduce HAS_MACB configuration
      at91: remove non used and obsolete at91rm9200 code

 arch/arm/Kconfig                                   |    5 -
 arch/arm/Makefile                                  |    3 +-
 arch/arm/boards/at91sam9261ek/Makefile             |    1 +
 arch/arm/boards/at91sam9261ek/config.h             |  110 +++
 arch/arm/boards/at91sam9261ek/env/bin/_update      |   36 +
 arch/arm/boards/at91sam9261ek/env/bin/boot         |   47 ++
 arch/arm/boards/at91sam9261ek/env/bin/hush_hack    |    1 +
 arch/arm/boards/at91sam9261ek/env/bin/init         |   38 +
 .../at91sam9261ek/env/bin/update_barebox_xmodem    |   26 +
 .../arm/boards/at91sam9261ek/env/bin/update_kernel |   15 +
 arch/arm/boards/at91sam9261ek/env/bin/update_root  |   16 +
 arch/arm/boards/at91sam9261ek/env/config           |   28 +
 arch/arm/boards/at91sam9261ek/init.c               |  170 +++++
 arch/arm/boards/pm9261/Makefile                    |    1 +
 arch/arm/boards/pm9261/config.h                    |  110 +++
 arch/arm/boards/pm9261/env/bin/_update             |   36 +
 arch/arm/boards/pm9261/env/bin/boot                |   47 ++
 arch/arm/boards/pm9261/env/bin/hush_hack           |    1 +
 arch/arm/boards/pm9261/env/bin/init                |   38 +
 .../boards/pm9261/env/bin/update_barebox_xmodem    |   26 +
 arch/arm/boards/pm9261/env/bin/update_kernel       |   15 +
 arch/arm/boards/pm9261/env/bin/update_root         |   16 +
 arch/arm/boards/pm9261/env/config                  |   28 +
 arch/arm/boards/pm9261/init.c                      |  169 +++++
 arch/arm/boards/scb9328/scb9328.c                  |    1 +
 arch/arm/configs/at91sam9261ek_defconfig           |  242 +++++++
 arch/arm/configs/pm9261_defconfig                  |  250 +++++++
 arch/arm/mach-at91/Kconfig                         |   33 +
 arch/arm/mach-at91/Makefile                        |    7 +-
 arch/arm/mach-at91/at91sam9261.c                   |  230 ++++++
 arch/arm/mach-at91/at91sam9261_devices.c           |  169 +++++
 .../{clocksource.c => at91sam926x_time.c}          |    0
 arch/arm/mach-at91/include/mach/at91sam9261.h      |  109 +++
 .../mach-at91/include/mach/at91sam9261_matrix.h    |   64 ++
 arch/arm/mach-at91rm9200/Kconfig                   |   16 -
 arch/arm/mach-at91rm9200/include/mach/AT91RM9200.h |  762 --------------------
 arch/arm/mach-at91rm9200/include/mach/hardware.h   |   78 --
 drivers/net/Kconfig                                |    5 +-
 drivers/net/dm9000.c                               |    6 +-
 include/dm9000.h                                   |    1 +
 40 files changed, 2088 insertions(+), 868 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9261ek/Makefile
 create mode 100644 arch/arm/boards/at91sam9261ek/config.h
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/_update
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/boot
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/hush_hack
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/init
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/update_barebox_xmodem
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/update_kernel
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/update_root
 create mode 100644 arch/arm/boards/at91sam9261ek/env/config
 create mode 100644 arch/arm/boards/at91sam9261ek/init.c
 create mode 100644 arch/arm/boards/pm9261/Makefile
 create mode 100644 arch/arm/boards/pm9261/config.h
 create mode 100644 arch/arm/boards/pm9261/env/bin/_update
 create mode 100644 arch/arm/boards/pm9261/env/bin/boot
 create mode 100644 arch/arm/boards/pm9261/env/bin/hush_hack
 create mode 100644 arch/arm/boards/pm9261/env/bin/init
 create mode 100644 arch/arm/boards/pm9261/env/bin/update_barebox_xmodem
 create mode 100644 arch/arm/boards/pm9261/env/bin/update_kernel
 create mode 100644 arch/arm/boards/pm9261/env/bin/update_root
 create mode 100644 arch/arm/boards/pm9261/env/config
 create mode 100644 arch/arm/boards/pm9261/init.c
 create mode 100644 arch/arm/configs/at91sam9261ek_defconfig
 create mode 100644 arch/arm/configs/pm9261_defconfig
 create mode 100644 arch/arm/mach-at91/at91sam9261.c
 create mode 100644 arch/arm/mach-at91/at91sam9261_devices.c
 rename arch/arm/mach-at91/{clocksource.c => at91sam926x_time.c} (100%)
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9261.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9261_matrix.h
 delete mode 100644 arch/arm/mach-at91rm9200/Kconfig
 delete mode 100644 arch/arm/mach-at91rm9200/include/mach/AT91RM9200.h
 delete mode 100644 arch/arm/mach-at91rm9200/include/mach/hardware.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
