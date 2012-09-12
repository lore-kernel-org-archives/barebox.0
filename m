Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtE9-00049n-QG
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:08:02 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TBtCz-0007nm-1H
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 22:06:49 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TBtCz-0006Tz-0E
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 22:06:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:32 +0200
Message-Id: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] devicetree probe support
To: barebox@lists.infradead.org

Hi All,

The following patch series adds support for probing barebox from
devicetree.

Most of the of helper code is taken directly from the Linux Kernel,
only little glue code is needed to populate the barebox devicetree
from a dtb.

Currently the dtb can be probed with 'oftree -p <dtb>'. After calling
this command the devices found in the dtb are probed. Devices which
were present before are not probed again, instead the corresponding
device nodes are attached to the barebox devices.

Further directions could be that barebox takes the dtb directly from
a first stage loader, so a second stage barebox could be started just
like a Linux Kernel. I have some experimental code for that. Another
possibility would be to compile a dtb into barebox, but this is not
done yet.

This series contains support for the basic probing, GPIO, SPI and
several i.MX devices. The devicetree probe support nearly compiles
away if disabled and takes about 6k in an uncompressed image when
enabled.

Here is an example session:

barebox@Phytec phyCORE-i.MX27:/ oftree -p mnt/tftp/sha-oftree-pcm038
barebox@Phytec phyCORE-i.MX27:/ devinfo 1000c000.serial
resources:
num   : 0
start : 0x1000c000
size  : 0x00001000
driver: imx_serial

no info available for 1000c000.serial
no parameters available

device node: /soc/aipi@10000000/serial@1000c000
serial@1000c000 {
        compatible: "fsl,imx27-uart", "fsl,imx21-uart"
        reg: <0x1000c000 0x1000>
        interrupts: <0x12>
        status: "okay"
        fsl,uart-has-rtscts:
};

Sascha


The following changes since commit c9556d4a54db100a1786506ce199c86d3b231a3b:

  drivers/net/ksz8864rmn: add driver for Micrel KSZ8864RMN Ethernet Switch (2012-09-11 16:10:23 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git work/dt

for you to fetch changes up to c931520ecb121b299bf362b4c2481fc5f7e232cc:

  ARM i.MX: Add devicetree support for clocksource driver (2012-09-12 21:32:29 +0200)

----------------------------------------------------------------
Sascha Hauer (15):
      driver: add dev_get_drvdata function
      of: add devicetree probing support
      oftree command: Add devicetree probe support
      of: Add devicetree partition parsing
      spi: add oftree support
      ARM i.MX: Use platform_device_id for gpio driver
      ARM i.MX: implement clocksource as driver
      serial i.MX: oftree support
      net fec_imx: oftree support
      spi imx: dt support
      mfd mc13xxx: Add devicetree support
      cfi-flash: Add devicetree probe support
      mci i.MX esdhc: Add oftree support
      ARM i.MX: add devicetree support for gpio driver
      ARM i.MX: Add devicetree support for clocksource driver

 arch/arm/mach-imx/clocksource.c             |   85 ++-
 arch/arm/mach-imx/gpio.c                    |  111 +++-
 arch/arm/mach-imx/imx1.c                    |    9 +-
 arch/arm/mach-imx/imx21.c                   |   13 +-
 arch/arm/mach-imx/imx25.c                   |   10 +-
 arch/arm/mach-imx/imx27.c                   |   15 +-
 arch/arm/mach-imx/imx31.c                   |    7 +-
 arch/arm/mach-imx/imx35.c                   |    7 +-
 arch/arm/mach-imx/imx51.c                   |    9 +-
 arch/arm/mach-imx/imx53.c                   |   16 +-
 arch/arm/mach-imx/imx6.c                    |   15 +-
 arch/arm/mach-imx/include/mach/imx1-regs.h  |   23 -
 arch/arm/mach-imx/include/mach/imx21-regs.h |   24 -
 arch/arm/mach-imx/include/mach/imx25-regs.h |   27 -
 arch/arm/mach-imx/include/mach/imx27-regs.h |   23 -
 arch/arm/mach-imx/include/mach/imx31-regs.h |   27 -
 arch/arm/mach-imx/include/mach/imx35-regs.h |   28 -
 arch/arm/mach-imx/include/mach/imx51-regs.h |   19 -
 arch/arm/mach-imx/include/mach/imx53-regs.h |   19 -
 arch/arm/mach-imx/include/mach/imx6-regs.h  |   19 -
 commands/Kconfig                            |   12 +-
 commands/oftree.c                           |   28 +-
 common/oftree.c                             |    4 +-
 drivers/Kconfig                             |    1 +
 drivers/Makefile                            |    1 +
 drivers/base/driver.c                       |   35 +-
 drivers/base/platform.c                     |    5 +
 drivers/mci/imx-esdhc.c                     |   25 +-
 drivers/mfd/mc13xxx.c                       |   12 +
 drivers/net/fec_imx.c                       |   34 +-
 drivers/nor/cfi_flash.c                     |   29 +-
 drivers/of/Kconfig                          |    2 +
 drivers/of/Makefile                         |    3 +
 drivers/of/base.c                           |  802 +++++++++++++++++++++++++++
 drivers/of/gpio.c                           |   28 +
 drivers/of/partition.c                      |   64 +++
 drivers/serial/serial_imx.c                 |   17 +-
 drivers/spi/imx_spi.c                       |   49 +-
 drivers/spi/spi.c                           |   34 +-
 include/driver.h                            |   10 +
 include/of.h                                |  113 ++++
 include/spi/spi.h                           |    6 +
 42 files changed, 1493 insertions(+), 327 deletions(-)
 create mode 100644 drivers/of/Kconfig
 create mode 100644 drivers/of/Makefile
 create mode 100644 drivers/of/base.c
 create mode 100644 drivers/of/gpio.c
 create mode 100644 drivers/of/partition.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
