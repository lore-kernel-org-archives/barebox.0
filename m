Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sv64B-0006wf-99
 for barebox@lists.infradead.org; Sat, 28 Jul 2012 12:24:19 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id E267EFF93A2
 for <barebox@lists.infradead.org>; Sat, 28 Jul 2012 14:30:12 +0200 (CEST)
Date: Sat, 28 Jul 2012 14:24:16 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120728122416.GA26655@game.jcrosoft.org>
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
Subject: [PATCH 00/12] Add Pre-Bootloader support
To: barebox@lists.infradead.org

Hi,


v2:

	add custom cppflags to pbl 
	on arm always the garbage collector

please pull
The following changes since commit 9ab50e0b9cb6400a4442acd36c3d4b315685fa6a:

  Merge branch 'for-next/tqma53' into next (2012-07-27 10:05:03 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git tags/pbl

for you to fetch changes up to 218db83678fa1602ac7ad7fe6946692d67976895:

  arm: allays enable the garbage collector for pbl (2012-07-28 20:14:45 +0800)

----------------------------------------------------------------
Add pre-bootloader (pbl) image support

This allows for creating a pre-bootloader binary for
 - nand boot
 - mmc boot
 - compressed image

Currently on the compressed image is implemented the boot really on current lowlevel
init support. In a second step this could be move to the pbl c code with generic framework.

The pbl will be incharge of the lowlevel init if needed.
The barebox will skip it.

The decompressor support lzo and gzip and allow to add easly more.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (11):
      kbuild: Init all relevant variables used in kbuild files so
      kbuild: add pre-bootloader (pbl) target
      Add pre-bootloader (pbl) image support
      pbl: discard unwind symbol if enable in barebox
      decompress_unlzo: define decompress_unlzo as decompress
      decompressor: import malloc/free implementation for linux 3.4
      ARM: add early malloc support needed by the decompressor
      compressed image: add gzip support
      at91: add lowlevel init to the pbl
      kbuild: allow to have custom cppflags for pbl
      arm: allays enable the garbage collector for pbl

Sascha Hauer (3):
      Add compressed image support
      only compress default env in uncompressed images
      ARM: Separate assembler functions into their own section

 Makefile                            |   11 ++++--
 arch/arm/Kconfig                    |    2 ++
 arch/arm/Makefile                   |    8 +++++
 arch/arm/cpu/Makefile               |    1 +
 arch/arm/cpu/start.c                |  113 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---
 arch/arm/lib/Makefile               |    4 +++
 arch/arm/lib/barebox.lds.S          |    3 +-
 arch/arm/lib/findbit.S              |    9 +++++
 arch/arm/mach-at91/Makefile         |    2 ++
 arch/arm/pbl/Makefile               |   40 ++++++++++++++++++++++
 arch/arm/pbl/piggy.gzip.S           |    6 ++++
 arch/arm/pbl/piggy.lzo.S            |    6 ++++
 arch/arm/pbl/zbarebox.lds.S         |   74 ++++++++++++++++++++++++++++++++++++++++
 common/Kconfig                      |   34 +++++++++++++++++++
 include/asm-generic/memory_layout.h |    1 +
 include/linux/decompress/mm.h       |   68 +++++++++++++++++++++++++++++++++++++
 lib/decompress_inflate.c            |    1 +
 lib/decompress_unlzo.c              |    1 +
 pbl/Makefile                        |    5 +++
 pbl/misc.c                          |   14 ++++++++
 pbl/string.c                        |  127 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 scripts/Makefile.build              |   75 ++++++++++++++++++++++++++++++++++++++---
 scripts/Makefile.lib                |   14 ++++++++
 23 files changed, 607 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm/pbl/Makefile
 create mode 100644 arch/arm/pbl/piggy.gzip.S
 create mode 100644 arch/arm/pbl/piggy.lzo.S
 create mode 100644 arch/arm/pbl/zbarebox.lds.S
 create mode 100644 include/linux/decompress/mm.h
 create mode 100644 pbl/Makefile
 create mode 100644 pbl/misc.c
 create mode 100644 pbl/string.c
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
