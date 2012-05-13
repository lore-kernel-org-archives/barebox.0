Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STXXO-0002jN-8G
 for barebox@lists.infradead.org; Sun, 13 May 2012 12:04:35 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1STXXL-0004wo-Qz
 for barebox@lists.infradead.org; Sun, 13 May 2012 14:04:31 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1STXXK-00071x-M6
 for barebox@lists.infradead.org; Sun, 13 May 2012 14:04:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 13 May 2012 14:04:27 +0200
Message-Id: <1336910669-26908-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: device parameter patches
To: barebox@lists.infradead.org

Two small patches...

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      parameter: return empty string for unset parameters
      parameter: remove unused struct member

 include/param.h |    1 -
 lib/parameter.c |    2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
