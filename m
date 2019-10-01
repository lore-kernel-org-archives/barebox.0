Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFBeq-00083U-BW
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 06:29:14 +0000
Received: from geraet.fritz.box (muedsl-82-207-205-165.citykom.de
 [82.207.205.165]) (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 88F171BF20D
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 06:29:05 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue,  1 Oct 2019 08:28:53 +0200
Message-Id: <20191001062853.1256-3-ahmad@a3f.at>
In-Reply-To: <20191001062853.1256-1-ahmad@a3f.at>
References: <20191001062853.1256-1-ahmad@a3f.at>
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
Subject: [PATCH 2/2] fixup! Documentation: document barebox device tree
 handling
To: barebox@lists.infradead.org

---
 Documentation/devicetree/index.rst | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index 3b911c5a9d42..908652642b9a 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -20,7 +20,7 @@ They are located under the top-level ``dts/`` directory.
 
 Patches against ``dts/`` and its subdirectories are not accepted upstream.
 
-.. _kernel.org  device-tree repository: https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git/
+.. _kernel.org Split device-tree repository: https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git/
 
 barebox Device Trees
 --------------------
@@ -34,21 +34,24 @@ environment or boot-time device configuration.
 Device Tree Compiler
 --------------------
 
-barebox makes use of the ``dtc`` and ``fdtget`` utilities from the `Device-Tree
-Compiler`_ project.
+barebox makes use of the ``dtc`` and ``fdtget`` and the underlying ``libfdt``
+from the `Device-Tree Compiler`_ project.
 
 .. _Device-Tree Compiler: https://git.kernel.org/pub/scm/utils/dtc/dtc.git
 
-These utilities are built as part of the barebox build process.
+These utilities are built as part of the barebox build process. Additionally,
+libfdt is compiled once more as part of the ``CONFIG_BOARD_ARM_GENERIC_DT``
+if selected.
 
-Steps to update ``dtc``:
+Steps to update ``scripts/dtc``:
 
 * Place a ``git-checkout`` of the upstream ``dtc`` directory in the parent
   directory of your barebox ``git-checkout``.
 * Run ``scripts/dtc/update-dtc-source.sh`` from the top-level barebox directory.
 * Wait till ``dtc`` build, test, install and commit conclude.
-* If ``scripts/dtc/Makefile`` changes are necessary, apply them manually in
-  a commit preceding the ``dtc`` update.
+* Compile-test with ``CONFIG_BOARD_ARM_GENERIC_DT=y``.
+* If ``scripts/dtc/Makefile`` or barebox include file changes are necessary,
+  apply them manually in a commit preceding the ``dtc`` update.
 
 barebox-specific Bindings
 -------------------------
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
