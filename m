Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpfUl-0007uT-64
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 14:05:51 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UpfUM-0004vW-7u
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 16:05:26 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UpfUM-0007E8-6g
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 16:05:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 16:05:21 +0200
Message-Id: <1371737125-18820-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: implement detect callback
To: barebox@lists.infradead.org


The following prepares to implement the detect callback for USB
and finally implements it in the ehci driver.

With this series all frameworks in barebox supporting on-demand-probing
support the new 'detect' command.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      usb: rename USB devices to reflect bus structure
      usb: move scanned status into core
      usb: implement a usb_host_detect to scan individual USB hosts
      usb: ehci: implement detect callback

 commands/usb.c              | 10 +++-------
 drivers/usb/core/usb.c      | 47 +++++++++++++++++++++++++++++++++++----------
 drivers/usb/host/ehci-hcd.c |  9 +++++++++
 include/usb/usb.h           |  5 ++++-
 4 files changed, 53 insertions(+), 18 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
