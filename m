Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXCwb-00018X-4y
 for barebox@lists.infradead.org; Fri, 18 Oct 2013 16:30:34 +0000
Received: from mail629.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 3987FFFB199
 for <barebox@lists.infradead.org>; Fri, 18 Oct 2013 18:30:34 +0200 (CEST)
Date: Fri, 18 Oct 2013 18:31:47 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131018163147.GZ32444@ns203013.ovh.net>
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
Subject: [PATCH 0/3] devfs: add symlink support
To: barebox@lists.infradead.org

Hi,

The following changes since commit 8f23a17f9bac836e4a2f4883ca8f886f535449a8:

  Merge branch 'pu/bootloader-spec' (2013-10-14 15:46:10 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/devfs_symlink

for you to fetch changes up to 249a2883ed1d72cf735b68b5f7a0671e6de3ed14:

  USB: storage: register disks as usbdiskx symlink (2013-10-16 03:59:34 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      devfs: add symlink support
      partition: use symlink for named partition

Sascha Hauer (1):
      USB: storage: register disks as usbdiskx symlink

 common/partitions.c       |  3 +--
 drivers/usb/storage/usb.c |  8 ++++++++
 fs/devfs-core.c           | 45 ++++++++++++++++++++++++++++++++++++++++++++-
 fs/devfs.c                | 42 ++++++++++++++++++++++++++++++++++++++++--
 include/driver.h          |  4 ++++
 5 files changed, 97 insertions(+), 5 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
