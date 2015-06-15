Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z4USB-00056y-Lx
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 13:29:33 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 15 Jun 2015 15:29:04 +0200
Message-Id: <1434374946-7212-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1434374946-7212-1-git-send-email-mkl@pengutronix.de>
References: <1434374946-7212-1-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] state: Documentation: add newly implemented "uint8" types.
To: barebox@lists.infradead.org
Cc: Jan Luebbe <jluebbe@debian.org>

Cc: Jan Luebbe <jluebbe@debian.org>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 Documentation/devicetree/bindings/barebox/barebox,state.rst | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index 7156084c9364..3405f703c990 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -42,9 +42,9 @@ These are subnodes of a state node each describing a single
 variable. The node name may end with ``@<ADDRESS>``, but the suffix is
 sripped from the variable name.
 
-State variables have a type. Currenty supported types are: ``uint32``,
-``enum32`` and ``mac`` address. Fixed length strings are planned but
-not implemented. Variable length strings are not planned.
+State variables have a type. Currenty supported types are: ``uint8``,
+``uint32``, ``enum32`` and ``mac`` address. Fixed length strings are
+planned but not implemented. Variable length strings are not planned.
 
 Required properties:
 
@@ -52,8 +52,8 @@ Required properties:
   ``#size-cells = <1>``. Defines the ``offset`` and ``size`` of the
   variable in the ``raw`` backend. ``size`` must fit the node
   ``type``. Variables are not allowed to overlap.
-* ``type``: Should be ``uint32``, ``enum32`` or ``mac`` for the type
-  of the variable
+* ``type``: Should be ``uint8``, ``uint32``, ``enum32`` or ``mac`` for
+  the type of the variable
 * ``names``: For ``enum32`` values only, this specifies the values
   possible for ``enum32``.
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
