Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RwrfQ-0001sY-Pg
 for barebox@lists.infradead.org; Mon, 13 Feb 2012 08:53:49 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RwrfK-0005Ew-H7
 for barebox@lists.infradead.org; Mon, 13 Feb 2012 09:53:42 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RwrfK-0007jO-Fq
 for barebox@lists.infradead.org; Mon, 13 Feb 2012 09:53:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Feb 2012 09:53:39 +0100
Message-Id: <1329123221-28492-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] uImage/bootm fixes
To: barebox@lists.infradead.org

One important fix to make oftree kernels on Arm work, one less important
fix to print the correct error message in bootm.

Sascha Hauer (2):
      ARM: Fix oftree booting
      uimage: Fix error message

 arch/arm/lib/armlinux.c |    1 +
 commands/bootm.c        |    2 +-
 2 files changed, 2 insertions(+), 1 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
