Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwvGW-0001YZ-UQ
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 11:39:49 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1PwvGV-00072J-0y
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 12:39:47 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1PwvGU-0001Zr-WD
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 12:39:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Mar 2011 12:39:40 +0100
Message-Id: <1299584385-6016-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: assorted patches
To: barebox@lists.infradead.org

Hi All,

Some assorted patches here. Most notable probably is the increase
of the chunk size in ramfs which greatly improves speed. The
gpio LEDs finally get a user and modules get usable again.

Sascha Hauer (5):
      ARM scb9328: Add gpio led support
      ramfs: increase chunk size to 4 kbyte
      mfd/mc13892: Add missing semicolons
      module: CONFIG_COMMAND does not exist anymore, remove ifdefs
      trigger command: fix printf format

 arch/arm/boards/scb9328/scb9328.c |   24 +++++++++++++++++++++++-
 commands/trigger.c                |    2 +-
 common/module.c                   |    2 --
 drivers/mfd/mc13892.c             |    4 ++--
 fs/ramfs.c                        |    2 +-
 5 files changed, 27 insertions(+), 7 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
