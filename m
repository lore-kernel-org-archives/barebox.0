Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egCK3-0002vK-9j
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 16:30:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1egCJo-0001SG-3W
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 17:30:04 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Subject: [PATCH 00/10] HYP mode handling and RasPi 3 support
Date: Mon, 29 Jan 2018 17:29:54 +0100
Message-Id: <20180129163004.10512-1-l.stach@pengutronix.de>
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
To: barebox@lists.infradead.org

Hi,

this series allows Barebox to be entered in HYP mode. As the HYP mode
is a whole different world it just makes sure to install the hooks
needed to get back into HYP and then switches to SVC mode as fast as
it can. The kernel is then started in HYP mode by default.

This is needed in order to get RasPi 3 support in place, where the
firmware opts to hand us the CPUs in HYP mode.

I've tested this series on another ARMv7 board, to make sure I didn't
break something obvious, but I would still welcome some eyeballs on
this code, as it touches a good deal of the lowlevel code.
 
Enrico Joerns (1):
  ARM: rpi: add revision IDs for Pi 3 Model B and Pi Zero

Lucas Stach (9):
  ARM: import opcode helpers from Linux kernel
  ARM: safely switch from HYP to SVC mode if required
  ARM: allow secure monitor code to be built without PSCI
  ARM: add file for HYP mode related setup
  ARM: don't try to install secure monitor when entered in HYP mode
  ARM: default to starting kernel in HYP mode when entered in HYP
  ARM: install HYP vectors at PBL and Barebox entry
  ARM: rpi: add raspberry pi 3 support
  ARM: rpi: autosize malloc area

 arch/arm/boards/raspberry-pi/lowlevel.c   |  14 +-
 arch/arm/boards/raspberry-pi/rpi-common.c |   2 +
 arch/arm/configs/rpi_defconfig            |   3 +
 arch/arm/cpu/Makefile                     |   4 +
 arch/arm/cpu/hyp.S                        | 115 +++++++++++++++
 arch/arm/cpu/lowlevel.S                   |  23 ++-
 arch/arm/cpu/sm.c                         |   6 +
 arch/arm/cpu/sm_as.S                      |  15 +-
 arch/arm/cpu/start-pbl.c                  |   3 +
 arch/arm/cpu/start.c                      |   3 +
 arch/arm/cpu/uncompress.c                 |   4 +
 arch/arm/dts/Makefile                     |   1 +
 arch/arm/dts/bcm2837-rpi-3.dts            |  15 ++
 arch/arm/include/asm/opcodes-virt.h       |  39 +++++
 arch/arm/include/asm/opcodes.h            | 231 ++++++++++++++++++++++++++++++
 arch/arm/include/asm/secure.h             |   2 +
 arch/arm/include/asm/system.h             |  26 ++++
 arch/arm/mach-bcm283x/Kconfig             |   6 +
 arch/arm/mach-bcm283x/core.c              |   1 +
 arch/arm/mach-bcm283x/include/mach/mbox.h |   4 +
 images/Makefile.bcm283x                   |   4 +
 21 files changed, 504 insertions(+), 17 deletions(-)
 create mode 100644 arch/arm/cpu/hyp.S
 create mode 100644 arch/arm/dts/bcm2837-rpi-3.dts
 create mode 100644 arch/arm/include/asm/opcodes-virt.h
 create mode 100644 arch/arm/include/asm/opcodes.h

-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
