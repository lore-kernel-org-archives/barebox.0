Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvnb-00066V-BL
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 14:45:54 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jun 2020 16:45:48 +0200
Message-Id: <20200618144548.603-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! Documentation: devicetree: codify extension of
 upstream DTS by phandles
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Fix a typo and add alink to the specification in question.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devicetree/index.rst | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index 62fa990032b3..c5478d1f8516 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -55,7 +55,7 @@ path, to avoid run-time breakage like this::
         };
   };
 
-In the prvious example, a device tree sync with upstream resulted in a regression
+In the previous example, a device tree sync with upstream resulted in a regression
 as the former override became a new node with a single property without effect.
 
 Using phandles avoids this. When no phandle mapping the full path is defined
@@ -69,8 +69,10 @@ This would lead to a compile error should the ``/leds/red`` path be renamed or
 removed. This also applies to uses of ``/delete-node/``.
 
 Only exception to this rule are well-known node names that are specified by
-the spec to be parsed by name. These are: ``chosen``, ``aliases`` and ``cpus``,
-but **not** ``memory``.
+the `specification`_ to be parsed by name. These are: ``chosen``, ``aliases``
+and ``cpus``, but **not** ``memory``.
+
+.. _specification: https://www.devicetree.org/specifications/
 
 Device Tree Compiler
 --------------------
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
