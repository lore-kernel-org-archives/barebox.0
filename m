Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfTFf-0005S3-MK
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 10:27:53 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TfTFd-0000Hy-Lo
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 11:27:49 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TfTFd-0002tV-Kc
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 11:27:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Dec 2012 11:27:44 +0100
Message-Id: <1354530468-25823-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ext4 filesystem support
To: barebox@lists.infradead.org

Hi All,

The following adds ext4 readonly filesystem support to barebox.
The implementation is from U-Boot which recently gained ext4
support.
ext filesystems can automatically be detected, so the -t option
to mount is not necessary. Some preparation is needed because
ext filesystems have their magic at byte offset 1080. Currently
we do not pass in such a big buffer into the filesystem detection
code. To fix this we now pass the buffer size to the file detection
code so that we do not read past the buffer.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      ls command: call stat() only when necessary
      filetype: Pass bufsize
      add ext fs detection support
      fs: implement initial ext4 support from U-Boot

 arch/arm/lib/bootm.c                 |    2 +-
 arch/arm/mach-imx/imx-bbu-internal.c |    4 +-
 commands/bootm.c                     |    2 +-
 commands/ls.c                        |    9 +-
 common/filetype.c                    |   47 ++-
 common/uimage.c                      |    2 +-
 fs/Kconfig                           |    2 +
 fs/Makefile                          |    1 +
 fs/ext4/Kconfig                      |    3 +
 fs/ext4/Makefile                     |    1 +
 fs/ext4/ext4_common.c                |  551 ++++++++++++++++++++++++++++++++++
 fs/ext4/ext4_common.h                |   58 ++++
 fs/ext4/ext4fs.c                     |  153 ++++++++++
 fs/ext4/ext4fs.h                     |  127 ++++++++
 fs/ext4/ext_barebox.c                |  293 ++++++++++++++++++
 fs/ext4/ext_common.h                 |  195 ++++++++++++
 include/filetype.h                   |    5 +-
 lib/gui/image_renderer.c             |    6 +-
 lib/uncompress.c                     |    4 +-
 19 files changed, 1438 insertions(+), 27 deletions(-)
 create mode 100644 fs/ext4/Kconfig
 create mode 100644 fs/ext4/Makefile
 create mode 100644 fs/ext4/ext4_common.c
 create mode 100644 fs/ext4/ext4_common.h
 create mode 100644 fs/ext4/ext4fs.c
 create mode 100644 fs/ext4/ext4fs.h
 create mode 100644 fs/ext4/ext_barebox.c
 create mode 100644 fs/ext4/ext_common.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
