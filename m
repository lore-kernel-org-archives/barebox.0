Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kg2Mr-0004SE-My
 for barebox@lists.infradead.org; Fri, 20 Nov 2020 09:06:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Nov 2020 10:06:05 +0100
Message-Id: <20201120090605.13372-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] doc: bcm283x: fix mix up regarding SoC on raspberry pi zero
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The Raspberry Pi Zero has the same ARMv6 SoC as the very first Raspberry
Pi 1, not an ARMv8.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/bcm2835.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index e9ad1d4d5724..c896871e0d82 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -11,9 +11,9 @@ Raspberry Pi
 
   3. Use ``make rpi_defconfig; make`` to build barebox. This will create the following images:
 
-     - ``images/barebox-raspberry-pi-1.img`` for the BCM2835/ARM1176JZF-S (Raspberry Pi 1)
+     - ``images/barebox-raspberry-pi-1.img`` for the BCM2835/ARM1176JZF-S (Raspberry Pi 1, Raspberry Pi Zero)
      - ``images/barebox-raspberry-pi-2.img`` for the BCM2836/CORTEX-A7 (Raspberry Pi 2)
-     - ``images/barebox-raspberry-pi-3.img`` for the BCM2837/CORTEX-A53 (Raspberry Pi 3, Raspberry Pi Zero)
+     - ``images/barebox-raspberry-pi-3.img`` for the BCM2837/CORTEX-A53 (Raspberry Pi 3)
 
      Copy the respective image for your model to your SD card and name it
      ``barebox.img``.
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
