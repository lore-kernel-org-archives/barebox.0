Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Iny-0008V4-My
 for barebox@lists.infradead.org; Thu, 27 Feb 2020 13:02:19 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 27 Feb 2020 14:02:10 +0100
Message-Id: <20200227130210.14956-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] Documentation: boards: stm32mp: document eMMC partition layout
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For eMMC, the boot partitions for FSBL instead of having two partitions
in the user area, like with SD-Card. Document this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 6d97b0d6d4a2..1253da52f15b 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -35,7 +35,7 @@ The resulting images will be placed under ``images/``:
 Flashing barebox
 ----------------
 
-An appropriate image for the boot media can be generated with following
+An appropriate image for a SD-Card can be generated with following
 ``genimage(1)`` config::
 
   image @STM32MP_BOARD@.img {
@@ -61,7 +61,22 @@ An appropriate image for the boot media can be generated with following
       }
   }
 
-Image can then be flashed on e.g. a SD-Card.
+For eMMC, the boot partitions are used as the FSBL partitions and so the user
+partitions may look like this:
+
+  image @STM32MP_BOARD@.img {
+      partition ssbl {
+          image = "barebox-@STM32MP_BOARD@.img"
+          size = 1M
+      }
+      partition barebox-environment {
+          image = "/dev/null"
+          size = 1M
+      }
+  }
+
+The fsbl1 and fsbl2 can be flashed by writing to ``/dev/mmcX.boot0`` from inside
+barebox or from a booted operating system.
 
 Boot source selection
 ---------------------
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
