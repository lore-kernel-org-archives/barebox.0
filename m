Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THHf6-0004lF-AJ
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 17:14:09 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1THHf2-0000yW-9r
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 19:14:04 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1THHf2-0004vC-8U
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 19:14:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Sep 2012 19:13:59 +0200
Message-Id: <1348766042-18815-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Fix environment generation dependencies
To: barebox@lists.infradead.org

barebox has an annoying longstanding bug in checking the defaultenv
generation dependencies. Often the defaultenv is not regenerated when
it should be. This series fixes this.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      scripts/bareboxenv: Only print information if -v is given
      environment generation: remove unused CLEAN_FILES
      environment generation: Fix dependencies

 Makefile             |    2 +-
 common/Makefile      |   32 ++++++++++++++++++++------------
 scripts/bareboxenv.c |   15 +++++++++++----
 scripts/genenv       |    8 +++++---
 4 files changed, 37 insertions(+), 20 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
