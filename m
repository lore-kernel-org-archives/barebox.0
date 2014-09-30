Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYxFj-0003tX-W1
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 13:14:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Sep 2014 15:10:32 +0200
Message-Id: <1412082632-25290-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412082632-25290-1-git-send-email-s.hauer@pengutronix.de>
References: <1412082632-25290-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] Documentation: Add some TI AM335x specific documentation
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/am335x.rst | 42 +++++++++++++++++++++++++++++++++++++++++
 Documentation/boards/omap.rst   |  4 ++--
 Documentation/user/barebox.rst  |  2 ++
 3 files changed, 46 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/boards/am335x.rst

diff --git a/Documentation/boards/am335x.rst b/Documentation/boards/am335x.rst
new file mode 100644
index 0000000..7959b84
--- /dev/null
+++ b/Documentation/boards/am335x.rst
@@ -0,0 +1,42 @@
+Texas Instruments AM335x
+========================
+
+The Texas Instruments AM335x SoCs have a two-stage boot process. The first stage
+loader, also known as MLO is loaded by the ROM code. The MLO loads the second stage
+loader from the same medium.
+
+Building barebox
+----------------
+
+The TI AM335x boards in barebox are covered by the ``am335x_mlo_defconfig``
+for the MLO and ``am335x_defconfig`` for the regular barebox image. The
+resulting images will be placed under ``images/``:
+
+::
+  barebox-am33xx-afi-gf.img
+  barebox-am33xx-afi-gf-mlo.img
+  barebox-am33xx-beaglebone.img
+  barebox-am33xx-beaglebone-mlo.img
+  barebox-am33xx-phytec-phycore.img
+  barebox-am33xx-phytec-phycore-mlo-1x128m16.img
+  barebox-am33xx-phytec-phycore-mlo-1x256m16.img
+  barebox-am33xx-phytec-phycore-mlo-1x512m16.img
+
+Some boards come in different variants, make sure to pick the correct one.
+
+Starting and updating barebox
+-----------------------------
+
+SPI NOR and NAND
+^^^^^^^^^^^^^^^^
+
+The regular board images can be started from another bootloader, see
+:ref:`second_stage`. The board should provide update handlers
+to update (or initially install) barebox on SPI NOR or NAND, see :ref:`update`.
+
+SD/MMC
+^^^^^^
+
+To start barebox from SD/MMC prepare a card with a FAT filesystem. Copy the MLO
+file for your board to the card and name it ``MLO``. Copy the regular image
+for your board to the card and name it ``barebox.bin``.
diff --git a/Documentation/boards/omap.rst b/Documentation/boards/omap.rst
index 5038613..c269751 100644
--- a/Documentation/boards/omap.rst
+++ b/Documentation/boards/omap.rst
@@ -1,5 +1,5 @@
-Texas Instruments OMAP/AM335x
-=============================
+Texas Instruments OMAP
+======================
 
 Texas Instruments OMAP SoCs have a two-stage boot process. The first stage is
 known as Xload which only loads the second stage bootloader. barebox can act as
diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index caf544d..00ceabb 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -171,6 +171,8 @@ the compilation process will finish with a list of images built under ``images/`
   barebox-guf-santaro.img
   barebox-gk802.img
 
+.. _second_stage:
+
 Starting barebox
 -----------------
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
