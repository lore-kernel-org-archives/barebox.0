Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqAG-0008R9-L6
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 08:44:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jun 2020 10:44:46 +0200
Message-Id: <20200618084446.9684-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] Documentation: devicetree: hint at libfdt being available
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Since 7e5a875fff7d ("Compile libfdt for barebox"), we now also have
libfdt for operating on flattened device trees out of the PBL.
Document this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devicetree/index.rst | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index 908652642b9a..70ff9bc74a9c 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -3,9 +3,11 @@ Barebox devicetree handling and bindings
 
 The preferred way of adding board support to barebox is to have devices
 on non-enumerable buses probed from device tree.
-barebox imports the Linux OpenFirmware ``of_*``-API functions for device tree
-parsing, which makes porting the device tree specific bits from device drivers
-very straight forward.
+barebox provide both the Linux OpenFirmware ``of_*`` and the libfdt ``fdt_`` APIs
+for device tree parsing. The former makes porting the device tree specific
+bits from Linux device drivers very straight forward, while the latter can be
+used for very early (PBL) handling of flattened device trees, should this be
+necessary.
 
 Additionally, barebox has support for programmatically fixing up device trees
 it passes to the kernel, either directly via ``of_register_fixup`` or via device
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
