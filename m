Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UApV4-0005QB-FG
 for barebox@lists.infradead.org; Wed, 27 Feb 2013 22:29:24 +0000
Received: from mail645.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 49465FFA718
 for <barebox@lists.infradead.org>; Wed, 27 Feb 2013 23:45:22 +0100 (CET)
Date: Wed, 27 Feb 2013 23:28:18 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130227222818.GA23022@game.jcrosoft.org>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC TESTING] uncompress: update to lzo-2013 and add lz4
To: barebox@lists.infradead.org

HI,

	For people intresting in testing the new lzo-2013 and lz4 on barebox
	pbl included

	please take a look here

	have fun

The following changes since commit 8c3d39e624f2c3f513f1d63b8a6c5546414c3062:

  Merge branch 'for-next/vexpress' into next (2013-02-26 11:08:09 +0100)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/uncompress_lzo_lz4

for you to fetch changes up to a88640316095c9b940b944c614a7b8910e4da41c:

  pbl: add lz4 support (2013-02-28 01:59:43 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      lzo: update to lzo-2013
      arm: lzo: add unaligned support
      pbl: add lz4 support

Kyungsik Lee (2):
      decompressor: Add LZ4 decompressor module
      lib: Add support for LZ4-compressed kernel

 arch/arm/pbl/Makefile            |    3 ++-
 arch/arm/pbl/piggy.lz4.S         |    6 +++++
 arch/mips/pbl/Makefile           |    3 ++-
 common/filetype.c                |    4 +++
 include/filetype.h               |    1 +
 include/linux/decompress/unlz4.h |   10 +++++++
 include/linux/lz4.h              |   48 ++++++++++++++++++++++++++++++++++
 include/lzo.h                    |    9 ++++---
 lib/Kconfig                      |    4 +++
 lib/Makefile                     |    2 ++
 lib/decompress_unlz4.c           |  191 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/decompress_unlzo.c           |    4 +--
 lib/lz4/Makefile                 |    1 +
 lib/lz4/lz4_decompress.c         |  332 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/lz4/lz4defs.h                |   93 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/lzo/Makefile                 |    2 +-
 lib/lzo/lzo1x_compress.c         |  335 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------------------------------------------------------------------------------------------------
 lib/lzo/lzo1x_decompress.c       |  247 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 lib/lzo/lzo1x_decompress_safe.c  |  234 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/lzo/lzodefs.h                |   44 +++++++++++++++++++++++--------
 lib/uncompress.c                 |    6 +++++
 pbl/Kconfig                      |    3 +++
 pbl/decomp.c                     |    4 +++
 scripts/Makefile.lib             |    5 ++++
 24 files changed, 1183 insertions(+), 408 deletions(-)
 create mode 100644 arch/arm/pbl/piggy.lz4.S
 create mode 100644 include/linux/decompress/unlz4.h
 create mode 100644 include/linux/lz4.h
 create mode 100644 lib/decompress_unlz4.c
 create mode 100644 lib/lz4/Makefile
 create mode 100644 lib/lz4/lz4_decompress.c
 create mode 100644 lib/lz4/lz4defs.h
 delete mode 100644 lib/lzo/lzo1x_decompress.c
 create mode 100644 lib/lzo/lzo1x_decompress_safe.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
