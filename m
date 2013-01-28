Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzxDx-0005Xq-0y
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 22:30:45 +0000
Received: from mail606.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 85962DC1A88
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2013 23:40:38 +0100 (CET)
Date: Mon, 28 Jan 2013 23:29:26 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130128222926.GT26329@game.jcrosoft.org>
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
Subject: [PATCH 0/2] at91: add sama5d3 support
To: barebox@lists.infradead.org

HI,

	this patch serie add the support of the new Cortex-A5 of Atmel the
	sama5d3x series

	This patch serie depends on the w1 dual scan and the macb prepare for
	gmac

The following changes since commit 1be4806dcc68d6999a07e93ec83c6b12a213dffa:

  at91: add clock dump command (2013-01-29 04:16:21 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/sama5

for you to fetch changes up to b396017b1f8d8de00b7737e0a7aa24942bdc727a:

  at91: add sama5d3xek board support (2013-01-29 05:08:56 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      at91: add sama5d3 support
      at91: add sama5d3xek board support

 arch/arm/Makefile                                 |    1 +
 arch/arm/boards/sama5d3xek/Makefile               |    2 +
 arch/arm/boards/sama5d3xek/config.h               |    6 ++
 arch/arm/boards/sama5d3xek/env/config             |   44 +++++++++
 arch/arm/boards/sama5d3xek/hw_version.c           |  251 ++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/boards/sama5d3xek/hw_version.h           |   34 +++++++
 arch/arm/boards/sama5d3xek/init.c                 |  328 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/configs/sama5d3xek_defconfig             |   91 +++++++++++++++++++
 arch/arm/mach-at91/Kconfig                        |   33 +++++++
 arch/arm/mach-at91/Makefile                       |    2 +
 arch/arm/mach-at91/clock.c                        |   75 ++++++++++++---
 arch/arm/mach-at91/clock.h                        |    2 +
 arch/arm/mach-at91/include/mach/at91_pmc.h        |    7 +-
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h |   39 +++++++-
 arch/arm/mach-at91/include/mach/cpu.h             |   27 ++++++
 arch/arm/mach-at91/include/mach/hardware.h        |    8 ++
 arch/arm/mach-at91/include/mach/sama5d3.h         |  152 +++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/sama5d3_matrix.h  |   15 +++
 arch/arm/mach-at91/sama5d3.c                      |  319 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/sama5d3_devices.c              |  444 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/sama5d3_lowlevel_init.c        |   24 +++++
 arch/arm/mach-at91/setup.c                        |   27 ++++++
 arch/arm/mach-at91/soc.h                          |    5 +
 23 files changed, 1918 insertions(+), 18 deletions(-)
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
 create mode 100644 arch/arm/mach-at91/sama5d3_lowlevel_init.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
