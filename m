Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ra9SJ-0001JO-Dg
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 17:14:25 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 12 Dec 2011 18:14:04 +0100
Message-Id: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 0/2] drivers/mtd: add a core
To: barebox@lists.infradead.org

This patchset aims at bringing a common core to all mtd
devices. This minimal core provides :
 - add_mtd_device()
 - del_mtd_device()

The add_mtd_device() creates 2 character devices, as
explained in the second commit.

This core will be used by drivers/mtd/devices/* (soon to
come), and hopefully drivers/mtd/nand/* if we agree on
add_mtd_device() functionality.

The core should provide read/write/erase capability which
suits all the devices (ie. nand, nor and bare).

If no agreement emerges, this core will be moved into
drivers/mtd/devices.

The nand devices are left as they were, and not converted to
the new core. This conversion will only be possible after
some feedback about the needs of nand legacy drivers.

Cheers.

--
Robert

Robert Jarzmik (2):
  drivers/mtd: introduce {add,del}_nand_device
  drivers/mtd: add a core mtd handler

 drivers/mtd/Kconfig               |    5 +
 drivers/mtd/Makefile              |    2 +
 drivers/mtd/core.c                |  314 +++++++++++++++++++++++++++++++++++++
 drivers/mtd/nand/atmel_nand.c     |    2 +-
 drivers/mtd/nand/diskonchip.c     |    8 +-
 drivers/mtd/nand/nand.c           |    4 +-
 drivers/mtd/nand/nand.h           |    3 +
 drivers/mtd/nand/nand_base.c      |    2 +-
 drivers/mtd/nand/nand_imx.c       |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c |    2 +-
 drivers/mtd/nand/nand_s3c2410.c   |    2 +-
 drivers/mtd/nand/nomadik_nand.c   |    2 +-
 12 files changed, 336 insertions(+), 12 deletions(-)
 create mode 100644 drivers/mtd/core.c

-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
