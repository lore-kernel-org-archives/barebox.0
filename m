Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKpD8-0006ft-GO
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 11:39:55 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TKpD6-0003bk-8K
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 13:39:52 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TKpD6-0006yk-77
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 13:39:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Oct 2012 13:39:46 +0200
Message-Id: <1349609991-26567-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] misc improvements
To: barebox@lists.infradead.org

Some things that should have been changed earlier: Print error messages
when a driver probe or a initcall fails. Also some cleanups in the console
activation area.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      driver: print error message when probe fails
      resource: statically initialize iomem resource
      console: Cleanup console activation
      console: cleanup Kconfig
      startup: Print error message when initcall fails

 common/Kconfig        |   35 ++++++++++++++++++++++++---------
 common/console.c      |   51 +++++++++++++++++++++++++------------------------
 common/resource.c     |   10 ++--------
 common/startup.c      |    4 +++-
 drivers/base/driver.c |    7 ++++++-
 5 files changed, 63 insertions(+), 44 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
