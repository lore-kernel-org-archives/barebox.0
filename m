Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THHnG-0005Ys-AG
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 17:22:36 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1THHn9-0001U5-PL
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 19:22:27 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1THHn9-0005e0-OD
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 19:22:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Sep 2012 19:22:23 +0200
Message-Id: <1348766546-21547-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] use fs based tftp support
To: barebox@lists.infradead.org

Since the introduction of fs based tftp support we have two instances
of tftp code in the tree. This series adds a backward compatible tftp
command using the fs based tftp support. The defconfigs are updated to
use it and the then unused code removed.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      net: Add tftp command which uses the new tftp code
      defconfig: Switch all defconfig to new tftp command
      net: remove old tftp support

 arch/arm/configs/a9m2410_defconfig                 |    3 +-
 arch/arm/configs/a9m2440_defconfig                 |    3 +-
 arch/arm/configs/at91rm9200ek_defconfig            |    4 +-
 arch/arm/configs/at91sam9260ek_defconfig           |    3 +-
 arch/arm/configs/at91sam9261ek_defconfig           |    4 +-
 arch/arm/configs/at91sam9263ek_defconfig           |    3 +-
 arch/arm/configs/at91sam9g10ek_defconfig           |    4 +-
 arch/arm/configs/at91sam9g20ek_defconfig           |    3 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig        |    4 +-
 arch/arm/configs/at91sam9x5ek_defconfig            |    3 +-
 arch/arm/configs/chumbyone_defconfig               |    4 +-
 arch/arm/configs/cupid_defconfig                   |    4 +-
 arch/arm/configs/dss11_defconfig                   |    4 +-
 arch/arm/configs/edb93xx_defconfig                 |    3 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    4 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    3 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    4 +-
 arch/arm/configs/eukrea_cpuimx51_defconfig         |    4 +-
 arch/arm/configs/freescale-mx6-arm2_defconfig      |    4 +-
 arch/arm/configs/freescale-mx6-sabrelite_defconfig |    3 +
 arch/arm/configs/freescale_mx25_3stack_defconfig   |    3 +-
 arch/arm/configs/freescale_mx35_3stack_defconfig   |    3 +-
 arch/arm/configs/freescale_mx53_loco_defconfig     |    4 +-
 arch/arm/configs/freescale_mx53_smd_defconfig      |    4 +-
 arch/arm/configs/friendlyarm_mini2440_defconfig    |    3 +-
 arch/arm/configs/imx28evk_defconfig                |    3 +-
 arch/arm/configs/mmccpu_defconfig                  |    3 +-
 arch/arm/configs/mx21ads_defconfig                 |    3 +-
 arch/arm/configs/mx27ads_defconfig                 |    3 +-
 arch/arm/configs/neso_defconfig                    |    4 +-
 arch/arm/configs/netx_nxdb500_defconfig            |    3 +-
 arch/arm/configs/nhk8815_defconfig                 |    4 +-
 arch/arm/configs/omap3530_beagle_defconfig         |    4 +-
 arch/arm/configs/panda_defconfig                   |    4 +-
 arch/arm/configs/pca100_defconfig                  |    4 +-
 arch/arm/configs/pcm027_defconfig                  |    4 +-
 arch/arm/configs/pcm037_defconfig                  |    4 +-
 arch/arm/configs/pcm043_defconfig                  |    4 +-
 arch/arm/configs/pcm049_defconfig                  |    4 +-
 arch/arm/configs/phycard_a_l1_defconfig            |    4 +-
 arch/arm/configs/phycard_a_xl2_defconfig           |    4 +-
 arch/arm/configs/pm9261_defconfig                  |    4 +-
 arch/arm/configs/pm9263_defconfig                  |    3 +-
 arch/arm/configs/pm9g45_defconfig                  |    4 +-
 arch/arm/configs/qil_a9260_128mib_defconfig        |    4 +-
 arch/arm/configs/qil_a9260_defconfig               |    4 +-
 arch/arm/configs/scb9328_defconfig                 |    4 +-
 arch/arm/configs/tny_a9260_defconfig               |    3 +-
 arch/arm/configs/tny_a9263_defconfig               |    3 +-
 arch/arm/configs/tny_a9g20_defconfig               |    3 +-
 arch/arm/configs/toshiba_ac100_defconfig           |    4 +-
 arch/arm/configs/tx25stk5_defconfig                |    4 +-
 arch/arm/configs/tx28stk5_defconfig                |    3 +-
 arch/arm/configs/tx51stk5_defconfig                |    4 +-
 arch/arm/configs/usb_a9260_defconfig               |    4 +-
 arch/arm/configs/usb_a9263_128mib_defconfig        |    4 +-
 arch/arm/configs/usb_a9263_defconfig               |    4 +-
 arch/arm/configs/usb_a9g20_128mib_defconfig        |    4 +-
 arch/arm/configs/usb_a9g20_defconfig               |    4 +-
 arch/arm/configs/versatilepb_defconfig             |    4 +-
 arch/blackfin/configs/ipe337_defconfig             |    3 +-
 arch/mips/configs/dlink-dir-320_defconfig          |    4 +-
 arch/mips/configs/qemu-malta_defconfig             |    4 +-
 arch/ppc/configs/pcm030_defconfig                  |    3 +-
 arch/sandbox/configs/sandbox_defconfig             |    3 +-
 commands/Kconfig                                   |    8 +
 commands/Makefile                                  |    1 +
 commands/tftp.c                                    |  103 +++++
 net/Kconfig                                        |    8 -
 net/Makefile                                       |    1 -
 net/tftp.c                                         |  412 --------------------
 net/tftp.h                                         |   18 -
 72 files changed, 243 insertions(+), 543 deletions(-)
 create mode 100644 commands/tftp.c
 delete mode 100644 net/tftp.c
 delete mode 100644 net/tftp.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
