Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAupr-0006Li-Ui
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:20:17 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A1DCE1004D0E
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 07:19:51 +0100 (CET)
Date: Tue, 13 Jan 2015 07:19:40 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150113061940.GA30554@ns203013.ovh.net>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/3] defaultenv2: introduce init order
To: barebox@lists.infradead.org

Hi,

	The folowing patch serie add init order for init script
	and defaultenv2 splash default env

	same idea as in Linux

	we will store the init script in /env/init and the specific order of
	init via symlink in /env/rc.d

The following changes since commit 9cd14d260aa22ae089f81a07be2c0e5dea2ffc94:

  Merge branch 'for-next/pbl-console' (2015-01-09 17:38:27 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/defaultenv2

for you to fetch changes up to e474a71d0ff7a4fa347ffdfc65285b9e64dcb963:

  defaultenv-2: create a specific defaultenv for splash (2015-01-11 18:47:14 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      defaultenv-2: fix misplace NV dir in env
      defaultenv-2: introduce /env/rc.d
      defaultenv-2: create a specific defaultenv for splash

 arch/arm/boards/archosg9/env/rc.d/020-bootsource                                        |  1 +
 arch/arm/boards/at91sam9m10ihd/env/init/{mtdparts-002-m25p80 => mtdparts-m25p80}        |  0
 arch/arm/boards/at91sam9m10ihd/env/init/{mtdparts-001-nand => mtdparts-nand}            |  0
 arch/arm/boards/at91sam9m10ihd/env/init/splash                                          |  8 --------
 arch/arm/boards/at91sam9m10ihd/env/rc.d/010-splash                                      |  1 +
 arch/arm/boards/at91sam9m10ihd/env/rc.d/101-mtdparts-nand                               |  1 +
 arch/arm/boards/at91sam9m10ihd/env/rc.d/102-mtdparts-m25p80                             |  1 +
 arch/arm/boards/avnet-zedboard/env/{init => }/nv/linux.bootargs.base                    |  0
 arch/arm/boards/beagle/env/rc.d/100-mtdparts-nand                                       |  1 +
 arch/arm/boards/beaglebone/defaultenv-beaglebone/rc.d/050-usb-limit-1300                |  1 +
 arch/arm/boards/ccxmx51/env/rc.d/101-mtdparts-nand                                      |  1 +
 arch/arm/boards/clep7212/env/rc.d/020-bootsource                                        |  1 +
 arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/rc.d/020-bootsource               |  1 +
 arch/arm/boards/embedsky-e9/defaultenv-e9/rc.d/020-bootsource                           |  1 +
 arch/arm/boards/friendlyarm-mini2440/env/rc.d/101-mtdparts-nand                         |  1 +
 arch/arm/boards/guf-vincell/env/{init => }/nv/hostname                                  |  0
 arch/arm/boards/guf-vincell/env/{init => }/nv/linux.bootargs.base                       |  0
 arch/arm/boards/guf-vincell/env/rc.d/101-mtdparts-nand                                  |  1 +
 arch/arm/boards/highbank/env/init/{001-dtb-probe => dtb-probe}                          |  0
 arch/arm/boards/highbank/env/rc.d/001-dtb-probe                                         |  1 +
 arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/rc.d/011-automount-sd      |  1 +
 arch/arm/boards/karo-tx25/env/rc.d/101-mtdparts-nand                                    |  1 +
 arch/arm/boards/mx31moboard/env/rc.d/101-mtdparts-nor                                   |  1 +
 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/rc.d/020-bootsource     |  1 +
 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/rc.d/080-init-usbserial |  1 +
 arch/arm/boards/phytec-phycore-imx31/env/rc.d/101-mtdparts-nand                         |  1 +
 arch/arm/boards/phytec-phycore-imx31/env/rc.d/102-mtdparts-nor                          |  1 +
 arch/arm/boards/phytec-phycore-imx35/env/rc.d/101-mtdparts-nand                         |  1 +
 arch/arm/boards/phytec-phycore-imx35/env/rc.d/102-mtdparts-nor                          |  1 +
 arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/rc.d/020-bootsource     |  1 +
 arch/arm/boards/raspberry-pi/env/rc.d/070-bootargs-base                                 |  1 +
 arch/arm/boards/telit-evk-pro3/env/rc.d/101-mtdparts-nand                               |  1 +
 arch/arm/boards/telit-evk-pro3/env/rc.d/200-usb                                         |  1 +
 arch/arm/boards/versatile/env/rc.d/102-mtdparts-nor                                     |  1 +
 common/Kconfig                                                                          |  5 +++++
 defaultenv/Makefile                                                                     |  1 +
 defaultenv/defaultenv-2-base/bin/init                                                   |  2 +-
 defaultenv/defaultenv-2-base/rc.d/010-automount                                         |  1 +
 defaultenv/defaultenv-2-base/rc.d/020-ps1                                               |  1 +
 defaultenv/defaultenv-2-splash/init/splash                                              | 15 +++++++++++++++
 defaultenv/defaultenv-2-splash/rc.d/010-splash                                          |  1 +
 defaultenv/defaultenv.c                                                                 |  2 ++
 42 files changed, 54 insertions(+), 9 deletions(-)
 create mode 120000 arch/arm/boards/archosg9/env/rc.d/020-bootsource
 rename arch/arm/boards/at91sam9m10ihd/env/init/{mtdparts-002-m25p80 => mtdparts-m25p80} (100%)
 rename arch/arm/boards/at91sam9m10ihd/env/init/{mtdparts-001-nand => mtdparts-nand} (100%)
 delete mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/splash
 create mode 120000 arch/arm/boards/at91sam9m10ihd/env/rc.d/010-splash
 create mode 120000 arch/arm/boards/at91sam9m10ihd/env/rc.d/101-mtdparts-nand
 create mode 120000 arch/arm/boards/at91sam9m10ihd/env/rc.d/102-mtdparts-m25p80
 rename arch/arm/boards/avnet-zedboard/env/{init => }/nv/linux.bootargs.base (100%)
 create mode 120000 arch/arm/boards/beagle/env/rc.d/100-mtdparts-nand
 create mode 120000 arch/arm/boards/beaglebone/defaultenv-beaglebone/rc.d/050-usb-limit-1300
 create mode 120000 arch/arm/boards/ccxmx51/env/rc.d/101-mtdparts-nand
 create mode 120000 arch/arm/boards/clep7212/env/rc.d/020-bootsource
 create mode 120000 arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/rc.d/020-bootsource
 create mode 120000 arch/arm/boards/embedsky-e9/defaultenv-e9/rc.d/020-bootsource
 create mode 120000 arch/arm/boards/friendlyarm-mini2440/env/rc.d/101-mtdparts-nand
 rename arch/arm/boards/guf-vincell/env/{init => }/nv/hostname (100%)
 rename arch/arm/boards/guf-vincell/env/{init => }/nv/linux.bootargs.base (100%)
 create mode 120000 arch/arm/boards/guf-vincell/env/rc.d/101-mtdparts-nand
 rename arch/arm/boards/highbank/env/init/{001-dtb-probe => dtb-probe} (100%)
 create mode 120000 arch/arm/boards/highbank/env/rc.d/001-dtb-probe
 create mode 120000 arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/rc.d/011-automount-sd
 create mode 120000 arch/arm/boards/karo-tx25/env/rc.d/101-mtdparts-nand
 create mode 120000 arch/arm/boards/mx31moboard/env/rc.d/101-mtdparts-nor
 create mode 120000 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/rc.d/020-bootsource
 create mode 120000 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/rc.d/080-init-usbserial
 create mode 120000 arch/arm/boards/phytec-phycore-imx31/env/rc.d/101-mtdparts-nand
 create mode 120000 arch/arm/boards/phytec-phycore-imx31/env/rc.d/102-mtdparts-nor
 create mode 120000 arch/arm/boards/phytec-phycore-imx35/env/rc.d/101-mtdparts-nand
 create mode 120000 arch/arm/boards/phytec-phycore-imx35/env/rc.d/102-mtdparts-nor
 create mode 120000 arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/rc.d/020-bootsource
 create mode 120000 arch/arm/boards/raspberry-pi/env/rc.d/070-bootargs-base
 create mode 120000 arch/arm/boards/telit-evk-pro3/env/rc.d/101-mtdparts-nand
 create mode 120000 arch/arm/boards/telit-evk-pro3/env/rc.d/200-usb
 create mode 120000 arch/arm/boards/versatile/env/rc.d/102-mtdparts-nor
 create mode 120000 defaultenv/defaultenv-2-base/rc.d/010-automount
 create mode 120000 defaultenv/defaultenv-2-base/rc.d/020-ps1
 create mode 100644 defaultenv/defaultenv-2-splash/init/splash
 create mode 120000 defaultenv/defaultenv-2-splash/rc.d/010-splash

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
