Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCO5-0001n0-My
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-00021v-G2
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO2-0003CQ-ON
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:26 +0200
Message-Id: <20190527095744.5923-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 00/18] scripts: enable compilation on macOS
To: barebox@lists.infradead.org

With this patch series applied, imx_v7_defconfig along with the host
tools can be built on macOS. It should also pave the way for building
on the BSDs. Currently it still fails on NetBSD though:

	In file included from scripts/mod/modpost.c:15:0:
	scripts/mod/modpost.h:16:0: warning: "Elf_Ehdr" redefined
	 #define Elf_Ehdr    Elf32_Ehdr
	 ^
	In file included from scripts/mod/modpost.h:10:0,
			 from scripts/mod/modpost.c:15:
	/usr/include/elf.h:1093:0: note: this is the location of the previous definition
	 #define Elf_Ehdr Elf64_Ehdr
	 ^

Issues addressed in the series can be split into three groups:

- host tools depend on glibc or Linux headers
	replaced where appropriate with standard ISO/POSIX functionality
- build depends on GNU utilites:
	only stat(1). fixed by importing the linux patch that uses ls
	instead.
- endianness helpers
	These aren't (yet) POSIX-standardized, so I extended compiler.h
	to support macOS and the BSDs.

Only thing I can't yet compile is MXS_HOSTTOOLS, which depends on
pkg-config finding OpenSSL, but I guess that's something I need to fix
at my side.


Ahmad Fatoum (16):
  scripts: extract symbol offsets using target, not host, nm
  scripts: includes: restrict strlcpy prototype to glibc
  scripts: compiler.h: don't include <stdint.h> twice
  scripts: don't depend on system <asm/types.h>
  scripts: bareboxcrc32: remove usage of loff_t
  scripts: bareboximd: remove usage of loff_t
  scripts: compiler.h: add endianness helpers for macOS
  scripts: use "compiler.h" endianness helpers
  scripts: mkimage: s/fdatasync/fsync/ on macOS & OpenBSD
  scripts: removes uses of <asm*/errno.h> in favor of <errno.h>
  scripts: omap3-usb-loader: don't depend on unportable le32toh
  scripts: omap3-usb-loader: drop unneeded header
  scripts: imx-usb-loader: don't depend on unportable headers
  scripts: kwbimage: fix build with non-glibc systems
  scripts: compiler.h: use Linux <endian.h> as default
  scripts: compiler.h: support BSDs as well

Masahiro Yamada (1):
  kbuild: suppress warnings from 'getconf LFS_*'

Michael Forney (1):
  kbuild: Use ls(1) instead of stat(1) to obtain file size

 Makefile                       |  6 +++---
 defaultenv/Makefile            |  3 ++-
 scripts/Makefile.lib           |  4 ++--
 scripts/bareboxcrc32.c         |  2 +-
 scripts/bareboximd.c           |  3 +--
 scripts/check_size             |  2 +-
 scripts/compiler.h             | 36 ++++++++++++++++++++++++++--------
 scripts/extract_symbol_offset  |  2 +-
 scripts/file-size.sh           |  4 ++++
 scripts/fix_size.c             |  3 ++-
 scripts/gen-dtb-s              |  4 ++--
 scripts/imx/imx-image.c        |  2 +-
 scripts/imx/imx-usb-loader.c   |  3 +--
 scripts/include/linux/err.h    |  2 +-
 scripts/include/linux/string.h |  6 +++++-
 scripts/include/linux/types.h  | 14 +++++++++++--
 scripts/kwbimage.c             |  8 ++++++--
 scripts/mkimage.c              | 12 ++++++++++--
 scripts/omap3-usb-loader.c     |  6 +-----
 19 files changed, 84 insertions(+), 38 deletions(-)
 create mode 100755 scripts/file-size.sh

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
