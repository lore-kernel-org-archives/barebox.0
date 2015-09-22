Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeQ1l-000526-OS
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 16:02:47 +0000
Received: by lamp12 with SMTP id p12so17869849lam.0
 for <barebox@lists.infradead.org>; Tue, 22 Sep 2015 09:02:23 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 Sep 2015 18:58:29 +0300
Message-Id: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH v6 0/5] input: add usb keyboard driver
To: barebox@lists.infradead.org
Cc: pmamonov@gmail.com

Changes since v5:
	- Address issues reported here: 
	  http://lists.infradead.org/pipermail/barebox/2015-September/024726.html

	- input: usb_kbd: set idle time to minimum and limit polling rate

	  Idle time is the amount of time, during which the usb device will wait before
	  replying to the host interrupt packet. We don't want to waste that time, 
	  so keep it as small as possible. In particular this resolves the problem of 
	  very poor tftp performance, when the usb keyboard is enabled.

Peter Mamonov (5):
	common: clock: introduce mdelay_non_interruptible()
	usb: ehci-hcd: port periodic transactions implementation
	usb: ehci-hcd: detect re-entrance
	usb: ehci-hcd: use mdelay_non_inerruptible()
	input: port usb keyboard driver from the u-boot

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
