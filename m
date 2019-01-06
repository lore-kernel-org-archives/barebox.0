Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggD09-000386-2R
 for barebox@lists.infradead.org; Sun, 06 Jan 2019 18:18:22 +0000
Received: by mail-lf1-x144.google.com with SMTP id i26so28641032lfc.0
 for <barebox@lists.infradead.org>; Sun, 06 Jan 2019 10:18:19 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sun,  6 Jan 2019 19:18:07 +0100
Message-Id: <20190106181808.8382-3-sam@ravnborg.org>
In-Reply-To: <20190106181808.8382-1-sam@ravnborg.org>
References: <20190106181808.8382-1-sam@ravnborg.org>
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
Subject: [PATCH v1 2/3] doc: add additional at91 boards
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Simple files that makes it simple to add further documentation later

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 Documentation/boards/at91/microchip-ksz9477-evb.rst      | 11 +++++++++++
 Documentation/boards/at91/microchip-sama5d3-xplained.rst |  8 ++++++++
 Documentation/boards/at91/microchip-sama5d3x-ek.rst      |  8 ++++++++
 Documentation/boards/at91/microchip-sama5d4-xplained.rst |  8 ++++++++
 Documentation/boards/at91/somfy-animeo-ip.rst            |  4 ++++
 Documentation/boards/at91/telit-evk-pro3.rst             |  9 +++++++++
 6 files changed, 48 insertions(+)
 create mode 100644 Documentation/boards/at91/microchip-ksz9477-evb.rst
 create mode 100644 Documentation/boards/at91/microchip-sama5d3-xplained.rst
 create mode 100644 Documentation/boards/at91/microchip-sama5d3x-ek.rst
 create mode 100644 Documentation/boards/at91/microchip-sama5d4-xplained.rst
 create mode 100644 Documentation/boards/at91/somfy-animeo-ip.rst
 create mode 100644 Documentation/boards/at91/telit-evk-pro3.rst

diff --git a/Documentation/boards/at91/microchip-ksz9477-evb.rst b/Documentation/boards/at91/microchip-ksz9477-evb.rst
new file mode 100644
index 000000000..4c4c4aecb
--- /dev/null
+++ b/Documentation/boards/at91/microchip-ksz9477-evb.rst
@@ -0,0 +1,11 @@
+Microchip KSZ 9477 Evaluation board
+===================================
+
+This is an evaluation board for a switch that uses the at91sam9x5 CPU.
+The board uses Device Tree and supports multi image.
+
+Building barebox:
+
+.. code-block:: sh
+
+  make ARCH=arm microchip_ksz9477_evb_defconfig
diff --git a/Documentation/boards/at91/microchip-sama5d3-xplained.rst b/Documentation/boards/at91/microchip-sama5d3-xplained.rst
new file mode 100644
index 000000000..e96111af7
--- /dev/null
+++ b/Documentation/boards/at91/microchip-sama5d3-xplained.rst
@@ -0,0 +1,8 @@
+Atmel SAMA5D3_XPLAINED Evaluation Kit
+=====================================
+
+Building barebox:
+
+.. code-block:: sh
+
+  make ARCH=arm sama5d3_xplained_defconfig
diff --git a/Documentation/boards/at91/microchip-sama5d3x-ek.rst b/Documentation/boards/at91/microchip-sama5d3x-ek.rst
new file mode 100644
index 000000000..10bf2e611
--- /dev/null
+++ b/Documentation/boards/at91/microchip-sama5d3x-ek.rst
@@ -0,0 +1,8 @@
+Atmel SAMA5D3X Evaluation Kit
+=============================
+
+Building barebox:
+
+.. code-block:: sh
+
+  make ARCH=arm sama5d3xek_defconfig
diff --git a/Documentation/boards/at91/microchip-sama5d4-xplained.rst b/Documentation/boards/at91/microchip-sama5d4-xplained.rst
new file mode 100644
index 000000000..d8615e4af
--- /dev/null
+++ b/Documentation/boards/at91/microchip-sama5d4-xplained.rst
@@ -0,0 +1,8 @@
+Atmel SAMA5D4 XPLAINED ULTRA Evaluation Kit
+===========================================
+
+Building barebox:
+
+.. code-block:: sh
+
+  make ARCH=arm sama5d4_xplained_defconfig
diff --git a/Documentation/boards/at91/somfy-animeo-ip.rst b/Documentation/boards/at91/somfy-animeo-ip.rst
new file mode 100644
index 000000000..a87179469
--- /dev/null
+++ b/Documentation/boards/at91/somfy-animeo-ip.rst
@@ -0,0 +1,4 @@
+Somfy Animeo IP
+===============
+
+No defconfig provided to build barebox
diff --git a/Documentation/boards/at91/telit-evk-pro3.rst b/Documentation/boards/at91/telit-evk-pro3.rst
new file mode 100644
index 000000000..ea0b070fd
--- /dev/null
+++ b/Documentation/boards/at91/telit-evk-pro3.rst
@@ -0,0 +1,9 @@
+Atmel Telit EVK-PRO3
+====================
+
+Telit EVK-PRO3 with GE863-PRO3
+Building barebox:
+
+.. code-block:: sh
+
+  make ARCH=arm telit_evk_pro3_defconfig
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
