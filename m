Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqtU-0006Cs-Pa
 for barebox@lists.infradead.org; Wed, 13 May 2020 12:53:54 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 May 2020 14:53:48 +0200
Message-Id: <20200513125348.6266-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] Documentation: boards: stm32mp: document eMMC boot
 configuration
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

In order to boot from eMMC on the STM32MP15x, the boot_ack bit in the
ext_csd register must be set. Document this and while at it, fix a
misformatted code block in the same section.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 607c59fd0757..fc8a68cf4142 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -63,7 +63,7 @@ An appropriate image for a SD-Card can be generated with following
   }
 
 For eMMC, the boot partitions are used as the FSBL partitions and so the user
-partitions may look like this:
+partitions may look like this::
 
   image @STM32MP_BOARD@.img {
       partition ssbl {
@@ -79,6 +79,14 @@ partitions may look like this:
 The fsbl1 and fsbl2 can be flashed by writing to barebox ``/dev/mmcX.boot0`` and
 ``/dev/mmcX.boot1`` respectively or from a booted operating system.
 
+Additionally, the eMMC's ``ext_csd`` register must be modified to activate the
+boot acknowledge signal and to select a boot partition, e.g.::
+
+  mmcX.boot_ack=1
+  mmcX.boot=boot0
+
+The STM32MP1 BootROM does *not* support booting eMMC without fast boot acknowledge.
+
 Boot source selection
 ---------------------
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
