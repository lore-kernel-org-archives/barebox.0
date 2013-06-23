Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UqqDu-0000V6-EG
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 19:45:19 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UqqDY-0003OM-31
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 21:44:56 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UqqDY-0001rp-1r
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 21:44:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 23 Jun 2013 21:44:50 +0200
Message-Id: <1372016693-30160-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] debug patches
To: barebox@lists.infradead.org

This removed the mostly nonfunctional *_NOISE kconfig options and
instead adds an option for tracing initcalls. Also we make the i.MX
early debug UART configurable via Kconfig.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      remove unused debug Kconfig options
      ARM: i.MX: Make debug UART selectable from Kconfig
      startup: Add initcall tracing debug option

 arch/arm/mach-imx/include/mach/debug_ll.h |  31 ++++++--
 commands/partition.c                      |   4 --
 common/Kconfig                            | 114 +++++++++++++++++++++++++-----
 common/startup.c                          |   4 ++
 drivers/net/smc91111.c                    |   4 --
 drivers/net/smc911x.c                     |   4 --
 6 files changed, 125 insertions(+), 36 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
