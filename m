Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XLHoi-0007p7-UF
 for barebox@lists.infradead.org; Sat, 23 Aug 2014 20:21:41 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Sat, 23 Aug 2014 17:19:21 -0300
Message-Id: <1408825163-6135-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH 0/2] mvebu: Openblocks A6 board support
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

Hello everyone,

This two-piece patchset adds support for Plat'home's Openblocks A6 board [1].
To make it a little more interesting, NAND support (ported from Linux) is
included.

Let's hope we can see USB and SATA soon!

[1] http://openblocks.plathome.com/products/a6/

Ezequiel Garcia (2):
  nand: Add Marvell Orion NAND driver
  ARM: mvebu: Add Plathome Kirkwood Openblocks A6 board support

 arch/arm/boards/Makefile                          |   1 +
 arch/arm/boards/plathome-openblocks-a6/Makefile   |   2 +
 arch/arm/boards/plathome-openblocks-a6/board.c    |   1 +
 arch/arm/boards/plathome-openblocks-a6/lowlevel.c |  32 +++++
 arch/arm/dts/Makefile                             |   1 +
 arch/arm/dts/kirkwood-openblocks_a6-bb.dts        |  13 ++
 arch/arm/mach-mvebu/Kconfig                       |   3 +
 drivers/mtd/nand/Kconfig                          |   7 +
 drivers/mtd/nand/Makefile                         |   1 +
 drivers/mtd/nand/nand_orion.c                     | 162 ++++++++++++++++++++++
 images/Makefile.mvebu                             |  11 ++
 11 files changed, 234 insertions(+)
 create mode 100644 arch/arm/boards/plathome-openblocks-a6/Makefile
 create mode 100644 arch/arm/boards/plathome-openblocks-a6/board.c
 create mode 100644 arch/arm/boards/plathome-openblocks-a6/lowlevel.c
 create mode 100644 arch/arm/dts/kirkwood-openblocks_a6-bb.dts
 create mode 100644 drivers/mtd/nand/nand_orion.c

-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
