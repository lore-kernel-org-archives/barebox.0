Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROpR7-0000sy-PO
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 11:38:22 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1ROpR1-0007M8-UI
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 12:38:15 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1ROpR1-0002UD-NE
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 12:38:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Nov 2011 12:38:12 +0100
Message-Id: <1321011494-4274-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mci multiblock write
To: barebox@lists.infradead.org

Two patches I had lying around for some time.

Sascha Hauer (2):
      mci: implement multi block write
      mci: remove unnecessary loops

 drivers/mci/mci-core.c |   81 ++++++++++++++++++++++++++++--------------------
 1 files changed, 47 insertions(+), 34 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
