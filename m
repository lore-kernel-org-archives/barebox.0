Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brMgv-00035O-1J
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 10:11:18 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Tue,  4 Oct 2016 12:10:43 +0200
Message-Id: <20161004101048.12970-1-ejo@pengutronix.de>
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
Subject: [PATCH 0/5] Extend squashfs support
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

This adds missing compression methods: lz4, lzo, zlib

It also creates missing links in driver and detection code in order to allow
using squashfs with those nice barebox autodetection features and especially
for bootspec booting.

The appendroot mechanism currently (only) supports booting form an ubi volume.

Enrico Jorns (5):
  fs: squashfs: port lzo compression support from kernel
  fs: squashfs: port lz4 compression support from kernel
  fs: squashfs: port zlib compression support from kernel
  Add filetype and detection for squashfs images
  fs: squashfs: append linux rootarg for ubi volume

 common/filetype.c          |   4 ++
 fs/squashfs/Kconfig        |  45 +++++++++++++++
 fs/squashfs/Makefile       |   3 +
 fs/squashfs/lz4_wrapper.c  | 140 +++++++++++++++++++++++++++++++++++++++++++++
 fs/squashfs/lzo_wrapper.c  | 128 +++++++++++++++++++++++++++++++++++++++++
 fs/squashfs/squashfs.c     |  32 +++++++++++
 fs/squashfs/zlib_wrapper.c | 132 ++++++++++++++++++++++++++++++++++++++++++
 include/filetype.h         |   1 +
 include/linux/lzo.h        |  47 +++++++++++++++
 9 files changed, 532 insertions(+)
 create mode 100644 fs/squashfs/lz4_wrapper.c
 create mode 100644 fs/squashfs/lzo_wrapper.c
 create mode 100644 fs/squashfs/zlib_wrapper.c
 create mode 100644 include/linux/lzo.h

-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
