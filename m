Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLUB-0007fl-Oi
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 07:58:30 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QmLU5-0003hS-KY
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 09:58:21 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QmLU5-0002pO-JR
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 09:58:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 09:58:15 +0200
Message-Id: <1311839900-10389-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: fixes for -next
To: barebox@lists.infradead.org

The following has some cleanups and fixes for next.

3/5 fixes a longstanding bug in barebox which possibly affected
everyone. It triggered for me when Jean-Christophe moved some
files around to drivers/base. This changed the link order and
then some data in the fec driver got corrupted which then stopped
working. This one is also intended to go to master.
The other patches fix some regression introduced in the next branch.

Sascha Hauer (5):
      net: remove unused fields from struct eth_device
      ARM i.MX: Add missing cpu_is_mx53()
      Fix memory corruption bug in dev_id()
      fix typo
      mci: do not use unitialized resource

 arch/arm/mach-imx/include/mach/generic.h |    6 ++++++
 drivers/base/driver.c                    |    4 ++--
 drivers/mci/mci-core.c                   |    3 +--
 include/driver.h                         |    2 +-
 include/net.h                            |    2 --
 5 files changed, 10 insertions(+), 7 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
