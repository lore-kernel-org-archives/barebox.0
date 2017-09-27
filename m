Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dx8P2-0000qZ-CH
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 09:13:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 11:12:41 +0200
Message-Id: <20170927091245.9476-1-s.hauer@pengutronix.de>
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
Subject: usbgadget fix some crashes
To: Barebox List <barebox@lists.infradead.org>
Cc: Oleksij Rempel <ore@pengutronix.de>

The following fixes some crashes I stumbled upon when trying to use
the usbgadget autostart feature.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      usbgadget: autostart: Handle errors in file list gracefully
      usbgadget: do not register when no functions present
      usbgadget: only set to peripheral mode when error checking is done
      usbgadget: unregister when usb_composite_probe() fails

 drivers/usb/gadget/autostart.c | 18 +++++++++++++++---
 drivers/usb/gadget/multi.c     | 10 +++++++++-
 2 files changed, 24 insertions(+), 4 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
