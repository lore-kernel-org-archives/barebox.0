Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJHY-0005i3-5x
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:46:29 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TLJHV-0001uW-F8
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 21:46:25 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TLJHV-0005UZ-E7
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 21:46:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:46:19 +0200
Message-Id: <1349725584-20509-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of patches
To: barebox@lists.infradead.org

Some more patches in the direction of of probing, not i.MX specifc
this time.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      memory: return error in barebox_add_memory_bank
      of: find and register memory during probe
      console/of: evaluate linux,stdout-path property
      of: Add function to get the model name
      of: Print model name in banner

 common/console.c  |    3 ++
 common/memory.c   |    8 ++--
 common/version.c  |   11 +++++-
 drivers/of/base.c |  109 ++++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/memory.h  |    2 +-
 include/of.h      |   15 ++++++++
 6 files changed, 141 insertions(+), 7 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
