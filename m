Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WxLlq-0007Z4-5K
 for barebox@lists.infradead.org; Wed, 18 Jun 2014 19:43:46 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed, 18 Jun 2014 21:43:19 +0200
Message-Id: <1403120599-9734-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1403120599-9734-1-git-send-email-jlu@pengutronix.de>
References: <1403120599-9734-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: AM335x: beaglebone: add simple script to change usb
 current limit
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300 | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300

diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300 b/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300
new file mode 100644
index 0000000..56313bf
--- /dev/null
+++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+echo -n "changing USB current limit to 1300 mA... "
+i2c_write -b 0 -a 0x24 -r 0x01 0x3e
+echo "done"
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
