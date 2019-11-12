Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSLD-0006gY-2E
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 09:20:07 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 12 Nov 2019 10:19:52 +0100
Message-Id: <20191112091956.26628-6-a.fatoum@pengutronix.de>
In-Reply-To: <20191112091956.26628-1-a.fatoum@pengutronix.de>
References: <20191112091956.26628-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 06/10] Documentation: boards: stm32mp: document boot error LED
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The STM32MP Evaluation Kits place a LED on PA13 to display boot status.
Document its blinking patterns.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index f93ec04eb04d..6d97b0d6d4a2 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -81,3 +81,13 @@ pulled down and BOOT0 and BOOT2 are connected to a 2P DIP switch::
  BOOT2 | O --O |
  BOOT0 | N --O |  <---- DFU on UART and USB OTG
        +-------+
+
+Boot status indicator
+---------------------
+
+The ROM code on the first Cortex-A7 core pulses the PA13 pad.
+An error LED on this pad can be used to indicate boot status:
+
+* **Boot Failure:** LED lights bright
+* **UART/USB Boot:** LED blinks fast
+* **Debug access:** LED lights weak
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
