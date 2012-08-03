Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo1.mail-out.ovh.net ([46.105.35.72]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxF24-0000NE-Gz
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 10:23:02 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 40979FFAFB0
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 12:29:09 +0200 (CEST)
Date: Fri, 3 Aug 2012 12:23:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120803102300.GB23597@game.jcrosoft.org>
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
Subject: [PATCH 00/12 v4] Add Pre-Bootloader support
To: barebox@lists.infradead.org

Hi,
v4:
	integrate Sascha comments
	split pbl and barebox start on arm (more easy to review and maintain)
	optimezed copy of the piggydata only if needed
	fix make clean

v3:
	drop
	ARM: Separate assembler functions into their own section

	drop already applied
	decompress_unlzo: define decompress_unlzo as decompress

	update early malloc to the end of the malloc space

v2:

	add custom cppflags to pbl 
	on arm always the garbage collector

please pull
The following changes since commit 6efca01b82a59f32b016f9cfd46b12e8e632ee92:

  eukrea_cpuimx35: fix USB host (2012-08-02 11:01:18 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/pbl

for you to fetch changes up to 1d861eb2a6384495261122f183842fcd8a8e059e:

  arm: always enable the garbage collector for pbl (2012-08-03 18:09:16 +0800)

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
Jean-Christophe PLAGNIOL-VILLARD (10):
      kbuild: add pre-bootloader (pbl) target
      Add pre-bootloader (pbl) image support
      pbl: discard unwind symbol if enable in barebox
      Add compressed image support
      decompressor: import malloc/free implementation for linux 3.4
      ARM: add early malloc support needed by the decompressor
      compressed image: add gzip support
      at91: add lowlevel init to the pbl
      kbuild: allow to have custom cppflags for pbl
      arm: always enable the garbage collector for pbl

Sascha Hauer (2):
      Makefile.clean: include Makefiles again
      ARM pbl: Add .gitignore for generated files

 Makefile                            |   11 ++++-
 arch/arm/Kconfig                    |    2 +
 arch/arm/Makefile                   |   11 +++++
 arch/arm/cpu/Makefile               |    3 +-
 arch/arm/cpu/start-pbl.c            |  143 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/start-reset.c          |   67 ++++++++++++++++++++++++++
 arch/arm/cpu/start.c                |   54 +++++++--------------
 arch/arm/lib/Makefile               |    4 ++
 arch/arm/lib/barebox.lds.S          |    3 +-
 arch/arm/mach-at91/Makefile         |    2 +
 arch/arm/pbl/.gitignore             |    5 ++
 arch/arm/pbl/Makefile               |   40 ++++++++++++++++
 arch/arm/pbl/piggy.gzip.S           |    6 +++
 arch/arm/pbl/piggy.lzo.S            |    6 +++
 arch/arm/pbl/zbarebox.lds.S         |   78 +++++++++++++++++++++++++++++++
 common/Kconfig                      |   44 +++++++++++++++++
 include/asm-generic/memory_layout.h |    1 +
 include/asm-generic/sections.h      |    2 +
 include/linux/decompress/mm.h       |   68 +++++++++++++++++++++++++++
 lib/decompress_inflate.c            |    1 +
 pbl/Makefile                        |    5 ++
 pbl/misc.c                          |   14 ++++++
 pbl/string.c                        |  127 +++++++++++++++++++++++++++++++++++++++++++++++++
 scripts/Makefile.build              |   48 +++++++++++++++++--
 scripts/Makefile.clean              |    2 +-
 scripts/Makefile.lib                |   14 ++++++
 26 files changed, 715 insertions(+), 46 deletions(-)
 create mode 100644 arch/arm/cpu/start-pbl.c
 create mode 100644 arch/arm/cpu/start-reset.c
 create mode 100644 arch/arm/pbl/.gitignore
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
