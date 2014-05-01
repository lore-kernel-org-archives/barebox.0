Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WfybU-0000Ab-3v
 for barebox@lists.infradead.org; Thu, 01 May 2014 21:33:17 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Wfyb2-00058a-Vw
 for barebox@lists.infradead.org; Thu, 01 May 2014 23:32:48 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  1 May 2014 23:32:48 +0200
Message-Id: <1398979972-14446-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 0/4] barebox_arm_entry signature change
To: barebox@lists.infradead.org

This changes the signature of barebox_arm_entry so that
boarddata is always a valid pointer to something we can
derefernce. This simplyfies oftree handling quite a bit
and we can throw away some redundant memcpys.

It's a quite invasive change, so please go and test. I've
did some trivial boot tests on some boards I had readily
available (imx6/imx25/tegra).

I've verified that this series at least builds on all
defconfigs without warnings.

Series is built on top of -next, in order to not miss
any board in the conversion.

Lucas Stach (4):
  ARM: change signature of barebox_arm_entry
  ARM: beaglebone: remove extra FDT memcpy
  ARM: eDM-QMX6: remove extra FDT memcpy
  ARM: phycore-am33xx: remove extra FDT memcpy

 arch/arm/boards/archosg9/lowlevel.c                |  2 +-
 arch/arm/boards/avnet-zedboard/lowlevel.c          |  2 +-
 arch/arm/boards/beagle/lowlevel.c                  |  2 +-
 arch/arm/boards/beaglebone/lowlevel.c              | 29 +++++++---------------
 .../boards/boundarydevices-nitrogen6x/lowlevel.c   |  8 +++---
 arch/arm/boards/ccxmx51/lowlevel.c                 |  2 +-
 arch/arm/boards/chumby_falconwing/lowlevel.c       |  2 +-
 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c   |  2 +-
 arch/arm/boards/datamodul-edm-qmx6/lowlevel.c      | 15 +++--------
 arch/arm/boards/dfi-fs700-m60/lowlevel.c           | 12 ++++-----
 arch/arm/boards/ebv-socrates/lowlevel.c            |  6 ++---
 arch/arm/boards/efika-mx-smartbook/lowlevel.c      |  4 +--
 arch/arm/boards/embest-riotboard/lowlevel.c        |  4 +--
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |  2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |  2 +-
 arch/arm/boards/eukrea_cpuimx51/lowlevel.c         |  2 +-
 arch/arm/boards/freescale-mx23-evk/lowlevel.c      |  2 +-
 arch/arm/boards/freescale-mx28-evk/lowlevel.c      |  2 +-
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c  |  4 +--
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c      |  8 +++---
 arch/arm/boards/freescale-mx53-smd/lowlevel.c      |  2 +-
 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c    |  4 +--
 arch/arm/boards/freescale-mx6-arm2/lowlevel.c      |  2 +-
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c |  8 +++---
 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c   |  4 +--
 arch/arm/boards/friendlyarm-mini6410/lowlevel.c    |  2 +-
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c     |  2 +-
 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c    |  2 +-
 arch/arm/boards/gk802/lowlevel.c                   |  4 +--
 arch/arm/boards/guf-cupid/lowlevel.c               |  2 +-
 arch/arm/boards/guf-neso/lowlevel.c                |  2 +-
 arch/arm/boards/guf-santaro/lowlevel.c             |  4 +--
 arch/arm/boards/guf-vincell/lowlevel.c             |  4 +--
 arch/arm/boards/highbank/lowlevel.c                |  2 +-
 arch/arm/boards/imx233-olinuxino/lowlevel.c        |  2 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |  6 ++---
 arch/arm/boards/karo-tx28/lowlevel.c               |  2 +-
 arch/arm/boards/karo-tx51/lowlevel.c               |  2 +-
 arch/arm/boards/karo-tx53/lowlevel.c               |  2 +-
 arch/arm/boards/mioa701/lowlevel.c                 |  2 +-
 arch/arm/boards/mx31moboard/lowlevel.c             |  4 +--
 arch/arm/boards/nhk8815/lowlevel.c                 |  2 +-
 arch/arm/boards/omap343xdsp/lowlevel.c             |  2 +-
 arch/arm/boards/omap3evm/lowlevel.c                |  2 +-
 arch/arm/boards/panda/lowlevel.c                   |  2 +-
 arch/arm/boards/phytec-phycard-imx27/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-phycard-omap3/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-phycard-omap4/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-phycore-am335x/lowlevel.c   | 18 ++++----------
 arch/arm/boards/phytec-phycore-imx27/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-phycore-imx31/lowlevel.c    |  4 +--
 arch/arm/boards/phytec-phycore-imx35/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-phycore-omap4460/lowlevel.c |  2 +-
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c     | 20 +++++++--------
 arch/arm/boards/radxa-rock/lowlevel.c              |  4 +--
 arch/arm/boards/raspberry-pi/lowlevel.c            |  2 +-
 arch/arm/boards/solidrun-cubox/lowlevel.c          |  4 +--
 arch/arm/boards/solidrun-hummingboard/lowlevel.c   |  4 +--
 arch/arm/boards/terasic-sockit/lowlevel.c          |  6 ++---
 arch/arm/boards/tqma53/lowlevel.c                  | 10 ++++----
 arch/arm/boards/tqma6x/lowlevel.c                  |  8 +++---
 arch/arm/boards/udoo/lowlevel.c                    |  4 +--
 arch/arm/boards/variscite-mx6/lowlevel.c           |  4 +--
 arch/arm/boards/versatile/lowlevel.c               |  2 +-
 arch/arm/boards/vexpress/lowlevel.c                |  4 +--
 arch/arm/boards/virt2real/lowlevel.c               |  2 +-
 arch/arm/cpu/start-pbl.c                           | 10 ++++----
 arch/arm/cpu/start.c                               | 23 ++++++++---------
 arch/arm/cpu/uncompress.c                          | 10 ++++----
 arch/arm/include/asm/barebox-arm.h                 |  4 +--
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c      |  2 +-
 arch/arm/mach-at91/at91sam9260_lowlevel_init.c     |  3 ++-
 arch/arm/mach-at91/at91sam9261_lowlevel_init.c     |  3 ++-
 arch/arm/mach-at91/at91sam9263_lowlevel_init.c     |  3 ++-
 arch/arm/mach-at91/at91sam9g45_lowlevel_init.c     |  3 ++-
 arch/arm/mach-at91/at91sam9n12_lowlevel_init.c     |  3 ++-
 arch/arm/mach-at91/at91sam9x5_lowlevel_init.c      |  2 +-
 arch/arm/mach-at91/sama5d3_lowlevel_init.c         |  2 +-
 arch/arm/mach-clps711x/lowlevel.c                  |  2 +-
 arch/arm/mach-imx/esdctl.c                         | 14 +++++------
 arch/arm/mach-imx/external-nand-boot.c             | 11 ++++----
 arch/arm/mach-imx/include/mach/esdctl.h            | 16 ++++++------
 arch/arm/mach-imx/include/mach/imx-nand.h          | 10 ++++----
 arch/arm/mach-mvebu/common.c                       |  2 +-
 arch/arm/mach-mvebu/include/mach/lowlevel.h        |  2 +-
 arch/arm/mach-mvebu/lowlevel.c                     |  2 +-
 arch/arm/mach-tegra/tegra_maincomplex_init.c       |  2 +-
 87 files changed, 199 insertions(+), 222 deletions(-)

-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
