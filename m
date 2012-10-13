Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TN255-0005Vf-Ow
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 13:48:45 +0000
Received: from mail632.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 3E7A4FF887D
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 15:57:58 +0200 (CEST)
Date: Sat, 13 Oct 2012 15:46:22 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121013134622.GM13639@game.jcrosoft.org>
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
Subject: [PATCH 0/4 v2] add wakup source
To: barebox@lists.infradead.org

HI,

	v2:
	  update against next

	add wakeup source and amek power source human readable

The following changes since commit f0c7ee4201d56ec87c8b0deff3a481644a34bb9d:

  Merge branch 'for-next-1/karo-tx53' into next (2012-10-13 14:24:49 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/reset_source

for you to fetch changes up to f4d6ae60c34f1e01bf913e3b8166b478e1b55fb2:

  at91: add reset and wakeup source detection support (2012-10-13 13:45:02 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      reset_source: make enum and string human readable
      reset_source: add software reset as possible source
      reset_resource: add wakeup source
      at91: add reset and wakeup source detection support

 arch/arm/mach-at91/Makefile                  |    1 +
 arch/arm/mach-at91/include/mach/at91_shdwc.h |   40 ++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/reset_source.c            |   59 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx1.c                     |    6 +++---
 arch/arm/mach-samsung/reset_source.c         |    6 +++---
 common/reset_source.c                        |   32 +++++++++++++++++++++++++-------
 drivers/watchdog/im28wd.c                    |    6 +++---
 drivers/watchdog/imxwd.c                     |    6 +++---
 include/reset_source.h                       |   22 +++++++++++++++++-----
 9 files changed, 154 insertions(+), 24 deletions(-)
 create mode 100644 arch/arm/mach-at91/include/mach/at91_shdwc.h
 create mode 100644 arch/arm/mach-at91/reset_source.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
