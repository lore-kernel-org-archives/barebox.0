Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cb1Pa-0004i8-R5
 for barebox@lists.infradead.org; Tue, 07 Feb 2017 08:46:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1cb1N3-000895-Eu
 for barebox@lists.infradead.org; Tue, 07 Feb 2017 09:43:29 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.88)
 (envelope-from <sha@pengutronix.de>) id 1cb1N3-00030H-5w
 for barebox@lists.infradead.org; Tue, 07 Feb 2017 09:43:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Feb 2017 09:43:23 +0100
Message-Id: <20170207084327.7691-1-s.hauer@pengutronix.de>
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
Subject: Add PSCI support
To: Barebox List <barebox@lists.infradead.org>

This series implements the ARM "Power State Coordination Interface"
(PSCI). This is needed to enable SMP on some SoCs like the i.MX7 with
a mainline Kernel. Currently only the bare minimum is supported, just
enough to enable and disable the secondary CPU.

----------------------------------------------------------------
Sascha Hauer (4):
      ARM: Add UNWIND macro
      ARM: Add smc call support
      ARM: Add PSCI support
      ARM: i.MX7: Add PSCI support

 arch/arm/Kconfig                 |  23 +++
 arch/arm/cpu/Makefile            |   3 +
 arch/arm/cpu/psci.c              | 311 +++++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/sm.c                | 266 +++++++++++++++++++++++++++++++++
 arch/arm/cpu/sm_as.S             | 168 +++++++++++++++++++++
 arch/arm/cpu/smccc-call.S        |  64 ++++++++
 arch/arm/include/asm/arm-smccc.h | 104 +++++++++++++
 arch/arm/include/asm/armlinux.h  |   4 +-
 arch/arm/include/asm/gic.h       | 110 ++++++++++++++
 arch/arm/include/asm/psci.h      | 140 ++++++++++++++++++
 arch/arm/include/asm/ptrace.h    |   1 +
 arch/arm/include/asm/secure.h    |  39 +++++
 arch/arm/include/asm/unwind.h    |   6 +
 arch/arm/lib/bootm.c             |  14 +-
 arch/arm/lib32/armlinux.c        |  15 +-
 arch/arm/lib32/barebox.lds.S     |  10 ++
 arch/arm/mach-imx/imx7.c         |  77 ++++++++++
 17 files changed, 1352 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/cpu/psci.c
 create mode 100644 arch/arm/cpu/sm.c
 create mode 100644 arch/arm/cpu/sm_as.S
 create mode 100644 arch/arm/cpu/smccc-call.S
 create mode 100644 arch/arm/include/asm/arm-smccc.h
 create mode 100644 arch/arm/include/asm/gic.h
 create mode 100644 arch/arm/include/asm/psci.h
 create mode 100644 arch/arm/include/asm/secure.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
