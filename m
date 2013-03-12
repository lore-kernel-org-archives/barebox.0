Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFLWy-0004wC-Tz
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 09:30:03 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UFLWv-0005dc-UT
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 10:29:57 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UFLWv-0007oB-T4
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 10:29:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Mar 2013 10:29:53 +0100
Message-Id: <1363080597-10510-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fix i.MX external NAND boot bad block handling
To: barebox@lists.infradead.org

The i.MX external NAND boot code relied very much on all block
used for the bootloader are good. It has some bad block checking,
but unfortunately it tested for a bad block in each page of a
block and skipped this page instead of checking for a bad block
at the beginning of a block and skipping the whole block then.

The handling of 2k page NAND flashes has another problem with bad
blocks. We rely on a bad block table since we cannot properly keep
the BBM on flash. This also means that the external NAND boot code
cannot detect bad blocks. This series adds a barebox update handler
to generate a bad block table (well, as long as we consider a 32bit
bitmask a table ;) inside the initial 2k page.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      ARM: i.MX: external nand boot: check for bad blocks
      ARM: head: Add some space behind the image header
      ARM: i.MX: Add bbu handler for external NAND boot
      ARM: i.MX pcm043: register external nand boot handler

 arch/arm/boards/pcm043/pcm043.c           |   6 +
 arch/arm/include/asm/barebox-arm-head.h   |  10 ++
 arch/arm/mach-imx/Kconfig                 |   6 +
 arch/arm/mach-imx/Makefile                |   1 +
 arch/arm/mach-imx/external-nand-boot.c    |  59 +++++++--
 arch/arm/mach-imx/imx-bbu-external-nand.c | 204 ++++++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/bbu.h      |  11 ++
 arch/arm/mach-imx/include/mach/imx-nand.h |   6 +
 8 files changed, 289 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm/mach-imx/imx-bbu-external-nand.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
