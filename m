Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RmMlO-0007za-6a
 for barebox@lists.infradead.org; Sun, 15 Jan 2012 09:52:34 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 4897BFFC21A
 for <barebox@lists.infradead.org>; Sun, 15 Jan 2012 10:54:01 +0100 (CET)
Date: Sun, 15 Jan 2012 10:51:56 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120115095156.GH5002@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/5] Calao dfu upload kernel or uImage and boot it
To: barebox@lists.infradead.org

HI,

	this patch serie add the support to boot a uImage or kernel over dfu
	on calao boards

	this also add the support to defaultenv/boot to specify via getopt the
	mode or kernel/rootfs and ip

The following changes since commit 87428167719cd9e28b61cc19fab4984f31750930:

  Merge branch 'pu/jean-codesize' into next (2012-01-13 09:33:36 +0100)

are available in the git repository at:

  git://uboot.jcrosoft.org/barebox.git calao-boot

Jean-Christophe PLAGNIOL-VILLARD (5):
      dfu: add description how to specify the "description" to the long help
      defaultenv/boot: add getopt option support to select boot mode
      defaultenv/boot: add boot the kernel from the mem
      filetype: add command support
      usb-926x: add dfu mem options support

 arch/arm/boards/usb-a926x/env/bin/init_board |   10 ++++++-
 arch/arm/configs/usb_a9260_defconfig         |    1 +
 arch/arm/configs/usb_a9263_128mib_defconfig  |    1 +
 arch/arm/configs/usb_a9263_defconfig         |    1 +
 arch/arm/configs/usb_a9g20_128mib_defconfig  |    1 +
 arch/arm/configs/usb_a9g20_defconfig         |    1 +
 commands/Kconfig                             |    5 +++
 commands/Makefile                            |    1 +
 commands/dfu.c                               |    4 ++
 commands/filetype.c                          |   39 ++++++++++++++++++++++++++
 defaultenv/bin/_boot_help                    |   18 ++++++++++++
 defaultenv/bin/boot                          |   30 ++++++++++++++++----
 12 files changed, 105 insertions(+), 7 deletions(-)
 create mode 100644 commands/filetype.c
 create mode 100644 defaultenv/bin/_boot_help

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
