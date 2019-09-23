Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNAj-0001nK-AA
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 12:10:32 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Sep 2019 14:10:18 +0200
Message-Id: <20190923121018.31574-7-a.fatoum@pengutronix.de>
In-Reply-To: <20190923121018.31574-1-a.fatoum@pengutronix.de>
References: <20190923121018.31574-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 6/6] Documentation: document barebox device tree handling
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The way barebox handles the Linux device trees and the device tree
compiler source included in the source tree may not be obvious
to new developers. Add a basic high-level documentation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devicetree/index.rst | 56 ++++++++++++++++++++++++++++--
 1 file changed, 54 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index c6309defdf03..3b911c5a9d42 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -1,5 +1,57 @@
-Barebox specific devicetree bindings
-====================================
+Barebox devicetree handling and bindings
+========================================
+
+The preferred way of adding board support to barebox is to have devices
+on non-enumerable buses probed from device tree.
+barebox imports the Linux OpenFirmware ``of_*``-API functions for device tree
+parsing, which makes porting the device tree specific bits from device drivers
+very straight forward.
+
+Additionally, barebox has support for programmatically fixing up device trees
+it passes to the kernel, either directly via ``of_register_fixup`` or via device
+tree overlays.
+
+Upstream Device Trees
+---------------------
+
+barebox regularly synchronizes with the Linux kernel device tree definitions
+via the `kernel.org Split device-tree repository`_.
+They are located under the top-level ``dts/`` directory.
+
+Patches against ``dts/`` and its subdirectories are not accepted upstream.
+
+.. _kernel.org  device-tree repository: https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git/
+
+barebox Device Trees
+--------------------
+
+For supporting architectures, barebox device trees are located in
+``arch/$ARCH/dts``. Usually the barebox ``board.dts`` imports the upstream
+device tree under ``dts/src/$ARCH`` with ``#include "$ARCH/board.dts"`` and
+then extends it with barebox-specifics like :ref:`barebox,state`,
+environment or boot-time device configuration.
+
+Device Tree Compiler
+--------------------
+
+barebox makes use of the ``dtc`` and ``fdtget`` utilities from the `Device-Tree
+Compiler`_ project.
+
+.. _Device-Tree Compiler: https://git.kernel.org/pub/scm/utils/dtc/dtc.git
+
+These utilities are built as part of the barebox build process.
+
+Steps to update ``dtc``:
+
+* Place a ``git-checkout`` of the upstream ``dtc`` directory in the parent
+  directory of your barebox ``git-checkout``.
+* Run ``scripts/dtc/update-dtc-source.sh`` from the top-level barebox directory.
+* Wait till ``dtc`` build, test, install and commit conclude.
+* If ``scripts/dtc/Makefile`` changes are necessary, apply them manually in
+  a commit preceding the ``dtc`` update.
+
+barebox-specific Bindings
+-------------------------
 
 Contents:
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
