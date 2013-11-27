Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlbdL-0005CN-Ki
 for barebox@lists.infradead.org; Wed, 27 Nov 2013 09:42:12 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Vlbd0-0004d3-0t
 for barebox@lists.infradead.org; Wed, 27 Nov 2013 10:41:50 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Vlbcz-0005vL-W2
 for barebox@lists.infradead.org; Wed, 27 Nov 2013 10:41:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2013 10:41:46 +0100
Message-Id: <1385545308-22820-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Make cpsw work again on latest beaglebone devicetree
 conversion
To: barebox@lists.infradead.org

It turned out we have to configure pinctrl on device nodes on which we
do not have devices in barebox. This resulted in the mdio lines not
being configured.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      pinctrl: Add functions to select pinctrl from device_node
      fixup! cpsw: Add devicetree probe support

 drivers/net/cpsw.c        |  7 +++++++
 drivers/pinctrl/pinctrl.c | 24 ++++++++++++++++++------
 include/pinctrl.h         | 12 ++++++++++++
 3 files changed, 37 insertions(+), 6 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
