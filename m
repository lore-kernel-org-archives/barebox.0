Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0BOM-00076I-LA
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 13:38:27 +0000
Received: from mail606.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D8FD2DC21DC
 for <barebox@lists.infradead.org>; Tue, 29 Jan 2013 14:48:20 +0100 (CET)
Date: Tue, 29 Jan 2013 14:37:06 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130129133706.GV26329@game.jcrosoft.org>
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

for you to fetch changes up to 77510b9afb1a126fac5eb6a364666ad6f832cb44:

  at91: add sama5d3xek board support (2013-01-29 20:24:07 +0800)

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
 arch/arm/boards/sama5d3xek/init.c                 |  351 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/configs/sama5d3xek_defconfig             |   91 +++++++++++++++++++
 arch/arm/mach-at91/Kconfig                        |   31 +++++++
 arch/arm/mach-at91/Makefile                       |    1 +
 arch/arm/mach-at91/clock.c                        |  113 ++++++++++++++++++-----
 arch/arm/mach-at91/clock.h                        |    2 +
 arch/arm/mach-at91/include/mach/at91_pmc.h        |   14 ++-
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h |   37 ++++++++
 arch/arm/mach-at91/include/mach/cpu.h             |   27 ++++++
 arch/arm/mach-at91/include/mach/hardware.h        |    8 ++
 arch/arm/mach-at91/include/mach/sama5d3.h         |  152 +++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/sama5d3_matrix.h  |   15 +++
 arch/arm/mach-at91/sama5d3.c                      |  336 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/sama5d3_devices.c              |  444 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/setup.c                        |   27 ++++++
 arch/arm/mach-at91/soc.h                          |    5 +
 22 files changed, 1964 insertions(+), 28 deletions(-)
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
