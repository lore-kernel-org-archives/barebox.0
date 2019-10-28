Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCkC-0004Za-9u
 for barebox@lists.infradead.org; Mon, 28 Oct 2019 21:40:12 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 28 Oct 2019 22:39:43 +0100
Message-Id: <20191028213943.32071-7-ahmad@a3f.at>
In-Reply-To: <20191028213943.32071-1-ahmad@a3f.at>
References: <20191028213943.32071-1-ahmad@a3f.at>
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
Subject: [PATCH v2 6/6] Documentation: boards: stm32mp: remove done TODOs
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

With SD/MMC controller and Ethernet MAC support merged, we now have
usable STM32MP support. Remove the text that suggested otherwise.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 774ede6e560f..d4429aae2765 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -1,11 +1,6 @@
 STMicroelectronics STM32MP
 ==========================
 
-.. note::
-
-  Support for the STM32MP architecure in barebox is still in progress.
-  Bootstrapping an OS from mainline barebox is not yet supported.
-
 The STM32MP is a line of 32-bit ARM SoCs. They reuse peripherals of the
 STM32 line of microcontrollers and can have a STM32 MCU embedded as co-processor
 as well.
@@ -67,9 +62,3 @@ An appropriate image for the boot media can be generated with following
   }
 
 Image can then be flashed on e.g. a SD-Card.
-
-TODO
-----
-
-* Extend barebox MMCI support to support the SDMMC2
-* Extend barebox DesignWare MAC support to support the stmmac
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
