Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui0M9-0004Hn-B2
 for barebox@lists.infradead.org; Thu, 30 May 2013 10:45:17 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Ui0Ln-0007ME-MD
 for barebox@lists.infradead.org; Thu, 30 May 2013 12:44:55 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Ui0Ln-0002gs-KU
 for barebox@lists.infradead.org; Thu, 30 May 2013 12:44:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 12:44:50 +0200
Message-Id: <1369910694-20991-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] OF updates
To: barebox@lists.infradead.org

This fixes some OF oddities we currently have.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      of: Also print disabled nodes
      of: remove unused define
      bootm: make sure to print fixed oftree
      bootm: print Kernel commandline in verbose mode

 arch/arm/lib/bootm.c |  4 ++++
 commands/bootm.c     |  4 ----
 common/oftree.c      | 21 +++++++++++++++------
 drivers/of/base.c    |  3 ---
 include/of.h         |  1 +
 5 files changed, 20 insertions(+), 13 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
