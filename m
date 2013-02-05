Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo4.mail-out.ovh.net ([46.105.40.29]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U2mp0-0008Pl-1s
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 18:00:43 +0000
Received: from mail423.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id E02AA1050303
 for <barebox@lists.infradead.org>; Tue,  5 Feb 2013 19:10:50 +0100 (CET)
Date: Tue, 5 Feb 2013 18:59:27 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130205175927.GD19322@game.jcrosoft.org>
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
Subject: [PATCH 0/3] at91: add boot mode detection support
To: barebox@lists.infradead.org

Hi,

The following changes since commit e43e1498f65fe03cfc6b2744247eeccf27b26876:

  MIPS: pbl: fix none compression support (2013-02-05 09:43:17 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/sama5d3_bootmode

for you to fetch changes up to ce538beef9fabea8c461a206bf0335eb582a9eee:

  sama5d3: detect boot mode (2013-02-05 11:29:18 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      at91: add boot mode detection support
      sama5d3: add boot mode supprot
      sama5d3: detect boot mode

 arch/arm/boards/sama5d3xek/init.c                  |   24 ++++++++++++++++--------
 arch/arm/mach-at91/Kconfig                         |    9 +++++++++
 arch/arm/mach-at91/Makefile                        |    2 ++
 arch/arm/mach-at91/bootmode.c                      |   57 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/bootmode.h         |   70 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/sama5d3.h          |    1 +
 arch/arm/mach-at91/include/mach/sama5d3_bootmode.h |   45 +++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/sama5d3.c                       |   81 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/setup.c                         |    3 +++
 9 files changed, 284 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/mach-at91/bootmode.c
 create mode 100644 arch/arm/mach-at91/include/mach/bootmode.h
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d3_bootmode.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
