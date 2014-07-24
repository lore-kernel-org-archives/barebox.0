Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x234.google.com ([2a00:1450:400c:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAMLM-00064c-PW
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 16:58:13 +0000
Received: by mail-we0-f180.google.com with SMTP id w61so3091508wes.39
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 09:57:49 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Thu, 24 Jul 2014 18:54:56 +0200
Message-Id: <1406220898-10310-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 0/2] Rockchip: adapt pinctrl driver to new dts
To: barebox@lists.infradead.org

Hi,

the dts for Rockchip rk3188 imported in commit 9313920df6d "dts:
update to v3.16-rc1" contains a change in the bindings for the pinctrl
node, which now uses syscons to obtain the address of memory mapped
registers.

On barebox master branch the pinctrl driver fails during the probe
with the new dts and thus some pin functions are not set properly; for
this reason the ethernet port doesn't work at the moment on the Radxa
Rock.

The patches below fix the problem, adapting the driver to the new dts.

Beniamino

Beniamino Galvani (2):
  mfd: syscon: add device tree support
  pinctrl: rockchip: add support for new DT bindings

 drivers/mfd/syscon.c               |    6 ++++
 drivers/pinctrl/Kconfig            |    1 +
 drivers/pinctrl/pinctrl-rockchip.c |   53 ++++++++++++------------------------
 3 files changed, 24 insertions(+), 36 deletions(-)

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
