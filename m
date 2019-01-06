Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggD07-00037t-EM
 for barebox@lists.infradead.org; Sun, 06 Jan 2019 18:18:21 +0000
Received: by mail-lj1-x241.google.com with SMTP id v15-v6so36278008ljh.13
 for <barebox@lists.infradead.org>; Sun, 06 Jan 2019 10:18:18 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sun,  6 Jan 2019 19:18:06 +0100
Message-Id: <20190106181808.8382-2-sam@ravnborg.org>
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
Subject: [PATCH v1 1/3] doc: add at91 documentation
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Add at91 specific documentation.

Add files for the Atmel evaluations kits.
This is mostly placeholders with some trivial information,
but we now have files to add more information.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 Documentation/boards/at91.rst                      | 51 ++++++++++++++++++++++
 .../boards/at91/microchip-at91rm9200-ek.rst        |  8 ++++
 .../boards/at91/microchip-at91sam9260-ek.rst       |  8 ++++
 .../boards/at91/microchip-at91sam9261-ek.rst       | 18 ++++++++
 .../boards/at91/microchip-at91sam9263-ek.rst       | 10 +++++
 .../boards/at91/microchip-at91sam9g10-ek.rst       |  8 ++++
 .../boards/at91/microchip-at91sam9g20-ek.rst       |  8 ++++
 .../boards/at91/microchip-at91sam9m10g45-ek.rst    |  8 ++++
 .../boards/at91/microchip-at91sam9n12-ek.rst       |  8 ++++
 .../boards/at91/microchip-at91sam9x5-ek.rst        | 10 +++++
 10 files changed, 137 insertions(+)
 create mode 100644 Documentation/boards/at91.rst
 create mode 100644 Documentation/boards/at91/microchip-at91rm9200-ek.rst
 create mode 100644 Documentation/boards/at91/microchip-at91sam9260-ek.rst
 create mode 100644 Documentation/boards/at91/microchip-at91sam9261-ek.rst
 create mode 100644 Documentation/boards/at91/microchip-at91sam9263-ek.rst
 create mode 100644 Documentation/boards/at91/microchip-at91sam9g10-ek.rst
 create mode 100644 Documentation/boards/at91/microchip-at91sam9g20-ek.rst
 create mode 100644 Documentation/boards/at91/microchip-at91sam9m10g45-ek.rst
 create mode 100644 Documentation/boards/at91/microchip-at91sam9n12-ek.rst
 create mode 100644 Documentation/boards/at91/microchip-at91sam9x5-ek.rst

diff --git a/Documentation/boards/at91.rst b/Documentation/boards/at91.rst
new file mode 100644
index 000000000..f25cb01bb
--- /dev/null
+++ b/Documentation/boards/at91.rst
@@ -0,0 +1,51 @@
+Microchip (Atmel) AT91
+======================
+
+The Microchip (former Atmel) AT91 architecure has very good support within
+barebox.
+Most boards today have their description in their board files, but
+boards are slowly migrating to use DT.
+Likewise most boards are not yet migrated to multi image support, but
+this is also ongoing.
+
+The boot process of the AT91 CPU's is a two step process.
+The first step is named the bootstrap and at91bootstrap
+is often used (https://github.com/linux4sam/at91bootstrap).
+barebox supports bootstrapping some at91 boards as documented
+in the following.
+
+The bootstrap program are loaded by a boot program and can be loaded
+from DataFlash, NAND Flash, SD Card or via USB.
+The bootstrap program do the low-level configuration of the
+processor and then load and execute barebox.
+
+AT91 boards
+-----------
+The majority of the supported boards have a short entry here.
+For each board defconfig file(s) are noted but barebox may include additional
+defconfig files and may also include boards not included in the following.
+
+.. toctree::
+  :glob:
+  :maxdepth: 1
+
+  at91/*
+
+TODO
+----
+This is a list of AT91 specific TODO items, listed in no particular order.
+
+* fix prototype for barebox_arm_reset_vector. Introduce the prototype:
+
+.. code-block:: c
+
+  void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+
+
+This will unify the prototype for the reset vector for multi image and standalone images
+
+* Update remaining boards to DT
+* Update remaing boards to support multi image boot
+* Get bootstrap working in combination with multi image
+* Introduce defaultenv2 for all boards
+* Add pwm driver (required to support backlight)
diff --git a/Documentation/boards/at91/microchip-at91rm9200-ek.rst b/Documentation/boards/at91/microchip-at91rm9200-ek.rst
new file mode 100644
index 000000000..2eecf4827
--- /dev/null
+++ b/Documentation/boards/at91/microchip-at91rm9200-ek.rst
@@ -0,0 +1,8 @@
+Atmel AT91RM9200-EK Evaluation Kit
+==================================
+
+Building barebox:
+
+.. code-block:: sh
+
+  make ARCH=arm at91rm9200ek_defconfig
diff --git a/Documentation/boards/at91/microchip-at91sam9260-ek.rst b/Documentation/boards/at91/microchip-at91sam9260-ek.rst
new file mode 100644
index 000000000..c54c26251
--- /dev/null
+++ b/Documentation/boards/at91/microchip-at91sam9260-ek.rst
@@ -0,0 +1,8 @@
+Atmel AT91SAM9260-EK Evaluation Kit
+===================================
+
+Building barebox:
+
+.. code-block:: sh
+
+  make ARCH=arm at91sam9260ek_defconfig
diff --git a/Documentation/boards/at91/microchip-at91sam9261-ek.rst b/Documentation/boards/at91/microchip-at91sam9261-ek.rst
new file mode 100644
index 000000000..df8828295
--- /dev/null
+++ b/Documentation/boards/at91/microchip-at91sam9261-ek.rst
@@ -0,0 +1,18 @@
+Atmel AT91SAM9261-EK Evaluation Kit
+===================================
+
+For AT91SAM9261-EK there are three defconfigs.
+
+The two defconfigs listed below are almost identical.
+The one named _first_stage_ can be used for FLASH as it allows the first part to be loaded to SRAM.
+
+.. code-block:: sh
+
+  make ARCH=arm at91sam9261ek_defconfig
+  make ARCH=arm at91sam9261ek_first_stage_defconfig
+
+The following defconfig can be used to build a bootstrap variant of barebox
+
+.. code-block:: sh
+
+  make ARCH=arm at91sam9261ek_bootstrap_defconfig
diff --git a/Documentation/boards/at91/microchip-at91sam9263-ek.rst b/Documentation/boards/at91/microchip-at91sam9263-ek.rst
new file mode 100644
index 000000000..74ddb3cdb
--- /dev/null
+++ b/Documentation/boards/at91/microchip-at91sam9263-ek.rst
@@ -0,0 +1,10 @@
+Atmel AT91SAM9263-EK Evaluation Kit
+===================================
+
+The AT91SAM9263-EK evaluation kit supports Device Tree and Multi Images.
+
+Building barebox:
+
+.. code-block:: sh
+
+  make ARCH=arm at91sam9263ek_defconfig
diff --git a/Documentation/boards/at91/microchip-at91sam9g10-ek.rst b/Documentation/boards/at91/microchip-at91sam9g10-ek.rst
new file mode 100644
index 000000000..f8f7d561a
--- /dev/null
+++ b/Documentation/boards/at91/microchip-at91sam9g10-ek.rst
@@ -0,0 +1,8 @@
+Atmel AT91SAM9G10-EK Evaluation Kit
+===================================
+
+Building barebox:
+
+.. code-block:: sh
+
+  make ARCH=arm at91sam9g10ek_defconfig
diff --git a/Documentation/boards/at91/microchip-at91sam9g20-ek.rst b/Documentation/boards/at91/microchip-at91sam9g20-ek.rst
new file mode 100644
index 000000000..b641e0a38
--- /dev/null
+++ b/Documentation/boards/at91/microchip-at91sam9g20-ek.rst
@@ -0,0 +1,8 @@
+Atmel AT91SAM9G20-EK Evaluation Kit
+===================================
+
+Building barebox:
+
+.. code-block:: sh
+
+  make ARCH=arm at91sam9g20ek_defconfig
diff --git a/Documentation/boards/at91/microchip-at91sam9m10g45-ek.rst b/Documentation/boards/at91/microchip-at91sam9m10g45-ek.rst
new file mode 100644
index 000000000..ac54ed7c5
--- /dev/null
+++ b/Documentation/boards/at91/microchip-at91sam9m10g45-ek.rst
@@ -0,0 +1,8 @@
+Atmel AT91SAM9M10G45-EK Evaluation Kit
+======================================
+
+Building barebox:
+
+.. code-block:: sh
+
+  make ARCH=arm at91sam9m10g45ek_defconfig
diff --git a/Documentation/boards/at91/microchip-at91sam9n12-ek.rst b/Documentation/boards/at91/microchip-at91sam9n12-ek.rst
new file mode 100644
index 000000000..8aeba53f1
--- /dev/null
+++ b/Documentation/boards/at91/microchip-at91sam9n12-ek.rst
@@ -0,0 +1,8 @@
+Atmel AT91SAM9N12-EK Evaluation Kit
+===================================
+
+Building barebox:
+
+.. code-block:: sh
+
+  make ARCH=arm at91sam9n12ek_defconfig
diff --git a/Documentation/boards/at91/microchip-at91sam9x5-ek.rst b/Documentation/boards/at91/microchip-at91sam9x5-ek.rst
new file mode 100644
index 000000000..4c7b0cf3d
--- /dev/null
+++ b/Documentation/boards/at91/microchip-at91sam9x5-ek.rst
@@ -0,0 +1,10 @@
+Atmel AT91SAM9X5-EK Evaluation Kit
+===================================
+
+The AT91SAM9X5-EK kit supports Device Tree and Multi Images.
+
+Building barebox:
+
+.. code-block:: sh
+
+  make ARCH=arm at91sam9x5ek_defconfig
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
