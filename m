Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9r9-0008DP-Cg
 for barebox@lists.infradead.org; Mon, 13 May 2019 12:15:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 May 2019 14:14:54 +0200
Message-Id: <20190513121456.13853-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] Layerscape: Add PPA firmware support
To: Barebox List <barebox@lists.infradead.org>

this is the last piece for getting Layerscape up and running. So far we
started Linux in EL3 which doesn't work at all. This series adds support
for loading and executing the PPA ("Primary Protected Application"). PPA
is a PSCI compliant firmware running in EL3. With this Linux is starting
properly on all cores.

Sascha Hauer (2):
  ARM: psci: factor out of_psci_fixup() to separate file
  ARM: Layerscape: Add PPA firmware support

 arch/arm/Kconfig                              |   4 +
 arch/arm/boards/ls1046ardb/board.c            |   7 +-
 arch/arm/boards/ls1046ardb/lowlevel.c         |   2 +-
 arch/arm/boards/tqmls1046a/board.c            |   6 +
 arch/arm/boards/tqmls1046a/lowlevel.c         |   2 +-
 arch/arm/configs/layerscape_defconfig         |   1 +
 arch/arm/cpu/Makefile                         |   1 +
 arch/arm/cpu/psci-of.c                        |  54 ++++++++
 arch/arm/cpu/psci.c                           |  27 +---
 arch/arm/include/asm/psci.h                   |   2 +
 arch/arm/mach-layerscape/Kconfig              |  13 ++
 arch/arm/mach-layerscape/Makefile             |   1 +
 .../mach-layerscape/include/mach/layerscape.h |  10 ++
 arch/arm/mach-layerscape/ppa-entry.S          |  30 +++++
 arch/arm/mach-layerscape/ppa.c                | 118 ++++++++++++++++++
 firmware/Makefile                             |   2 +
 16 files changed, 256 insertions(+), 24 deletions(-)
 create mode 100644 arch/arm/cpu/psci-of.c
 create mode 100644 arch/arm/mach-layerscape/ppa-entry.S
 create mode 100644 arch/arm/mach-layerscape/ppa.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
