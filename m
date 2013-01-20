Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TwrgA-0006Jz-Qf
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 09:59:07 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Twrfo-0000nc-Ss
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 10:58:44 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Twrfo-0003ZA-Rk
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 10:58:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 10:58:38 +0100
Message-Id: <1358675923-13628-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] MMC/SD improvements
To: barebox@lists.infradead.org

- make sure the mci*.probe parameter is always present and so that scripts
  can rely on it.
- let setting of the parameter be succesful when there is a card detected,
  even when it was present before
- Add proper card present callback for host drivers so that we can give
  a meaningful message in the framework.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      mci: return 0 for probe parameter even when already initialized
      mci: Always add probe parameter for cards
      mci: Add card_present callback
      mci i.MX esdhc: implement card_present callback
      mci atmel: implement card_present callback

 drivers/mci/atmel_mci.c |   21 +++++++++++++++------
 drivers/mci/imx-esdhc.c |   14 +++-----------
 drivers/mci/mci-core.c  |   33 +++++++++++----------------------
 include/mci.h           |    2 ++
 4 files changed, 31 insertions(+), 39 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
