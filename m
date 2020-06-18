Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqZn-0001xV-8s
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 09:11:18 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jun 2020 11:11:02 +0200
Message-Id: <20200618091102.30150-16-a.fatoum@pengutronix.de>
In-Reply-To: <20200618091102.30150-1-a.fatoum@pengutronix.de>
References: <20200618091102.30150-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 15/15] Documentation: devicetree: codify extension of upstream
 DTS by phandles
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Sync with the upstream device tree repository has been a common cause
for breakage in barebox. Often unnoticed:

* New bindings are merged upstream and device trees migrated, but
  barebox didn't yet have support
* Nodes are renamed upstream, but barebox still extends the old name,
  with duplicate nodes resulting

We can solve the second one by requiring dtc to give us errors when
paths we extend no longer exist. Document how to do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devicetree/index.rst | 41 ++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index 908652642b9a..62fa990032b3 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -31,6 +31,47 @@ device tree under ``dts/src/$ARCH`` with ``#include "$ARCH/board.dts"`` and
 then extends it with barebox-specifics like :ref:`barebox,state`,
 environment or boot-time device configuration.
 
+Device Tree probing largely happens via compatible properties with no special
+meaning to the node names themselves. It's thus paramount that any device tree
+nodes extended in the barebox device tree are referenced by a phandle, not by
+path, to avoid run-time breakage like this::
+
+  # Upstream dts/src/$ARCH/board.dts
+  / {
+  	leds {
+            led-red { /* formerly named red when the barebox DTS was written */
+            	/* ... */
+            };
+        };
+  };
+
+  # barebox arch/$ARCH/dts/board.dts
+  #include <$ARCH/board.dts>
+  / {
+  	leds {
+            red {
+                barebox,default-trigger = "heartbeat";
+            };
+        };
+  };
+
+In the prvious example, a device tree sync with upstream resulted in a regression
+as the former override became a new node with a single property without effect.
+
+Using phandles avoids this. When no phandle mapping the full path is defined
+upstream, the ``&{/path}`` syntax should be used instead, e.g.::
+
+  &{/leds/red} {
+      barebox,default-trigger = "heartbeat";
+  };
+
+This would lead to a compile error should the ``/leds/red`` path be renamed or
+removed. This also applies to uses of ``/delete-node/``.
+
+Only exception to this rule are well-known node names that are specified by
+the spec to be parsed by name. These are: ``chosen``, ``aliases`` and ``cpus``,
+but **not** ``memory``.
+
 Device Tree Compiler
 --------------------
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
