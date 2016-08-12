Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bYDVg-0000s3-Fv
 for barebox@lists.infradead.org; Fri, 12 Aug 2016 14:32:34 +0000
Received: by mail-wm0-x242.google.com with SMTP id o80so3204014wme.0
 for <barebox@lists.infradead.org>; Fri, 12 Aug 2016 07:32:13 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 12 Aug 2016 17:32:03 +0300
Message-Id: <1471012324-3881-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1471012324-3881-1-git-send-email-antonynpavlov@gmail.com>
References: <1471012324-3881-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] Documentation: barebox: fix 'Could not lex literal_block
 as "c"' warning
To: barebox@lists.infradead.org

The patch fixes these sphinx warnings:

    barebox/Documentation/user/barebox.rst:19: WARNING: Could not lex literal_block as "c". Highlighting skipped.
    barebox/Documentation/user/barebox.rst:33: WARNING: Could not lex literal_block as "c". Highlighting skipped.
    barebox/Documentation/user/barebox.rst:186: WARNING: Could not lex literal_block as "c". Highlighting skipped.
    barebox/Documentation/user/barebox.rst:205: WARNING: Could not lex literal_block as "c". Highlighting skipped.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/user/barebox.rst | 60 +++++++++++++++++++++++++++++++-----------
 1 file changed, 45 insertions(+), 15 deletions(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 530693d..32cec3d 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -14,7 +14,9 @@ All releases can be downloaded from:
 http://www.barebox.org/download/
 
 Development versions of barebox are accessible via Git. A local repository clone
-can be checked out as follows::
+can be checked out as follows:
+
+.. code-block:: sh
 
   $ git clone git://git.pengutronix.de/git/barebox.git
   Cloning into 'barebox'...
@@ -28,7 +30,9 @@ can be checked out as follows::
 
 After this, make sure to check out the appropriate branch. If you want to
 develop for barebox, it's best to check out the ``next`` branch rather than
-the ``master`` branch::
+the ``master`` branch:
+
+.. code-block:: sh
 
   $ git checkout -b next origin/remotes/next
 
@@ -59,13 +63,17 @@ variable. Currently, ``ARCH`` must be one of:
 either contain the full path or, if the cross compiler binary is
 in your $PATH, just the prefix.
 
-Either export ``ARCH`` and ``CROSS_COMPILE`` once before working on barebox::
+Either export ``ARCH`` and ``CROSS_COMPILE`` once before working on barebox:
+
+.. code-block:: sh
 
   export ARCH=arm
   export CROSS_COMPILE=/path/to/arm-cortexa8-linux-gnueabihf-
   make ...
 
-or add them to each invocation of the ``make`` command::
+or add them to each invocation of the ``make`` command:
+
+.. code-block:: sh
 
   ARCH=arm CROSS_COMPILE=/path/to/arm-cortexa8-linux-gnueabihf- make ...
 
@@ -76,17 +84,23 @@ Configuring for a board
 
 All configuration files can be found under the ``arch/${ARCH}/configs/``
 directory. For an overview of possible Make targets for your architecture,
-type::
+type:
+
+.. code-block:: sh
 
   make help
 
 Your output from ``make help`` will be based on the architecture you've
-selected via the ``ARCH`` variable. So if, for example, you had selected::
+selected via the ``ARCH`` variable. So if, for example, you had selected:
+
+.. code-block:: sh
 
   export ARCH=mips
 
 your help output would represent all of the generic (architecture-independent)
-targets, followed by the MIPS-specific ones::
+targets, followed by the MIPS-specific ones:
+
+.. code-block:: sh
 
   make [ARCH=mips] help
   ...
@@ -104,12 +118,16 @@ targets, followed by the MIPS-specific ones::
 barebox supports building for multiple boards with a single config. If you
 can't find your board in the list, it may be supported by one of the multi-board
 configs. As an example, this is the case for tegra_v7_defconfig and imx_v7_defconfig.
-Select your config with ``make <yourboard>_defconfig``::
+Select your config with ``make <yourboard>_defconfig``:
+
+.. code-block:: sh
 
   make imx_v7_defconfig
 
 The configuration can be further customized with one of the configuration frontends
-with the most popular being ``menuconfig``::
+with the most popular being ``menuconfig``:
+
+.. code-block:: sh
 
   make menuconfig
 
@@ -127,7 +145,9 @@ generated in a separate build directory.
 
 Once you check out your barebox source directory, and before you do any
 configuration or building, set the environment variable ``KBUILD_OUTPUT``
-to point to your intended output directory, as in::
+to point to your intended output directory, as in:
+
+.. code-block:: sh
 
   export KBUILD_OUTPUT=.../my_barebox_build_directory
 
@@ -150,14 +170,18 @@ Compilation
 -----------
 
 After barebox has been :ref:`configured <configuration>` it can be compiled
-simply with::
+simply with:
+
+.. code-block:: sh
 
   make
 
 The resulting binary varies depending on the board barebox is compiled for.
 Without :ref:`multi_image` support the ``barebox-flash-image`` link will point
 to the binary for flashing/uploading to the board. With :ref:`multi_image` support
-the compilation process will finish with a list of images built under ``images/``::
+the compilation process will finish with a list of images built under ``images/``:
+
+.. code-block:: sh
 
   images built:
   barebox-freescale-imx51-babbage.img
@@ -181,14 +205,18 @@ board documentation for initial bringup.
 
 barebox binaries are, where possible, designed to be startable second stage from another
 bootloader. For example, if you have U-Boot running on your board, you can start barebox
-with U-Boot's 'go' command::
+with U-Boot's 'go' command:
+
+.. code-block:: console
 
   U-Boot: tftp $load_addr barebox.bin
   U-Boot: go $load_addr
 
 With barebox already running on your board, this can be used to chainload
 another barebox. For instance, if you mounted a TFTP server to ``/mnt/tftp``
-(see :ref:`filesystems_tftp` for how to do that), chainload barebox with::
+(see :ref:`filesystems_tftp` for how to do that), chainload barebox with:
+
+.. code-block:: console
 
   bootm /mnt/tftp/barebox.bin
 
@@ -200,7 +228,9 @@ stage.
 First Steps
 -----------
 
-This is a typical barebox startup log::
+This is a typical barebox startup log:
+
+.. code-block:: console
 
   barebox 2014.06.0-00232-g689dc27-dirty #406 Wed Jun 18 00:25:17 CEST 2014
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
