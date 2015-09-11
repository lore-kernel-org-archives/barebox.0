Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZaS5T-00087R-65
 for barebox@lists.infradead.org; Fri, 11 Sep 2015 17:26:11 +0000
Received: by lbcjc2 with SMTP id jc2so43222024lbc.0
 for <barebox@lists.infradead.org>; Fri, 11 Sep 2015 10:25:48 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Fri, 11 Sep 2015 20:27:53 +0300
Message-Id: <1441992476-11703-1-git-send-email-pmamonov@gmail.com>
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
Subject: [RFC v2 0/3] WIP: add usb keyboard driver
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Changes since v1:

  * port missing submit_int_msg() from u-boot;
  * switch to polling via interrupt endpoint: now all keyboards work fine!


Peter Mamonov (3):
  usb: ehci-hcd: port periodic transactions implementation from the
    u-boot
  WIP: usb: ehci-hcd: use non-interruptible version of mdelay()
  input: port usb keyboard driver from the u-boot

 drivers/input/Kconfig       |   7 +
 drivers/input/Makefile      |   1 +
 drivers/input/usb_kbd.c     | 379 ++++++++++++++++++++++++++++++++++++++
 drivers/usb/host/ehci-hcd.c | 438 +++++++++++++++++++++++++++++++++++++++++++-
 drivers/usb/host/ehci.h     |  15 +-
 5 files changed, 836 insertions(+), 4 deletions(-)
 create mode 100644 drivers/input/usb_kbd.c

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
