Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXB-0003ip-Nw
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:07 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0001ww-8F
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWx-0000AE-RF
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:51 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:33 +0100
Message-Id: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 00/15] Makefile: sync with linux v4.13 and add thin archives
 support
To: Barebox List <barebox@lists.infradead.org>

Hi!

This series synchronizes parts of the Makefile with Linux v4.13 and adds
scripts/link-barebox.sh. Finally support for thin archives is added.

This support is mainly needed for socfpga-xload, because now all unneeded
objects are discarded and the xloader files do not blow up in size once
multiple boards are selected at the same time.
As is also speeds up the build time a little bit and shouldn't break
anything (hopefully), it is selected for all ARM platforms.

Compile tested for socfpga(-xload)_defconfig and imx_v7_defconfig
Tested on the socrates board.

Please test if this breaks anything for your hardware or not.

Steffen Trumtrar (15):
  Makefile: replace LINUXINCLUDE with BAREBOXINCLUDE
  Makefile: Correctly deal with make options which contain an "s"
  scripts/Kbuild.include: Fix portability problem of "echo -e"
  scripts/Kbuild.include: replace KBUILD_CPPFLAGS with CPPFLAGS
  debug: Add CONFIG_DEBUG_READABLE_ASM
  Makefile: improve line wrapping
  Makefile: link of barebox moved to script
  scripts: link-barebox: fix bash-ism
  scripts: link-barebox: force error on kallsyms failure
  scripts: link-barebox: allow architectures to use thin archives
    instead of ld -r
  scripts: link-barebox: kallsyms allow 3-pass generation
  scripts: link-barebox: minor improvement for thin archives build
  scripts: link-barebox: close thin archives --whole-archives option
  scripts: link-barebox: thin archives use P option to ar
  ARM: Kconfig: select THIN_ARCHIVES for ARM

 Makefile                | 221 +++++++---------------------------
 arch/arm/Kconfig        |   1 +
 common/Kconfig          |  14 +++
 scripts/Kbuild.include  |   8 +-
 scripts/Makefile.build  |  30 ++++-
 scripts/link-barebox.sh | 259 ++++++++++++++++++++++++++++++++++++++++
 6 files changed, 345 insertions(+), 188 deletions(-)
 create mode 100755 scripts/link-barebox.sh

-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
