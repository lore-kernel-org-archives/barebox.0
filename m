Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VorwS-0000MS-4A
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 09:43:25 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Vorw6-0005m9-Em
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 10:43:02 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Vorw6-0004MB-DS
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 10:43:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Dec 2013 10:42:58 +0100
Message-Id: <1386322981-30721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Find ATAG base automatically and call barebox like the kernel
To: barebox@lists.infradead.org

Currently all boards call armlinux_set_bootparams() to configure a place
for ATAGs. This place can easily be configured automatically, so remove
it from boards.

Also Let's start barebox like the kernel. Currently we do not interpret
ATAGs/devicetree, but be prepared for it by passing the parameters to
a chainloaded barebox.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      ARM: start kernel: find a valid address for the atags list automatically
      ARM: remove armlinux_set_bootparams() calls from boards
      ARM: boot barebox with kernel calling convention

 arch/arm/boards/a9m2410/a9m2410.c                  |  2 --
 arch/arm/boards/a9m2440/a9m2440.c                  |  1 -
 arch/arm/boards/animeo_ip/init.c                   |  1 -
 arch/arm/boards/archosg9/board.c                   |  2 --
 arch/arm/boards/at91rm9200ek/init.c                |  1 -
 arch/arm/boards/at91sam9260ek/init.c               |  1 -
 arch/arm/boards/at91sam9261ek/init.c               |  1 -
 arch/arm/boards/at91sam9263ek/init.c               |  1 -
 arch/arm/boards/at91sam9m10g45ek/init.c            |  1 -
 arch/arm/boards/at91sam9m10ihd/init.c              |  1 -
 arch/arm/boards/at91sam9n12ek/init.c               |  1 -
 arch/arm/boards/at91sam9x5ek/init.c                |  1 -
 arch/arm/boards/beagle/board.c                     |  1 -
 arch/arm/boards/beaglebone/board.c                 |  1 -
 arch/arm/boards/ccxmx51/ccxmx51.c                  |  2 --
 arch/arm/boards/chumby_falconwing/falconwing.c     |  1 -
 arch/arm/boards/clep7212/clep7212.c                |  1 -
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |  1 -
 arch/arm/boards/dfi-fs700-m60/board.c              |  1 -
 arch/arm/boards/dss11/init.c                       |  1 -
 arch/arm/boards/edb93xx/edb93xx.c                  |  2 --
 arch/arm/boards/efika-mx-smartbook/board.c         |  1 -
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |  1 -
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |  1 -
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |  1 -
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |  1 -
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |  1 -
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |  1 -
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |  1 -
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |  1 -
 arch/arm/boards/freescale-mx51-pdk/board.c         |  1 -
 arch/arm/boards/freescale-mx53-loco/board.c        |  1 -
 arch/arm/boards/freescale-mx53-smd/board.c         |  1 -
 arch/arm/boards/freescale-mx53-vmx53/board.c       |  1 -
 arch/arm/boards/freescale-mx6-arm2/board.c         |  1 -
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |  1 -
 arch/arm/boards/freescale-mx6-sabresd/board.c      |  1 -
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |  1 -
 arch/arm/boards/friendlyarm-mini6410/mini6410.c    |  1 -
 arch/arm/boards/friendlyarm-tiny210/tiny210.c      |  1 -
 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c    |  1 -
 arch/arm/boards/guf-cupid/board.c                  |  1 -
 arch/arm/boards/guf-neso/board.c                   |  1 -
 arch/arm/boards/guf-vincell/board.c                |  1 -
 arch/arm/boards/highbank/init.c                    |  2 --
 arch/arm/boards/imx21ads/imx21ads.c                |  1 -
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |  1 -
 arch/arm/boards/imx27ads/imx27ads.c                |  1 -
 arch/arm/boards/karo-tx25/board.c                  |  1 -
 arch/arm/boards/karo-tx28/tx28.c                   |  1 -
 arch/arm/boards/karo-tx51/tx51.c                   |  1 -
 arch/arm/boards/karo-tx53/board.c                  |  1 -
 arch/arm/boards/mioa701/board.c                    |  1 -
 arch/arm/boards/mmccpu/init.c                      |  1 -
 arch/arm/boards/netx/netx.c                        |  1 -
 arch/arm/boards/nhk8815/setup.c                    |  1 -
 arch/arm/boards/omap3evm/board.c                   |  1 -
 arch/arm/boards/panda/board.c                      |  1 -
 arch/arm/boards/pcm027/board.c                     |  1 -
 arch/arm/boards/pcm037/pcm037.c                    |  2 --
 arch/arm/boards/pcm038/pcm038.c                    |  1 -
 arch/arm/boards/pcm043/pcm043.c                    |  1 -
 arch/arm/boards/pcm049/board.c                     |  1 -
 arch/arm/boards/pcm051/board.c                     |  1 -
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |  1 -
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |  1 -
 arch/arm/boards/phycard-i.MX27/pca100.c            |  1 -
 arch/arm/boards/pm9261/init.c                      |  1 -
 arch/arm/boards/pm9263/init.c                      |  1 -
 arch/arm/boards/pm9g45/init.c                      |  1 -
 arch/arm/boards/qil-a926x/init.c                   |  1 -
 arch/arm/boards/raspberry-pi/rpi.c                 |  1 -
 arch/arm/boards/sama5d3xek/init.c                  |  2 --
 arch/arm/boards/scb9328/scb9328.c                  |  1 -
 arch/arm/boards/telit-evk-pro3/init.c              |  2 --
 arch/arm/boards/tny-a926x/init.c                   |  1 -
 arch/arm/boards/tqma53/board.c                     |  1 -
 arch/arm/boards/usb-a926x/init.c                   |  1 -
 arch/arm/boards/versatile/versatilepb.c            |  1 -
 arch/arm/boards/vexpress/init.c                    |  2 --
 arch/arm/lib/armlinux.c                            | 29 ++++++++++++++++------
 arch/arm/lib/bootm.c                               | 19 +++++++++++---
 82 files changed, 37 insertions(+), 100 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
