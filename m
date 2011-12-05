Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXUNA-0006XJ-7U
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 08:58:04 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RXUN4-0004YB-Pv
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 09:57:58 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RXUN4-0007RQ-Oy
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 09:57:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Dec 2011 09:57:54 +0100
Message-Id: <1323075477-28567-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX53 sdhc
To: barebox@lists.infradead.org

Some patches for improving i.MX53 sdhc support.

Sascha Hauer (3):
      mci imx esdhc: enable i.MX53 fix for i.MX51 aswell
      ARM i.MX53: Adjust MMC clock frequencies to 200MHz
      mci imx-esdhc: do not overwrite probed host caps

 arch/arm/mach-imx/imx53.c |    9 +++++++++
 drivers/mci/imx-esdhc.c   |    4 ++--
 2 files changed, 11 insertions(+), 2 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
