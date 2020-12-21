Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kr98K-0000mI-0z
 for barebox@lists.infradead.org; Mon, 21 Dec 2020 00:33:05 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 21 Dec 2020 01:32:49 +0100
Message-Id: <20201221003251.83042-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] usb: dwc2: gadget: fix stm32mp1 hang on barebox shutdown
To: barebox@lists.infradead.org
Cc: mgr@pengutronix.de

This applies on top of Jules' and Michael's latest dwc2 series.
With them, the dwc2 is usable in gadget mode on the stm32mp157c-dk2, but
boot/reset didn't work as barebox froze on shutdown.
This is fixed here.

Ahmad Fatoum (2):
  fixup! usb: dwc2: Add support for optional usb phy
  regulator: stm32-pwr: don't propagate regulator turn-off to supply

 drivers/regulator/stm32-pwr.c |  6 ++----
 drivers/usb/dwc2/dwc2.c       | 13 +++++++------
 2 files changed, 9 insertions(+), 10 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
