Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVDT8-0006sG-Js
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 10:34:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Dec 2018 11:33:58 +0100
Message-Id: <20181207103405.27365-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/7] Fastboot improvements
To: Barebox List <barebox@lists.infradead.org>

This series has a few improvements for fastboot.

So far the host always timed out when we issued a command that caused
barebox to shutdown, like "oem bootm ..." or similar. We now finish
the fastboot session beforehand to let the host know what is going on.
Also we now print the fastboot messages also on the barebox console
which makes it easier to follow what is going on on the barebox side.

Sascha Hauer (7):
  usb: gadget: fastboot: pass message type as enum
  usb: gadget: fastboot: drop unnecessary global variable
  usb: gadget: fastboot: remove unnecessary context setting
  usb: gadget: fastboot: tell host that we are going to shutdown
  usb: gadget: fastboot: be more informative on booting
  usb: gadget: fastboot: simplify reboot
  usb: gadget: fastboot: print fastboot messages also to the logs

 drivers/usb/gadget/f_fastboot.c | 236 +++++++++++++++++++++-----------
 include/usb/fastboot.h          |  10 +-
 2 files changed, 162 insertions(+), 84 deletions(-)

-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
