Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T1KsH-0004hv-8B
 for barebox@lists.infradead.org; Tue, 14 Aug 2012 17:25:50 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 391361054BD7
 for <barebox@lists.infradead.org>; Tue, 14 Aug 2012 19:30:28 +0200 (CEST)
Date: Tue, 14 Aug 2012 19:25:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120814172555.GP6271@game.jcrosoft.org>
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
Subject: [PATCH 0/7] smsc911x: runtime configuration improvement
To: barebox@lists.infradead.org

Hi,

please pull
The following changes since commit 3f96b4938c4046590be8a38fb114148c4bf1ca8e:

  Merge tag 'bootm_fix' of git://git.jcrosoft.org/barebox (2012-08-13 20:37:53 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git tags/smc911x_improve

for you to fetch changes up to 865ba468b906292c0158b8734dee5a31688e332b:

  smm911x: check if the device is ready before using it (2012-08-15 01:19:54 +0800)

----------------------------------------------------------------
smsc911x: runtime configuration improvement

 This patch series allow to detect and configure the drivers at the runtime

 - Check if the device is ready before using it
 - Update chip detection (take from the kernel 3.5)
 - improve detection handle to detect bus configuration and swap
 - add support to pass the shift via platform data
 - add 16bit bus width support
 - introduce read/write ops
 - move register define to smc911x.h

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      smc911x: move register define to smc911x.h
      smc911x: introduce read/write ops
      smc911x: add 16bit bus width support
      smc911x: add support to pass the shift via platform data
      smc911x: improve detection handle
      smc911x: update chip detection
      smm911x: check if the device is ready before using it

 arch/blackfin/boards/ipe337/ipe337.c |    7 +-
 drivers/net/Kconfig                  |    6 --
 drivers/net/smc911x.c                |  569 ++++++++++++++++++++++++++++++++++++++++++++++++---------------------------------------------------------------------------------------------------------
 drivers/net/smc911x.h                |  364 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/smc911x.h                    |   18 +++++
 5 files changed, 567 insertions(+), 397 deletions(-)
 create mode 100644 drivers/net/smc911x.h
 create mode 100644 include/smc911x.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
