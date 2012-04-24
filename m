Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SMbw9-0001aG-Iz
 for barebox@lists.infradead.org; Tue, 24 Apr 2012 09:21:29 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SMbw2-0007ME-00
 for barebox@lists.infradead.org; Tue, 24 Apr 2012 11:21:22 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SMbw1-0002nN-V5
 for barebox@lists.infradead.org; Tue, 24 Apr 2012 11:21:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Apr 2012 11:21:16 +0200
Message-Id: <1335259279-25353-1-git-send-email-s.hauer@pengutronix.de>
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

Some device parameter patches.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      param: make return value of param getter function const
      devinfo: use accessor function for parameters
      dev_add_param: check if param exists already

 drivers/base/driver.c |    2 +-
 include/param.h       |    6 +++---
 lib/parameter.c       |   14 +++++++++-----
 3 files changed, 13 insertions(+), 9 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
