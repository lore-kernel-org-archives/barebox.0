Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kBiDi-0007UR-22
 for barebox@lists.infradead.org; Fri, 28 Aug 2020 17:31:22 +0000
From: Bastian Krause <bst@pengutronix.de>
Date: Fri, 28 Aug 2020 19:31:15 +0200
Message-Id: <20200828173115.22292-1-bst@pengutronix.de>
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Bastian Krause <bst@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

In order to boot from eMMC on the STM32MP15x, the boot_ack bit in the
ext_csd register must be set. Document this and while at it, fix a
misformatted code block in the same section.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Documentation/boards/stm32mp.rst | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 7c657eb990..b235c39927 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -64,7 +64,7 @@ An appropriate image for a SD-Card can be generated with following
   }
 
 For eMMC, the boot partitions are used as the FSBL partitions and so the user
-partitions may look like this:
+partitions may look like this::
 
   image @STM32MP_BOARD@.img {
       partition ssbl {
@@ -80,6 +80,17 @@ partitions may look like this:
 The fsbl1 and fsbl2 can be flashed by writing to barebox ``/dev/mmcX.boot0`` and
 ``/dev/mmcX.boot1`` respectively or from a booted operating system.
 
+Additionally, the eMMC's ``ext_csd`` register must be modified to activate the
+boot acknowledge signal (``BOOT_ACK``) and to select a boot partition.
+
+Assuming ``CONFIG_CMD_MMC_EXTCSD`` is enabled and the board shall boot from
+``/dev/mmc1.boot1``::
+
+  mmc_extcsd /dev/mmc1 -i 179 -v 0x50
+
+The STM32MP1 BootROM does *not* support booting from eMMC without fast boot
+acknowledge.
+
 Boot source selection
 ---------------------
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
