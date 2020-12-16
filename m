Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kpdg7-0007Wn-1X
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 20:45:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kpdg0-0005T8-CS
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 21:45:36 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kpdfz-00027Y-Su
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 21:45:35 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 16 Dec 2020 21:45:29 +0100
Message-Id: <20201216204534.8054-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 0/5] dwc2: improve gadget support
To: barebox@lists.infradead.org

This series adds support for clk and reset controller defined by dts. It also
enables the hardware force mode for the gadget in case the
otg.mode="peripheral" is set.

Michael Grzeschik (5):
  usb: dwc2: cleanup on error for deferred probing
  usb: dwc2: add clk dependency for probe via oftree
  usb: dwc2: add reset controller dependency for probe via oftree
  usb: dwc2: update the dr_mode on set_mode callback
  usb: dwc2: add support to force gadget mode

 drivers/usb/dwc2/core.h   |   1 +
 drivers/usb/dwc2/dwc2.c   |  33 ++++++++-
 drivers/usb/dwc2/gadget.c | 144 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 175 insertions(+), 3 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
