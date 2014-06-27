Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0TnW-0004St-N3
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 10:54:27 +0000
Received: by mail-wg0-f50.google.com with SMTP id m15so5028833wgh.9
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 03:54:04 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 27 Jun 2014 13:00:12 +0200
Message-Id: <1403866821-4029-4-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
References: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 03/12] doc: start (almost) all headlines with a capital
To: barebox@lists.infradead.org

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 Documentation/boards/omap.rst        |    4 ++--
 Documentation/commands.rst           |    4 ++--
 Documentation/devicetree/index.rst   |    2 +-
 Documentation/filesystems.rst        |    2 +-
 Documentation/filesystems/ramfs.rst  |    2 +-
 Documentation/user/booting-linux.rst |    2 +-
 Documentation/user/hush.rst          |    4 ++--
 Documentation/user/memory-areas.rst  |    2 +-
 Documentation/user/networking.rst    |    2 +-
 Documentation/user/user-manual.rst   |    4 ++--
 10 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/Documentation/boards/omap.rst b/Documentation/boards/omap.rst
index 63caf66..56b7e64 100644
--- a/Documentation/boards/omap.rst
+++ b/Documentation/boards/omap.rst
@@ -7,8 +7,8 @@ both the first and the second stage loader. To build as a first stage loader
 build the \*_xload_defconfig for your board, for second stage build the normal
 \*_defconfig for your board.
 
-bootstrapping a panda board
----------------------------
+Bootstrapping a PandaBoard
+--------------------------
 
 The Panda board boots from SD card. The OMAP Boot ROM code loads a file named
 'MLO' on a bootable FAT partition on this card. There are several howtos and
diff --git a/Documentation/commands.rst b/Documentation/commands.rst
index a649209..55b04f6 100644
--- a/Documentation/commands.rst
+++ b/Documentation/commands.rst
@@ -1,5 +1,5 @@
-barebox command reference
-=========================
+Command reference
+=================
 
 .. toctree::
    :glob:
diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index a24d635..abb9088 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -1,4 +1,4 @@
-barebox specific devicetree bindings
+Barebox specific devicetree bindings
 ====================================
 
 Contents:
diff --git a/Documentation/filesystems.rst b/Documentation/filesystems.rst
index 3bb1edf..4f7b398 100644
--- a/Documentation/filesystems.rst
+++ b/Documentation/filesystems.rst
@@ -1,6 +1,6 @@
 .. _filesystems:
 
-filesystems
+Filesystems
 ===========
 
 .. toctree::
diff --git a/Documentation/filesystems/ramfs.rst b/Documentation/filesystems/ramfs.rst
index 37d6ffc..c2e1e83 100644
--- a/Documentation/filesystems/ramfs.rst
+++ b/Documentation/filesystems/ramfs.rst
@@ -1,6 +1,6 @@
 .. index:: ramfs (filesystem)
 
-ram filesystem
+RAM filesystem
 ==============
 
 ramfs is a simple malloc based filesystem. An instance of ramfs is mounted during startup on /. The filesystemtype passed to mount is 'ramfs'
diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 561a850..4ae9d1b 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -197,7 +197,7 @@ The entry can be listed with the -l option:
 When on barebox the SD card shows up as ``mmc`` then this entry can be booted with
 ``boot mmc1`` or with setting ``global.boot.default`` to ``mmc1``.
 
-network boot
+Network boot
 ------------
 
 With the following steps barebox can start the Kernel and root filesystem
diff --git a/Documentation/user/hush.rst b/Documentation/user/hush.rst
index 4a1b84b..2a0e630 100644
--- a/Documentation/user/hush.rst
+++ b/Documentation/user/hush.rst
@@ -2,7 +2,7 @@
 
 .. _hush:
 
-hush shell
+Hush shell
 ==========
 
 barebox has an integrated shell: hush. This is a simple shell which
@@ -10,7 +10,7 @@ is enough for writing simple shell scripts. Usage of the shell for
 scripts should not be overstrained. Often a command written in C is
 more flexible and also more robust than a complicated shell script.
 
-hush features
+Hush features
 -------------
 
 variables::
diff --git a/Documentation/user/memory-areas.rst b/Documentation/user/memory-areas.rst
index dd1db9e..ab874c7 100644
--- a/Documentation/user/memory-areas.rst
+++ b/Documentation/user/memory-areas.rst
@@ -1,4 +1,4 @@
-memory areas
+Memory areas
 ============
 
 Several barebox commands like :ref:`command_md`, erase or crc work on an area
diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 23b0e46..9c7bde4 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -1,4 +1,4 @@
-networking
+Networking
 ==========
 
 barebox has IPv4 networking support. Several protocols such as
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index fc97bac..aa6c083 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -1,7 +1,7 @@
 .. highlight:: console
 
-barebox user manual
-===================
+User manual
+===========
 
 Contents:
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
