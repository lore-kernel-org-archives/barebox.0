Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TZPGO-0006o5-MI
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 16:59:34 +0000
Received: from mail406.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id AC844DC4555
 for <barebox@lists.infradead.org>; Fri, 16 Nov 2012 18:07:07 +0100 (CET)
Date: Fri, 16 Nov 2012 17:57:29 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121116165729.GA8327@game.jcrosoft.org>
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
Subject: [PATCH 0/7] at91sam9 add  watchdog support with keep alive
To: barebox@lists.infradead.org

HI,

	The following patch series add the at91sam9 watchdog present on 
	sam9260/9g20/9261/9g10/9g45/9x5

	and introdudce the kep a live support so we can reset the watchdog via
	poller


The following changes since commit 281b927f44ae94280648714e3587efa4419f6ce3:

  Release v2012.11.0 (2012-11-16 13:54:49 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91sam9_wdt

for you to fetch changes up to 9bef4b05631b352e9dc842fbf68f84532c5cc257:

  at91sam9x5: add wathdog support (2012-11-15 03:24:29 +0800)

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
 drivers/watchdog/wd_core.c               |   20 ++++++++++++++++++++
 include/watchdog.h                       |    2 ++
 11 files changed, 259 insertions(+)
 create mode 100644 drivers/watchdog/at91sam9_wdt.c
 create mode 100644 drivers/watchdog/at91sam9_wdt.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
