Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKQtP-0002mS-HF
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 09:09:40 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <str@pengutronix.de>) id 1SKQtI-0007ZI-Iz
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 11:09:32 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <str@pengutronix.de>) id 1SKQtI-0005CO-Hx
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 11:09:32 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 18 Apr 2012 11:09:18 +0200
Message-Id: <1334740160-19918-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: bootm fixes
To: barebox@lists.infradead.org

Hi all,

here are some bootm patches.
----------------------------------------------------------------
Steffen Trumtrar (2):
      bootm: Fix check for ret-value
      bootm: Align oftree

 commands/bootm.c |   19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
