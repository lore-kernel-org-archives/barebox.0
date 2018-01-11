Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZXd4-0003kM-Bq
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 07:50:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1eZXcr-0007O5-Sb
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 08:50:13 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1eZXcr-0002Wa-GA
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 08:50:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jan 2018 08:50:05 +0100
Message-Id: <20180111075012.9050-1-s.hauer@pengutronix.de>
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
Subject: fastboot sparse support
To: Barebox List <barebox@lists.infradead.org>

This series adds support for Sparse images to the fastboot code.
Sparse images are necessary to flash images that do not fit into memory.

This requires more changes than I'd like to have, but unfortunately
we have to change the ubiformat code to flash parts of images instead
of only whole images. This change also makes the newly introduced
'u' flag (u for UBI) in the partition description for fastboot necessary.

Anyway, in the end it works as expected and memory size is no longer
a limit for fastboot.

Sascha

----------------------------------------------------------------
Sascha Hauer (7):
      fs: implement ftruncate
      ubiformat: Add ubiformat write function
      Documentation: USB gadget: Add section for partition description
      filetype: Add fastboot sparse format detection
      Add support for fastboot sparse images
      file_list: Add ubi flag
      usb: gadget: fastboot: Add sparse image support

 Documentation/user/usb.rst      |  49 ++++++--
 common/file-list.c              |   3 +
 common/filetype.c               |   5 +
 common/ubiformat.c              |  61 ++++++++++
 drivers/usb/gadget/Kconfig      |   1 +
 drivers/usb/gadget/f_fastboot.c | 235 +++++++++++++++++++++++++++++++++----
 fs/fs.c                         |  22 ++++
 include/file-list.h             |   1 +
 include/filetype.h              |   1 +
 include/image-sparse.h          |  67 +++++++++++
 include/ubiformat.h             |   3 +
 include/unistd.h                |   1 +
 lib/Kconfig                     |   3 +
 lib/Makefile                    |   1 +
 lib/image-sparse.c              | 249 ++++++++++++++++++++++++++++++++++++++++
 15 files changed, 669 insertions(+), 33 deletions(-)
 create mode 100644 include/image-sparse.h
 create mode 100644 lib/image-sparse.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
