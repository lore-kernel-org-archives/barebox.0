Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ssw0p-0005ee-Od
 for barebox@lists.infradead.org; Sun, 22 Jul 2012 13:15:56 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 943FFFF9352
 for <barebox@lists.infradead.org>; Sun, 22 Jul 2012 15:21:29 +0200 (CEST)
Date: Sun, 22 Jul 2012 15:16:28 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120722131628.GJ22657@game.jcrosoft.org>
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
Subject: [PATCH 0/7] compressed inmage update
To: barebox@lists.infradead.org

HI,

The following changes since commit 63ac9c743b1304b0b4b792643e4704394f6f8aeb:

  only compress default env in uncompressed images (2012-07-20 14:20:15 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/compressed-gzip

for you to fetch changes up to 5c808702b4235a39d78042f9ad4f99647c9b8c54:

  compressed image: add gzip support (2012-07-22 20:35:48 +0800)

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
      compressed: allow to link only what is needed
      compressed image: add gzip support

 Makefile                      |   31 +++++++++++++++++++++----------
 arch/arm/Makefile             |    7 +++++++
 arch/arm/cpu/start.c          |   20 +++++++++++++++++---
 arch/arm/lib/Makefile         |    2 +-
 arch/arm/lib/barebox.lds.S    |    2 +-
 commands/Makefile             |    2 +-
 common/Kconfig                |   25 ++++++++++++++++++++++---
 compressed/Makefile           |    5 +++++
 compressed/misc.c             |   10 ++++++++++
 compressed/string.c           |  127 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/decompress/mm.h |   68 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/decompress_inflate.c      |    1 +
 lib/decompress_unlzo.c        |    1 +
 piggy.gzip.S                  |    6 ++++++
 14 files changed, 288 insertions(+), 19 deletions(-)
 create mode 100644 compressed/Makefile
 create mode 100644 compressed/misc.c
 create mode 100644 compressed/string.c
 create mode 100644 include/linux/decompress/mm.h
 create mode 100644 piggy.gzip.S

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
