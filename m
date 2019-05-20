Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmxR-0004iG-Ln
 for barebox@lists.infradead.org; Mon, 20 May 2019 18:24:22 +0000
Received: by mail-pl1-x641.google.com with SMTP id w7so7104509plz.1
 for <barebox@lists.infradead.org>; Mon, 20 May 2019 11:24:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 20 May 2019 11:23:57 -0700
Message-Id: <20190520182402.12753-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/5] i.MX USB PHY fixes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This is a small series of patches I made while investigating USB issue
on RDU2 board. First three patches are just optional improvements. The
actual fix is in "usb: imx-usb-phy: Disable charger detect during
initialization" and "ARM: i.MX: Drop unused usb-imx6.c" removes some
abandoned code. Hopefully each patch is self-explanatory.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (5):
  usb: imx-usb-phy: Import register definitions from Linux driver
  usb: imx-usb-phy: Wrap lines to silence checkpatch
  usb: imx-usb-phy: Use stmp_reset_block() to reset PHY
  usb: imx-usb-phy: Disable charger detect during initialization
  ARM: i.MX: Drop unused usb-imx6.c

 arch/arm/mach-imx/Makefile    |   2 +-
 arch/arm/mach-imx/usb-imx6.c  | 111 ----------------------------------
 drivers/usb/imx/imx-usb-phy.c |  87 ++++++++++++++++++--------
 3 files changed, 62 insertions(+), 138 deletions(-)
 delete mode 100644 arch/arm/mach-imx/usb-imx6.c

-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
