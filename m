Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeW96-0007ME-0f
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 22:34:44 +0000
Received: by lahh2 with SMTP id h2so6352271lah.0
 for <barebox@lists.infradead.org>; Tue, 22 Sep 2015 15:34:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 23 Sep 2015 01:34:07 +0300
Message-Id: <1442961253-24762-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/6] MIPS: ath79: add gpio support
To: barebox@lists.infradead.org

Antony Pavlov (6):
  MIPS: ath79: use gpiolib
  gpio: add ath79-gpio driver for Atheros MIPS SoCs
  MIPS: dts: ar9331.dtsi: add gpio
  MIPS: dts: tplink-mr3020.dts: move aliases up
  MIPS: dts: tplink-mr3020.dts: enable gpio & leds
  MIPS: tplink-mr3020_defconfig: enable gpio & leds

 arch/mips/Kconfig                               |   1 +
 arch/mips/configs/tplink-mr3020_defconfig       |  38 +++---
 arch/mips/dts/ar9331.dtsi                       |  10 ++
 arch/mips/dts/tplink-mr3020.dts                 |  43 ++++++-
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h |  17 +++
 drivers/gpio/Makefile                           |   1 +
 drivers/gpio/gpio-ath79.c                       | 156 ++++++++++++++++++++++++
 7 files changed, 244 insertions(+), 22 deletions(-)
 create mode 100644 drivers/gpio/gpio-ath79.c

-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
