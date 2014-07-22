Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9eXW-0008RJ-47
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 18:12:06 +0000
Received: by mail-wi0-f171.google.com with SMTP id hi2so6472633wib.16
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 11:11:08 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 22 Jul 2014 20:10:46 +0200
Message-Id: <1406052648-8675-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/2] Pinctrl drivers for Armada 370 and XP
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

We already have a common pinctrl driver for Marvell MVEBU SoCs but
SoC specific stubs for Armada 370 and XP were missing. This patch
set converts those over from Linux to Barebox to allow pin muxing.

The stubs were tested on Armada 370 and compile-tested for Armada XP.

Sebastian

Sebastian Hesselbarth (2):
  pinctrl: mvebu: add pinctrl driver for Armada 370
  pinctrl: mvebu: add pinctrl driver for Armada XP

 arch/arm/mach-mvebu/Kconfig        |   2 +
 drivers/pinctrl/mvebu/Kconfig      |   8 +
 drivers/pinctrl/mvebu/Makefile     |   2 +
 drivers/pinctrl/mvebu/armada-370.c | 416 +++++++++++++++++++++++++++++++++++++
 drivers/pinctrl/mvebu/armada-xp.c  | 403 +++++++++++++++++++++++++++++++++++
 5 files changed, 831 insertions(+)
 create mode 100644 drivers/pinctrl/mvebu/armada-370.c
 create mode 100644 drivers/pinctrl/mvebu/armada-xp.c

---
Cc: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
