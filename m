Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPCJB-0002Oj-61
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 20:07:46 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 20 Nov 2018 21:07:05 +0100
Message-Id: <20181120200714.3692-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 0/9] random fixes 
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

next round of random fixes reported by codacy:
https://app.codacy.com/app/olerem/barebox/issues/index?bid=9803255

Oleksij Rempel (9):
  net: e1000: fix "Uninitialized variable: phy_data" warning
  pinctrl: tegra30: fix "Possible null pointer dereference: group"
    warning
  fs: closedir: remove uninitialized variable ret
  fs: fix possible null pointer dereference of base.
  mfd: da9063: fix wrong NULL pointer test
  usb: at91_udc: remove useless NULL check
  mtd: atmel_nand: remove erroneous case
  usb: musb: fix possible out of bounds access
  lib: lodepng: remove useless test

 drivers/mfd/da9063.c               | 2 +-
 drivers/mtd/nand/atmel_nand.c      | 1 -
 drivers/net/e1000/main.c           | 2 +-
 drivers/pinctrl/pinctrl-tegra30.c  | 4 ++--
 drivers/usb/gadget/at91_udc.c      | 3 +--
 drivers/usb/musb/musb_gadget_ep0.c | 7 ++++++-
 fs/fs.c                            | 7 +++----
 lib/gui/lodepng.c                  | 8 +-------
 8 files changed, 15 insertions(+), 19 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
