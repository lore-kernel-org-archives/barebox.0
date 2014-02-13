Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WE1LG-0000zz-J2
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 18:48:59 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WE1Ku-0001jW-2q
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 19:48:36 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WE1Ku-0003EG-1m
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 19:48:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 19:48:32 +0100
Message-Id: <1392317314-8985-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: more mtd
To: barebox@lists.infradead.org

Two small additions to the last series. This makes sure that the mtd
oob and mtd raw devices are only registered on mtds which actually
have oob.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      mtd: mtdraw: Do not create for partitions and devices without oob
      mtd: mtdoob: Do not create for partitions

 drivers/mtd/mtdoob.c | 5 ++++-
 drivers/mtd/mtdraw.c | 6 ++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
