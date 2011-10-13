Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REN3Z-000593-QT
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 15:18:51 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1REN3X-0007Um-OC
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 17:18:47 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1REN3X-0006EI-N2
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 17:18:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Oct 2011 17:18:42 +0200
Message-Id: <1318519124-23388-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: OMAP patches
To: barebox@lists.infradead.org

Two omap patches targeted for master.

Sascha Hauer (2):
      mci omap: do not fail on nonexistent pdata
      ARM panda: fix default env path in config

 arch/arm/configs/panda_defconfig |    2 +-
 drivers/mci/omap_hsmmc.c         |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
