Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJp07-0007HN-OV
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 17:14:20 +0000
Received: from mail247.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 2DEC2104FF28
 for <barebox@lists.infradead.org>; Thu,  4 Oct 2012 19:20:32 +0200 (CEST)
Date: Thu, 4 Oct 2012 19:11:51 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121004171151.GO26553@game.jcrosoft.org>
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
Subject: [PATCH 0/2] clocksource
To: barebox@lists.infradead.org

HI,

	the smp twd patch was not udpated realted to the dev_err

	add nomadik drivers

The following changes since commit df80e395477857b34aaf0bae0785413a9ed8ffe3:

  net mdio_bus: Add missing bus_register (2012-10-04 17:08:06 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/clocksource

for you to fetch changes up to ebf6e1d052b6a846d0adab673385df6a427cfe51:

  arm: move nomadik timer to drivers/clocksource (2012-10-04 18:54:12 +0800)

----------------------------------------------------------------
introduce clocksource

move common clocksource to drivers/clocksource

move nomadik one as it's shared between 8815 and ux5x0
add generic Cortex A9/A5 smp twd timer support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      arm: add generic smp twd timer
      arm: move nomadik timer to drivers/clocksource

 arch/arm/Kconfig                           |    1 +
 arch/arm/mach-nomadik/8815.c               |    5 +++++
 arch/arm/mach-nomadik/include/mach/mtu.h   |   46 ----------------------------------------------
 arch/arm/mach-nomadik/include/mach/timex.h |    6 ------
 arch/arm/mach-nomadik/timer.c              |   54 +++---------------------------------------------------
 drivers/Kconfig                            |    1 +
 drivers/Makefile                           |    1 +
 drivers/clocksource/Kconfig                |    7 +++++++
 drivers/clocksource/Makefile               |    2 ++
 drivers/clocksource/arm_smp_twd.c          |  101 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/clocksource/nomadik.c              |  147 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 11 files changed, 268 insertions(+), 103 deletions(-)
 delete mode 100644 arch/arm/mach-nomadik/include/mach/mtu.h
 delete mode 100644 arch/arm/mach-nomadik/include/mach/timex.h
 create mode 100644 drivers/clocksource/Kconfig
 create mode 100644 drivers/clocksource/Makefile
 create mode 100644 drivers/clocksource/arm_smp_twd.c
 create mode 100644 drivers/clocksource/nomadik.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
