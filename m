Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0IUW-00036B-Cy
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 22:50:05 +0000
Received: by mail-la0-f49.google.com with SMTP id gf5so2328728lab.8
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 15:49:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 27 Jun 2014 02:49:29 +0400
Message-Id: <1403822973-3151-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/4] MIPS: XBurst: add gpio support
To: barebox@lists.infradead.org

Antony Pavlov (4):
  gpio: add jz4740-gpio driver for Ingenic MIPS SoCs
  MIPS: XBurst: use gpiolib
  MIPS: dts: jz4755.dtsi: add gpio
  MIPS: ritmix-rzx50_defconfig: enable gpio stuff

 arch/mips/Kconfig                        |   1 +
 arch/mips/configs/ritmix-rzx50_defconfig |  28 ++++---
 arch/mips/dts/jz4755.dtsi                |  42 ++++++++++
 drivers/gpio/Kconfig                     |   6 ++
 drivers/gpio/Makefile                    |   1 +
 drivers/gpio/gpio-jz4740.c               | 140 +++++++++++++++++++++++++++++++
 6 files changed, 205 insertions(+), 13 deletions(-)
 create mode 100644 drivers/gpio/gpio-jz4740.c

-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
