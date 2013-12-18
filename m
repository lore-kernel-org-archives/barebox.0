Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJJb-0001dK-J1
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:45:40 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VtJJF-0002yR-Kk
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 16:45:17 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1VtJJF-0005tl-Jl
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 16:45:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:45:13 +0100
Message-Id: <1387381515-15476-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: dm9000 patches
To: barebox@lists.infradead.org

The resource sizes in the generic dm9000 register functions were
too big. This silently failed because the driver didn't check the return
values of dev_request_mem_region(). Fix both.

----------------------------------------------------------------
Sascha Hauer (2):
      net: dm9k: Fix resource sizes in add_dm9000_device
      net: dm9k: bail out when resources can't be claimed

 drivers/base/resource.c | 6 +++---
 drivers/net/dm9k.c      | 4 ++++
 2 files changed, 7 insertions(+), 3 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
