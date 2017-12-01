Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKj7K-0001Bb-Kb
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:04:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:03:25 +0100
Message-Id: <20171201110326.31598-7-s.hauer@pengutronix.de>
In-Reply-To: <20171201110326.31598-1-s.hauer@pengutronix.de>
References: <20171201110326.31598-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] Documentation: remove :numbered: from lower level toctrees
To: Barebox List <barebox@lists.infradead.org>

Only the highest level toctree may have :numbered:, otherwise
sphinxs complains loudly that the subtree is already numbered.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/am335x.rst       | 1 -
 Documentation/boards/cirrus-logic.rst | 1 -
 Documentation/boards/imx.rst          | 1 -
 Documentation/boards/mips.rst         | 1 -
 Documentation/boards/mvebu.rst        | 1 -
 Documentation/boards/mxs.rst          | 1 -
 Documentation/boards/powerpc.rst      | 1 -
 Documentation/boards/pxa.rst          | 1 -
 Documentation/boards/rk3288.rst       | 1 -
 Documentation/boards/samsung.rst      | 1 -
 Documentation/devicetree/index.rst    | 1 -
 Documentation/user/user-manual.rst    | 1 -
 12 files changed, 12 deletions(-)

diff --git a/Documentation/boards/am335x.rst b/Documentation/boards/am335x.rst
index 6972020179..8d726e4a10 100644
--- a/Documentation/boards/am335x.rst
+++ b/Documentation/boards/am335x.rst
@@ -52,7 +52,6 @@ AM335x Boards
 
 .. toctree::
   :glob:
-  :numbered:
   :maxdepth: 1
 
   am335x/*
diff --git a/Documentation/boards/cirrus-logic.rst b/Documentation/boards/cirrus-logic.rst
index 95a961e244..8e0ffbb136 100644
--- a/Documentation/boards/cirrus-logic.rst
+++ b/Documentation/boards/cirrus-logic.rst
@@ -3,7 +3,6 @@ Cirrus Logic edb9xxx
 
 .. toctree::
   :glob:
-  :numbered:
   :maxdepth: 1
 
   edb9xxx/*
diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index b6e65060c7..704aa027b6 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -125,7 +125,6 @@ or ``imx_defconfig`` instead.
 
 .. toctree::
   :glob:
-  :numbered:
   :maxdepth: 1
 
   imx/*
diff --git a/Documentation/boards/mips.rst b/Documentation/boards/mips.rst
index 4bac35ffdb..f3287a25a6 100644
--- a/Documentation/boards/mips.rst
+++ b/Documentation/boards/mips.rst
@@ -3,7 +3,6 @@ MIPS
 
 .. toctree::
   :glob:
-  :numbered:
   :maxdepth: 1
 
   mips/*
diff --git a/Documentation/boards/mvebu.rst b/Documentation/boards/mvebu.rst
index b28fd443b6..e27aa28306 100644
--- a/Documentation/boards/mvebu.rst
+++ b/Documentation/boards/mvebu.rst
@@ -54,7 +54,6 @@ Not all supported boards have a description here.
 
 .. toctree::
   :glob:
-  :numbered:
   :maxdepth: 1
 
   mvebu/*
diff --git a/Documentation/boards/mxs.rst b/Documentation/boards/mxs.rst
index 82f23216dd..feb024227a 100644
--- a/Documentation/boards/mxs.rst
+++ b/Documentation/boards/mxs.rst
@@ -125,7 +125,6 @@ Not all supported boards have a description here.
 
 .. toctree::
   :glob:
-  :numbered:
   :maxdepth: 1
 
   mxs/*
diff --git a/Documentation/boards/powerpc.rst b/Documentation/boards/powerpc.rst
index 94b272c61d..81312eb16f 100644
--- a/Documentation/boards/powerpc.rst
+++ b/Documentation/boards/powerpc.rst
@@ -5,7 +5,6 @@ Not all supported boards have a description here.
 
 .. toctree::
   :glob:
-  :numbered:
   :maxdepth: 1
 
   powerpc/*
diff --git a/Documentation/boards/pxa.rst b/Documentation/boards/pxa.rst
index da848a0958..61453a178d 100644
--- a/Documentation/boards/pxa.rst
+++ b/Documentation/boards/pxa.rst
@@ -5,7 +5,6 @@ Not all supported boards have a description here.
 
 .. toctree::
   :glob:
-  :numbered:
   :maxdepth: 1
 
   pxa/*
diff --git a/Documentation/boards/rk3288.rst b/Documentation/boards/rk3288.rst
index 3acca74302..ef93fb3b83 100644
--- a/Documentation/boards/rk3288.rst
+++ b/Documentation/boards/rk3288.rst
@@ -51,7 +51,6 @@ RK3288 Boards
 
 .. toctree::
   :glob:
-  :numbered:
   :maxdepth: 1
 
   rk3288/*
diff --git a/Documentation/boards/samsung.rst b/Documentation/boards/samsung.rst
index d75224f780..f6f341301d 100644
--- a/Documentation/boards/samsung.rst
+++ b/Documentation/boards/samsung.rst
@@ -3,7 +3,6 @@ Samsung S3C/S5P
 
 .. toctree::
   :glob:
-  :numbered:
   :maxdepth: 1
 
   s3c/*
diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index de571547e0..c6309defdf 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -5,7 +5,6 @@ Contents:
 
 .. toctree::
    :glob:
-   :numbered:
    :maxdepth: 1
 
    bindings/barebox/*
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 791c8e0979..516b760b1b 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -6,7 +6,6 @@ User manual
 Contents:
 
 .. toctree::
-   :numbered:
    :maxdepth: 2
 
    introduction
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
