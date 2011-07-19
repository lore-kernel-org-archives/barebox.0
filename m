Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj5qb-0006kw-Tv
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 08:40:22 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Qj5qX-00041y-19
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 10:40:05 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1Qj5qW-0001kH-Vx
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 10:40:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jul 2011 10:39:44 +0200
Message-Id: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] resources work
To: barebox@lists.infradead.org

Hi all,

Some resources related work in this series:

- add missing IORESOURCE_MEM flag to resources created by the
  wrapper in register_device
- add helper to register memory devices
- get rid of some map_base in the core
- convert the majority of i.MX devices to struct resource

The following changes since commit 7530c82c3d295c2e93f440dc2ee6440a72e41c3a:

  startup.c: make DEBUG_LL output more useful (2011-07-18 23:04:18 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git resources

Sascha Hauer (19):
      register_device: Add IORESOURCE_MEM flag
      device: Add a dev_request_mem_region function
      add a add_mem_device function
      generic memmap: use resources
      mem_read/write: use resources
      nand i.MX: convert to struct resource
      video i.MX: convert to struct resource
      serial i.MX: convert to struct resource
      i2c i.MX: convert to struct resource
      mci i.MX: convert to struct resource
      net i.MX fec: convert to struct resource
      mci i.MX esdhc: convert to struct resource
      spi i.MX: convert to struct resource
      video i.MX ipu: convert to struct resource
      i.MX devices: convert to struct resource
      cfi: convert to struct resource
      ARM pcm038: use add_mem_device helper
      ARM pcm037: use add_mem_device helper
      ARM i.MX51 babbage: use add_mem_device helper

 arch/arm/boards/freescale-mx51-pdk/board.c |   20 ++-------
 arch/arm/boards/pcm037/pcm037.c            |   56 ++++-----------------------
 arch/arm/boards/pcm038/pcm038.c            |   34 ++--------------
 arch/arm/mach-imx/devices.c                |    7 ++-
 commands/mem.c                             |   25 ++++++++++++
 drivers/i2c/busses/i2c-imx.c               |   28 ++++++++-----
 drivers/mci/imx-esdhc.c                    |    2 +-
 drivers/mci/imx.c                          |    2 +-
 drivers/mtd/nand/nand_imx.c                |    2 +-
 drivers/net/fec_imx.c                      |    2 +-
 drivers/nor/cfi_flash.c                    |   36 ++++++++---------
 drivers/serial/serial_imx.c                |    2 +-
 drivers/spi/imx_spi.c                      |    2 +-
 drivers/video/imx-ipu-fb.c                 |    2 +-
 drivers/video/imx.c                        |    2 +-
 fs/fs.c                                    |    5 +-
 include/driver.h                           |   20 ++++++++++
 lib/driver.c                               |   21 +++++++++-
 18 files changed, 132 insertions(+), 136 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
