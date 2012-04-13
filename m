Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIhwH-0007Qi-PL
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 14:57:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SIhw9-0000lZ-EK
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 16:57:21 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SIhw9-0000Tm-DN
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 16:57:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Apr 2012 16:57:18 +0200
Message-Id: <1334329040-1718-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: console fixes
To: barebox@lists.infradead.org

Two small fixes for netconsole and simple console.

----------------------------------------------------------------
Sascha Hauer (2):
      console simple: return with a proper error value
      netconsole: bail out if console_register fails

 common/console_simple.c |   14 ++++++++------
 net/netconsole.c        |    8 +++++++-
 2 files changed, 15 insertions(+), 7 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
