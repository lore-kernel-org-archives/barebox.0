Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TZQ8z-0007HB-79
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 17:55:58 +0000
Received: from mail406.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 3AAE4DC2EA2
 for <barebox@lists.infradead.org>; Fri, 16 Nov 2012 19:03:33 +0100 (CET)
Date: Fri, 16 Nov 2012 18:53:55 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121116175355.GB8327@game.jcrosoft.org>
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
Subject: [PATCH 0/7 v2] at91sam9 add watchdog support with keep alive
To: barebox@lists.infradead.org

HI,

	v2:

	 found a bug on MMU platform the watchdodog need to init before the
	 poll register on non-MMU it work fine

	 btw register the wdt drvier as coredevice asame as the device

	The following patch series add the at91sam9 watchdog present on 
	sam9260/9g20/9261/9g10/9g45/9x5

	and introdudce the kep a live support so we can reset the watchdog via
	poller

The following changes since commit 281b927f44ae94280648714e3587efa4419f6ce3:

  Release v2012.11.0 (2012-11-16 13:54:49 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91sam9_wdt

for you to fetch changes up to 4b4830060956d58f924fc14020609ba5c4fe44ca:

  at91sam9x5: add wathdog support (2012-11-15 04:20:49 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      watchdog: add keep alive support
      watchdog: add at91sam9 watchdog support
      at91sam9260/9g20: add wathdog support
      at91sam9261/9g10: add wathdog support
      at91sam9263: add wathdog support
      at91sam9g45: add wathdog support
      at91sam9x5: add wathdog support

 arch/arm/mach-at91/at91sam9260_devices.c |   12 ++++++++++++
 arch/arm/mach-at91/at91sam9261_devices.c |   12 ++++++++++++
 arch/arm/mach-at91/at91sam9263_devices.c |   11 +++++++++++
 arch/arm/mach-at91/at91sam9g45_devices.c |   12 ++++++++++++
 arch/arm/mach-at91/at91sam9x5_devices.c  |   12 ++++++++++++
 drivers/watchdog/Kconfig                 |    8 ++++++++
 drivers/watchdog/Makefile                |    1 +
 drivers/watchdog/at91sam9_wdt.c          |  131 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/watchdog/at91sam9_wdt.h          |   38 ++++++++++++++++++++++++++++++++++++++
 drivers/watchdog/wd_core.c               |   21 +++++++++++++++++++++
 include/watchdog.h                       |    2 ++
 11 files changed, 260 insertions(+)
 create mode 100644 drivers/watchdog/at91sam9_wdt.c
 create mode 100644 drivers/watchdog/at91sam9_wdt.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
