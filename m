Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0IFj-0002XU-W3
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 20:58:01 +0000
Received: from mail437.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 72C59FF90E2
 for <barebox@lists.infradead.org>; Tue, 29 Jan 2013 22:12:01 +0100 (CET)
Date: Tue, 29 Jan 2013 21:56:40 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130129205640.GW26329@game.jcrosoft.org>
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
Subject: [PATCH 0/2 v2] at91: add sama5d3 support
To: barebox@lists.infradead.org

HI,

	v3:
	 update clock periph divider
	 some of the IP require to be down clocked to work perfectly
	 update all of them

	v2:
	 update clock support
	 drop fec.h

	this patch serie add the support of the new Cortex-A5 of Atmel the
	sama5d3x series

	This patch serie depends on the w1 dual scan and the macb prepare for
	gmac

The following changes since commit 1be4806dcc68d6999a07e93ec83c6b12a213dffa:

  at91: add clock dump command (2013-01-29 04:16:21 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/sama5

for you to fetch changes up to 8a1a53fd5e7e4d38d064a3b079181bf5d6a462a7:

  at91: add sama5d3xek board support (2013-01-30 03:17:33 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      at91: add sama5d3 support
      at91: add sama5d3xek board support

 arch/arm/Makefile                                 |    1 +
 arch/arm/boards/sama5d3xek/Makefile               |    2 +
 arch/arm/boards/sama5d3xek/config.h               |    6 +
 arch/arm/boards/sama5d3xek/env/config             |   44 +++++++
 arch/arm/boards/sama5d3xek/hw_version.c           |  251 ++++++++++++++++++++++++++++++++++++
 arch/arm/boards/sama5d3xek/hw_version.h           |   53 ++++++++
 arch/arm/boards/sama5d3xek/init.c                 |  358 ++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/configs/sama5d3xek_defconfig             |   91 +++++++++++++
 arch/arm/mach-at91/Kconfig                        |   31 +++++
 arch/arm/mach-at91/Makefile                       |    1 +
 arch/arm/mach-at91/clock.c                        |  113 ++++++++++++----
 arch/arm/mach-at91/clock.h                        |    2 +
 arch/arm/mach-at91/include/mach/at91_pmc.h        |   14 +-
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h |   37 ++++++
 arch/arm/mach-at91/include/mach/cpu.h             |   27 ++++
 arch/arm/mach-at91/include/mach/hardware.h        |    8 ++
 arch/arm/mach-at91/include/mach/sama5d3.h         |  152 ++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/sama5d3_matrix.h  |   15 +++
 arch/arm/mach-at91/sama5d3.c                      |  396 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/sama5d3_devices.c              |  444 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/setup.c                        |   27 ++++
 arch/arm/mach-at91/soc.h                          |    5 +
 22 files changed, 2050 insertions(+), 28 deletions(-)
 create mode 100644 arch/arm/boards/sama5d3xek/Makefile
 create mode 100644 arch/arm/boards/sama5d3xek/config.h
 create mode 100644 arch/arm/boards/sama5d3xek/env/config
 create mode 100644 arch/arm/boards/sama5d3xek/hw_version.c
 create mode 100644 arch/arm/boards/sama5d3xek/hw_version.h
 create mode 100644 arch/arm/boards/sama5d3xek/init.c
 create mode 100644 arch/arm/configs/sama5d3xek_defconfig
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d3.h
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d3_matrix.h
 create mode 100644 arch/arm/mach-at91/sama5d3.c
 create mode 100644 arch/arm/mach-at91/sama5d3_devices.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
