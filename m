Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YJ0XO-0008Ah-Oc
 for barebox@lists.infradead.org; Wed, 04 Feb 2015 14:02:42 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 1960AA00450
 for <barebox@lists.infradead.org>; Wed,  4 Feb 2015 15:02:56 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Wed, 4 Feb 2015 15:00:52 +0100
Message-Id: <1423058453-17012-4-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1423058453-17012-1-git-send-email-w.egorov@phytec.de>
References: <1423058453-17012-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 4/5] Docs: Add phytec-som-am335x documentation
To: barebox@lists.infradead.org

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 Documentation/boards/am335x.rst            | 22 ++++++++++++++++++---
 Documentation/boards/am335x/phytec-som.rst | 31 ++++++++++++++++++++++++++++++
 2 files changed, 50 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/boards/am335x/phytec-som.rst

diff --git a/Documentation/boards/am335x.rst b/Documentation/boards/am335x.rst
index 7959b84..671c3aa 100644
--- a/Documentation/boards/am335x.rst
+++ b/Documentation/boards/am335x.rst
@@ -13,14 +13,20 @@ for the MLO and ``am335x_defconfig`` for the regular barebox image. The
 resulting images will be placed under ``images/``:
 
 ::
+
   barebox-am33xx-afi-gf.img
   barebox-am33xx-afi-gf-mlo.img
   barebox-am33xx-beaglebone.img
   barebox-am33xx-beaglebone-mlo.img
+  barebox-am33xx-phytec-phycore-mlo-256mb.img
+  barebox-am33xx-phytec-phycore-mlo-128mb.img
+  barebox-am33xx-phytec-phycore-mlo-512mb.img
+  barebox-am33xx-phytec-phycore-mlo-2x512mb.img
+  barebox-am33xx-phytec-phyflex-mlo-256mb.img
+  barebox-am33xx-phytec-phyflex-mlo-512mb.img
   barebox-am33xx-phytec-phycore.img
-  barebox-am33xx-phytec-phycore-mlo-1x128m16.img
-  barebox-am33xx-phytec-phycore-mlo-1x256m16.img
-  barebox-am33xx-phytec-phycore-mlo-1x512m16.img
+  barebox-am33xx-phytec-phycore-no-spi.img
+  barebox-am33xx-phytec-phyflex.img
 
 Some boards come in different variants, make sure to pick the correct one.
 
@@ -40,3 +46,13 @@ SD/MMC
 To start barebox from SD/MMC prepare a card with a FAT filesystem. Copy the MLO
 file for your board to the card and name it ``MLO``. Copy the regular image
 for your board to the card and name it ``barebox.bin``.
+
+AM335x Boards
+------
+
+.. toctree::
+  :glob:
+  :numbered:
+  :maxdepth: 1
+
+  am335x/*
diff --git a/Documentation/boards/am335x/phytec-som.rst b/Documentation/boards/am335x/phytec-som.rst
new file mode 100644
index 0000000..b415f7c
--- /dev/null
+++ b/Documentation/boards/am335x/phytec-som.rst
@@ -0,0 +1,31 @@
+Phytec AM335x based SOMs
+========================
+
+The phycore-som-am335x is actually not a real board. It represents a set of
+am335x based Phytec module families and its boards in the barebox.
+You can find out more about the Phytec SOM concept on the website:
+
+  http://phytec.com/products/system-on-modules/
+
+
+Supported modules and boards
+----------------------------
+
+Currently, barebox supports the following SOMs and boards:
+
+  - phyCORE
+
+    - PCM-953
+    - phyBOARD-MAIA
+    - phyBOARD-WEGA
+
+  - phyFLEX
+
+    - PBA-B-01
+
+
+Building phycore-som-am335x
+---------------------------
+
+The phycore-som-am335x boards are covered by the ``am335x_mlo_defconfig``
+for the MLO and ``am335x_defconfig`` for the regular barebox image.
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
