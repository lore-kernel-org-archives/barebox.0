Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORj0N-000679-4j
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:45:57 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1ORj0K-0008BR-Sl
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 11:45:52 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1ORj0K-0004Ok-Rg
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 11:45:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:45:45 +0200
Message-Id: <1277372751-15797-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: USB related patches
To: barebox@lists.infradead.org


The following changes since commit 334fe1dc8a1b866d1f0f4ccf82ff7b06589ec022:

  pca100: use generic default env (2010-06-22 15:44:45 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git usb-pu

Sascha Hauer (6):
      ehci: Make has_tt configurable via platform data
      ehci: Handle hub port reset properly
      usb: Check return value of host controller init
      ehci: use is_timeout for timeout instead of udelay counter
      ehci: Force a ehci_halt before trying to reset
      ehci: remove unused code

 drivers/usb/usb.c           |    5 ++-
 drivers/usb/usb_ehci.h      |    4 --
 drivers/usb/usb_ehci_core.c |   74 +++++++++++++++++++++++++++++++++---------
 include/usb/ehci.h          |   10 ++++++
 4 files changed, 72 insertions(+), 21 deletions(-)
 create mode 100644 include/usb/ehci.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
