Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo6.mail-out.ovh.net ([87.98.139.208]
 helo=mo6.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYd0J-0004oJ-EI
 for barebox@lists.infradead.org; Tue, 22 Oct 2013 14:32:15 +0000
Received: from mail630.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id F3D66FFA5B5
 for <barebox@lists.infradead.org>; Tue, 22 Oct 2013 16:32:16 +0200 (CEST)
Date: Tue, 22 Oct 2013 16:33:39 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131022143339.GC26639@ns203013.ovh.net>
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
Subject: [PATCH 0/3 V2] add ARM MMCI support
To: barebox@lists.infradead.org

Hi,

	v2: use max_req_size only if set

	to support the ARM AMBA MMCI support we need update the mci support
	to only request data length that the controler can handle


The following changes since commit 8f23a17f9bac836e4a2f4883ca8f886f535449a8:

  Merge branch 'pu/bootloader-spec' (2013-10-14 15:46:10 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/vexpress_mmci

for you to fetch changes up to 2d51fd108f2e857b264be86c24ee7130a6b281c7:

  vexpress: mmc support (2013-10-18 03:24:33 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      mci: add max_req_size support
      add: mmci drivers
      vexpress: mmc support

 arch/arm/boards/vexpress/init.c               |   9 +-
 arch/arm/mach-vexpress/devices.c              |  12 ++-
 arch/arm/mach-vexpress/include/mach/devices.h |   5 ++
 arch/arm/mach-vexpress/v2m.c                  |   1 +
 drivers/mci/Kconfig                           |   6 ++
 drivers/mci/Makefile                          |   1 +
 drivers/mci/mci-core.c                        |  38 ++++++--
 drivers/mci/mmci.c                            | 690 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mci/mmci.h                            | 167 +++++++++++++++++++++++++++++++++++
 include/linux/amba/mmci.h                     |  42 +++++++++
 include/mci.h                                 |   1 +
 11 files changed, 962 insertions(+), 10 deletions(-)
 create mode 100644 drivers/mci/mmci.c
 create mode 100644 drivers/mci/mmci.h
 create mode 100644 include/linux/amba/mmci.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
