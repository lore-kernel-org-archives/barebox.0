Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDspB-0008Sr-Ii
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 09:43:18 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WDsop-0006RS-L3
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:42:55 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WDsop-0005qI-K3
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:42:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 10:42:49 +0100
Message-Id: <1392284573-22410-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: USB gadget / dfu fixes
To: barebox@lists.infradead.org

This cleans up the error pathes in the USB gadget and dfu layer.

----------------------------------------------------------------
Sascha Hauer (4):
      USB gadget: at91: return error when no udc is registered
      dfu command: check return values
      USB gadget: fsl: Bail out if no udc exists
      USB gadget: dfu: propagate error from usb_gadget_poll

 commands/dfu.c                | 9 ++++++---
 drivers/usb/gadget/at91_udc.c | 2 +-
 drivers/usb/gadget/dfu.c      | 7 ++++++-
 drivers/usb/gadget/fsl_udc.c  | 3 +++
 4 files changed, 16 insertions(+), 5 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
