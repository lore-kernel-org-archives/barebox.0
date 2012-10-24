Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQvsq-00058X-6B
 for barebox@lists.infradead.org; Wed, 24 Oct 2012 08:00:14 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TQvso-0000pu-Ib
 for barebox@lists.infradead.org; Wed, 24 Oct 2012 10:00:10 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TQvso-0005vp-H9
 for barebox@lists.infradead.org; Wed, 24 Oct 2012 10:00:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Oct 2012 10:00:07 +0200
Message-Id: <1351065609-22101-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] tftp fixes
To: barebox@lists.infradead.org

Two fixes. One rather cosmetic, but the second is important for
the reliability of the tftp fs support.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      fs tftp: Only request a block once
      fs tftp: Fix possible fifo overflow

 fs/tftp.c |   12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
