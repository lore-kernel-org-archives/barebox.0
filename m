Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UyfjR-0007sY-8x
 for barebox@lists.infradead.org; Mon, 15 Jul 2013 10:10:13 +0000
Received: from mail618.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 682CE104FC1C
 for <barebox@lists.infradead.org>; Mon, 15 Jul 2013 12:09:50 +0200 (CEST)
Date: Mon, 15 Jul 2013 12:09:58 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130715100958.GG19197@ns203013.ovh.net>
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
Subject: [PATCH 0/3 v2] pbl: add lz4 compression support
To: barebox@lists.infradead.org

Hi,

	v2:
	keep lzo as default

	The following patch serie add the lz4 support to the pbl

Jean-Christophe PLAGNIOL-VILLARD (1):
      pbl: add lz4 support

Kyungsik Lee (2):
      decompressor: Add LZ4 decompressor module
      lib: Add support for LZ4-compressed kernel

 arch/arm/pbl/Makefile            |   3 +-
 arch/arm/pbl/piggy.lz4.S         |   6 ++++
 arch/mips/pbl/Makefile           |   3 +-
 arch/mips/pbl/piggy.lz4.S        |   6 ++++
 common/filetype.c                |   4 +++
 images/Makefile                  |   1 +
 include/filetype.h               |   1 +
 include/linux/decompress/unlz4.h |  10 ++++++
 include/linux/lz4.h              |  87 ++++++++++++++++++++++++++++++++++++++++++++++++
 lib/Kconfig                      |   4 +++
 lib/Makefile                     |   2 ++
 lib/decompress_unlz4.c           | 188 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/lz4/Makefile                 |   1 +
 lib/lz4/lz4_decompress.c         | 327 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/lz4/lz4defs.h                | 156 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/uncompress.c                 |   6 ++++
 pbl/Kconfig                      |   4 ++
 pbl/decomp.c                     |   4 +++
 scripts/Makefile.lib             |   5 +++
 19 files changed, 815 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/pbl/piggy.lz4.S
 create mode 100644 arch/mips/pbl/piggy.lz4.S
 create mode 100644 include/linux/decompress/unlz4.h
 create mode 100644 include/linux/lz4.h
 create mode 100644 lib/decompress_unlz4.c
 create mode 100644 lib/lz4/Makefile
 create mode 100644 lib/lz4/lz4_decompress.c
 create mode 100644 lib/lz4/lz4defs.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
