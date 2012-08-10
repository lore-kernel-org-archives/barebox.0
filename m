Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Szmv6-00073G-TD
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 10:58:21 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Szmv4-0007Af-Mm
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 12:58:18 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Szmv4-0004O1-Lj
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 12:58:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Aug 2012 12:58:15 +0200
Message-Id: <1344596297-10781-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fix hush 'exit'
To: barebox@lists.infradead.org

This series turns the exit command into a shell builtin. This for
example prevents hush from exiting when a nonexisting script executed.

Sascha Hauer (2):
      hush: Make exit a shell builtin
      hush: catch errors from execute_binfmt

 common/command.c |   20 --------------------
 common/hush.c    |   45 ++++++++++++++++++++++++++++++++++++++-------
 2 files changed, 38 insertions(+), 27 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
