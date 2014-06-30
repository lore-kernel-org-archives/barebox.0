Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1cr4-0003R5-FQ
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 14:46:51 +0000
Received: from [69.196.158.250] (port=54685 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X1cqY-0007kz-H6
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 10:46:18 -0400
Date: Mon, 30 Jun 2014 10:41:58 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1406301040190.13816@localhost>
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
Subject: [PATCH] Documentation: User manual, "barebox" section
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Various grammar/font fixes to that section, including adding an
additional section describing how to properly do "out of tree"
configuration and building.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 70bdedc..6a679c0 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -13,8 +13,8 @@ All releases can be downloaded from:

 http://www.barebox.org/download/

-Development versions of barebox are accessible via git. A local repository clone
-can be created using git::
+Development versions of barebox are accessible via Git. A local repository clone
+can be checked out as follows::

   $ git clone git://git.pengutronix.de/git/barebox.git
   Cloning into 'barebox'...
@@ -26,8 +26,9 @@ can be created using git::
   Checking connectivity... done.
   Checking out files: 100% (5651/5651), done.

-After this, make sure to check out needed branch. If you want to
-develop for barebox, it's better to check the the next branch::
+After this, make sure to check out the appropriate branch. If you want to
+develop for barebox, it's best to check out the ``next`` branch rather than
+the ``master`` branch::

   $ git checkout -b next origin/remotes/next

@@ -39,11 +40,11 @@ http://git.pengutronix.de/?p=barebox.git.
 Configuration
 -------------

-barebox uses Kconfig from the Linux Kernel as a configuration tool.
-All configuration is accessible via the 'make' command. Before running
-it you have to specify your architecture with the ARCH environment
-variable and the cross compiler with the CROSS_COMPILE environment
-variable. ARCH has to be one of:
+barebox uses Kconfig from the Linux kernel as a configuration tool,
+where all configuration is done via the ``make`` command. Before running
+it you have to specify your architecture with the ``ARCH`` environment
+variable and the cross compiler with the ``CROSS_COMPILE`` environment
+variable. ``ARCH`` has to be one of:

 * arm
 * blackfin
@@ -54,17 +55,17 @@ variable. ARCH has to be one of:
 * sandbox
 * x86

-CROSS_COMPILE should be the prefix of your cross compiler. This can
+``CROSS_COMPILE`` should be the prefix of your cross compiler. This can
 either contain the full path or, if the cross compiler binary is
 in your $PATH, just the prefix.

-Either export ARCH and CROSS_COMPILE once before working on barebox::
+Either export ``ARCH`` and ``CROSS_COMPILE`` once before working on barebox::

   export ARCH=arm
   export CROSS_COMPILE=/path/to/arm-cortexa8-linux-gnueabihf-
   make ...

-or add them before each 'make' command::
+or add them to each invocation of the ``make`` command::

   ARCH=arm CROSS_COMPILE=/path/to/arm-cortexa8-linux-gnueabihf- make ...

@@ -73,11 +74,23 @@ For readability, ARCH/CROSS_COMPILE are skipped from the following examples.
 Configuring for a board
 ^^^^^^^^^^^^^^^^^^^^^^^

-All configuration files can be found under arch/$ARCH/configs/. For an
-overview type::
+All configuration files can be found under the ``arch/${ARCH}/configs/``
+directory. For an overview of possible Make targets for your architecture,
+type::

   make help

+Your output from ``make help`` will be based on the architecture you've
+selected via the ``ARCH`` variable. So if, for example, you had selected::
+
+  export ARCH=mips
+
+your help output would represent all of the generic (architecture-independent)
+targets, followed by the MIPS-specific ones::
+
+  make [ARCH=mips] help
+  ...
+  ... list of generic targets ...
   ...
   Architecture specific targets (mips):
     No architecture specific help defined for mips
@@ -100,20 +113,51 @@ with the most popular being ``menuconfig``::

   make menuconfig

-barebox used the same configuration system as Linux, so you can use
-all the things you know, e.g. ``make xconfig``, ``make allyesconfig`` etc.
+barebox uses the same (Kbuild) configuration system as Linux, so you can use
+all the kernel config targets you already know, e.g. ``make xconfig``,
+``make allyesconfig`` etc.
+
+Configuring and compiling "out-of-tree"
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+Before going any further, it's worth knowing how you can do all your barebox
+configuration and compilation "out of tree"; that is, how you can keep your
+source directory pristine and have all output from the various ``make`` commands
+generated in a separate build directory.
+
+Once you check out your barebox source directory, and before you do any
+configuration or building, set the environment variable ``KBUILD_OUTPUT``
+to point to your intended output directory, as in::
+
+  export KBUILD_OUTPUT=.../my_barebox_build_directory
+
+From that point on, all of the ``make`` commands you run in your source
+directory will generate their output in your specified output directory.
+Not only does this keep your source directory clean, but it allows several
+developers to share the same source directory while doing all their own
+configuration and building in their own individual build directories.
+
+.. note::
+
+   To do out-of-tree builds, your source tree must be absolutely clean
+   of all generated artifacts from previous configurations and builds.
+   In other words, if you had earlier done any configuration or building
+   in that source tree that dumped its results into the same source tree
+   directory, you need to do the equivalent of a ``make distclean`` before
+   using that source directory for any out-of-tree builds.

 Compilation
 -----------

-After barebox has been :ref:`configured <configuration>` it can be compiled::
+After barebox has been :ref:`configured <configuration>` it can be compiled
+simply with::

   make

 The resulting binary varies depending on the board barebox is compiled for.
-Without :ref:`multi_image` support the 'barebox-flash-image' link will point
+Without :ref:`multi_image` support the ``barebox-flash-image`` link will point
 to the binary for flashing/uploading to the board. With :ref:`multi_image` support
-the compilation process will finish with a list of images built under images/::
+the compilation process will finish with a list of images built under ``images/``::

   images built:
   barebox-freescale-imx51-babbage.img
@@ -142,7 +186,7 @@ with U-Boot's 'go' command::

 With barebox already running on your board, this can be used to chainload another barebox::

-  bootm /mntf/tftp/barebox.bin
+  bootm /mnt/tftp/barebox.bin

 At least ``barebox.bin`` (with :ref:`pbl` support enabled ``arch/$ARCH/pbl/zbarebox.bin``)
 should be startable second stage. The flash binary (``barebox-flash-image``) may or may not
@@ -177,9 +221,9 @@ This is a typical barebox startup log::
   barebox@Genesi Efika MX Smartbook:/

 Without intervention, barebox will continue booting after 3 seconds. If interrupted
-by pressing a key, you will find yourself on the :ref:`shell <hush>`.
+by pressing a key, you will find yourself at the :ref:`shell <hush>`.

-On the shell type ``help`` for a list of supported commands. ``help <command>`` shows
+At the shell type ``help`` for a list of supported commands. ``help <command>`` shows
 the usage for a particular command. barebox has tab completion which will complete
 your command. Arguments to commands are also completed depending on the command. If
 a command expects a file argument only files will be offered as completion. Other
diff --git a/Makefile b/Makefile
index 6dad637..a8e57ee 100644
--- a/Makefile
+++ b/Makefile
@@ -1076,7 +1076,7 @@ help:
 	@echo  '                    enough build support to build external modules'
 	@echo  '  mrproper	  - Remove all generated files + config + various backup files'
 	@echo  '  distclean	  - mrproper + remove editor backup and patch files'
-	@echo  '  docs            - build documentation
+	@echo  '  docs            - build documentation'
 	@echo  ''
 	@echo  'Configuration targets:'
 	@$(MAKE) -f $(srctree)/scripts/kconfig/Makefile help

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
