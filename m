Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo1.mail-out.ovh.net ([188.165.48.29]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxAsd-0006p4-Lo
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 05:57:00 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id A4050FFAA83
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 08:03:09 +0200 (CEST)
Date: Fri, 3 Aug 2012 07:57:01 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120803055701.GA21069@game.jcrosoft.org>
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
Subject: [PATCH 0/3] AT91: Rom boot prepare
To: barebox@lists.infradead.org

Hi,

	This patch serie prepare the support of Rom boot

The following changes since commit 6efca01b82a59f32b016f9cfd46b12e8e632ee92:

  eukrea_cpuimx35: fix USB host (2012-08-02 11:01:18 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git master

for you to fetch changes up to bfefad599289a98656013d9d9ce753fbb484f071:

  arm: at91: add custom barebox-arm-head (2012-08-03 13:36:41 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      arm: at91: add debug_ll support
      arm introduce CONFIG_MACH_ARM_HEAD option to allow custom head
      arm: at91: add custom barebox-arm-head

 arch/arm/Kconfig                                   |    5 +++++
 arch/arm/include/asm/barebox-arm-head.h            |    4 ++++
 arch/arm/mach-at91/include/mach/barebox-arm-head.h |   33 +++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/debug_ll.h         |   37 +++++++++++++++++++++++++++++++++++++
 4 files changed, 79 insertions(+)
 create mode 100644 arch/arm/mach-at91/include/mach/barebox-arm-head.h
 create mode 100644 arch/arm/mach-at91/include/mach/debug_ll.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
