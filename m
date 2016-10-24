Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1byYkt-0007LP-9F
 for barebox@lists.infradead.org; Mon, 24 Oct 2016 06:29:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1byYkX-0003Ub-Fu
 for barebox@lists.infradead.org; Mon, 24 Oct 2016 08:28:45 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <sha@pengutronix.de>) id 1byYkX-0002MN-2o
 for barebox@lists.infradead.org; Mon, 24 Oct 2016 08:28:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Oct 2016 08:28:37 +0200
Message-Id: <20161024062843.2796-1-s.hauer@pengutronix.de>
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
Subject: [PATCH v2] squashfs additional decompressors
To: Barebox List <barebox@lists.infradead.org>

This series enables additional decompressors for squashfs.

Changes since v1:
- Enable the squashfs decompression wrapper for a decompression method
  always when the corresponding decompression library is enabled. The
  rationale is that the wrapper is cheap compared to the decompression
  library, so when the library is enabled we can also enable the wrapper.

----------------------------------------------------------------
Enrico Jorns (5):
      fs: squashfs: port lzo compression support from kernel
      fs: squashfs: port lz4 compression support from kernel
      fs: squashfs: port zlib compression support from kernel
      Add filetype and detection for squashfs images
      fs: squashfs: append linux rootarg for ubi volume

Sascha Hauer (1):
      fs: squashfs: Enable squashfs XZ support when XZ is enabled

 common/filetype.c          |   4 ++
 fs/squashfs/Kconfig        |  47 +++++++++++----
 fs/squashfs/Makefile       |   3 +
 fs/squashfs/lz4_wrapper.c  | 140 +++++++++++++++++++++++++++++++++++++++++++++
 fs/squashfs/lzo_wrapper.c  | 129 +++++++++++++++++++++++++++++++++++++++++
 fs/squashfs/squashfs.c     |  32 +++++++++++
 fs/squashfs/zlib_wrapper.c | 132 ++++++++++++++++++++++++++++++++++++++++++
 include/filetype.h         |   1 +
 8 files changed, 478 insertions(+), 10 deletions(-)
 create mode 100644 fs/squashfs/lz4_wrapper.c
 create mode 100644 fs/squashfs/lzo_wrapper.c
 create mode 100644 fs/squashfs/zlib_wrapper.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
