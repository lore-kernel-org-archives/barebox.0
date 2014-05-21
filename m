Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5Lg-0002kO-Pa
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:10:21 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Wn5LC-0003yd-9d
 for barebox@lists.infradead.org; Wed, 21 May 2014 14:09:50 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1Wn5LJ-0008Kz-Dj
 for barebox@lists.infradead.org; Wed, 21 May 2014 14:09:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:09:53 +0200
Message-Id: <1400674196-31951-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mii-tool fixes
To: barebox@lists.infradead.org

The mii-tool command has several bugs in the gigabit support.
This series has some fixes for them.

----------------------------------------------------------------
Sascha Hauer (3):
      mii-tool: Fix string length
      mii-tool: Fix gigabit link test
      mii-tool: Fix gigabit advertise / link partner ability mixup

 commands/miitool.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
