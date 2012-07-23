Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StA81-00081B-2v
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 04:20:19 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 36A6FFF9414
 for <barebox@lists.infradead.org>; Mon, 23 Jul 2012 06:25:56 +0200 (CEST)
Date: Mon, 23 Jul 2012 06:20:52 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120723042052.GK22657@game.jcrosoft.org>
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
Subject: [PATCH 0/7 V2] compressed image update
To: barebox@lists.infradead.org

Hi,

v2:
	fix modules support
	move compressed barebox to arch/<arch?compressed
	rename target to zbarebox*

The following changes since commit 63ac9c743b1304b0b4b792643e4704394f6f8aeb:

  only compress default env in uncompressed images (2012-07-20 14:20:15 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/compressed-gzip2

for you to fetch changes up to 225bc30b768479030889a0995acc446ddcfd949d:

  compressed image: add gzip support (2012-07-23 12:13:38 +0800)

----------------------------------------------------------------
compressed: gzip support and cleanup

The follwing patch series add the support of GZIP

And allow now to link only what is need in the decompressor

This is needed if you want to compile a barebox with modules support

as we current rely on gcc and it's garbage colector to clean the non
needed object.

With modules support gcc will not do this.

This will allow to have a version of barebox shrink to the first
128KiB so it can fit in the first page of nand which is garanty
badblock free and then if we need more feature we will use modules
store in an other partitions.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      stddev: make it selectable via Kconfig
      decompress_unlzo: define decompress_unlzo as decompress
      compressed image: factorise compressor type
      decompressor: import malloc/free implementation for linux 3.4
      ARM: add early malloc support needed by the decompressor
      compressed: rename barebox target to zbarebox and zbarebox.bin
      compressed image: add gzip support

 Makefile                                        |   35 +++-----------------------
 arch/arm/Makefile                               |    9 ++++++-
 arch/arm/compressed/Makefile                    |   70 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/compressed/barebox.lds.S               |   70 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 piggy.lzo.S => arch/arm/compressed/piggy.gzip.S |    2 +-
 arch/arm/compressed/piggy.lzo.S                 |    6 +++++
 arch/arm/cpu/start.c                            |   61 +++++++++++++++++++++++++++++++---------------
 arch/arm/lib/Makefile                           |    2 +-
 arch/arm/lib/barebox.lds.S                      |    2 +-
 commands/Makefile                               |    2 +-
 common/Kconfig                                  |   25 ++++++++++++++++---
 compressed/misc.c                               |   14 +++++++++++
 compressed/string.c                             |  127 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/decompress/mm.h                   |   68 +++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/decompress_inflate.c                        |    1 +
 lib/decompress_unlzo.c                          |    1 +
 16 files changed, 437 insertions(+), 58 deletions(-)
 create mode 100644 arch/arm/compressed/Makefile
 create mode 100644 arch/arm/compressed/barebox.lds.S
 rename piggy.lzo.S => arch/arm/compressed/piggy.gzip.S (70%)
 create mode 100644 arch/arm/compressed/piggy.lzo.S
 create mode 100644 compressed/misc.c
 create mode 100644 compressed/string.c
 create mode 100644 include/linux/decompress/mm.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
