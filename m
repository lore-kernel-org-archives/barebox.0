Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YG5nt-0003VP-6w
 for barebox@lists.infradead.org; Tue, 27 Jan 2015 13:03:38 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 5E336A0024C
 for <barebox@lists.infradead.org>; Tue, 27 Jan 2015 14:03:52 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Tue, 27 Jan 2015 14:02:09 +0100
Message-Id: <1422363729-3469-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH:barebox-mainline] Fix spelling: pathes -> paths
To: barebox@lists.infradead.org

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 Documentation/boards/efi.rst         | 14 +++++++-------
 Documentation/user/booting-linux.rst |  4 ++--
 Documentation/user/variables.rst     |  2 +-
 commands/Kconfig                     |  2 +-
 commands/of_property.c               |  2 +-
 common/Kconfig                       |  6 +++---
 common/hush.c                        |  2 +-
 drivers/of/of_path.c                 |  2 +-
 scripts/genenv                       |  4 ++--
 9 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index 2147cb6..b7ad40e 100644
--- a/Documentation/boards/efi.rst
+++ b/Documentation/boards/efi.rst
@@ -164,20 +164,20 @@ Care must be taken that a partition is only accessed either via the Block IO Pro
 the File IO Interface. Doing both at the same time will most likely result in data
 corruption on the partition
 
-EFI device pathes
------------------
+EFI device paths
+----------------
 
-In EFI each device can be pointed to using a device path. Device pathes have multiple
+In EFI each device can be pointed to using a device path. Device paths have multiple
 components. The toplevel component on X86 systems will be the PCI root complex, on
 other systems this can be the physical memory space. Each component will now descrive
 how to find the child component on the parent bus. Additional device path nodes can
-describe network addresses or filenames on partitions. Device pathes have a binary
+describe network addresses or filenames on partitions. Device paths have a binary
 representation and a clearly defined string representation. These characteristics make
-device pathes suitable for describing boot entries. barebox could use device pathes
-to store the reference to kernels on boot media. Also device pathes could be used to
+device paths suitable for describing boot entries. barebox could use device paths
+to store the reference to kernels on boot media. Also device paths could be used to
 pass a root filesystem to the Kernel.
 
-Currently device pathes are only integrated into barebox in a way that each EFI device
+Currently device paths are only integrated into barebox in a way that each EFI device
 has a device parameter ``devpath`` which contains its device path:
 
 .. code-block:: sh
diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 17427f3..3a8da11 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -166,7 +166,7 @@ A Bootloader Spec Entry consists of key value pairs::
   linux      /6a9857a393724b7a981ebb5b8495b9ea/3.8.0-2.fc19.x86_64/linux
   initrd     /6a9857a393724b7a981ebb5b8495b9ea/3.8.0-2.fc19.x86_64/initrd
 
-All pathes are absolute pathes in the partition. Bootloader Spec Entries can
+All paths are absolute paths in the partition. Bootloader Spec Entries can
 be created manually, but there also is the ``scripts/kernel-install`` tool to
 create/list/modify entries directly on a MMC/SD card or other media. To use
 it create a SD card / USB memory stick with a /boot partition with type 0xea.
@@ -246,7 +246,7 @@ link target is exported from the server.
 
 ``boot net`` will then start the Kernel.
 
-If the pathes or names are not suitable they can be adjusted in
+If the paths or names are not suitable they can be adjusted in
 ``/env/boot/net``:
 
 .. code-block:: sh
diff --git a/Documentation/user/variables.rst b/Documentation/user/variables.rst
index ea99eb6..0abc25d 100644
--- a/Documentation/user/variables.rst
+++ b/Documentation/user/variables.rst
@@ -79,7 +79,7 @@ of all variables with special meaning along with a short description::
 
   barebox:/ magicvar
   OPTARG                           optarg for hush builtin getopt
-  PATH                             colon separated list of pathes to search for executables
+  PATH                             colon separated list of paths to search for executables
   PS1                              hush prompt
   armlinux_architecture            ARM machine ID
   armlinux_system_rev              ARM system revision
diff --git a/commands/Kconfig b/commands/Kconfig
index 509e935..e4f68e7 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2018,7 +2018,7 @@ config CMD_OF_PROPERTY
 
 	  Valid formats for values:
 	  <0x00112233 4 05> - an array of cells. cells not beginning with a digit are
-                    interpreted as node pathes and converted to phandles
+                    interpreted as node paths and converted to phandles
 	  [00 11 22 .. nn]  - byte stream
 	  If the value does not start with '<' or '[' it is interpreted as string
 
diff --git a/commands/of_property.c b/commands/of_property.c
index e0154fc..ae6bfd4 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -308,7 +308,7 @@ BAREBOX_CMD_HELP_OPT ("-d",  "delete property")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Valid formats for values:")
 BAREBOX_CMD_HELP_TEXT("<0x00112233 4 05> - an array of cells. cells not beginning with a digit are")
-BAREBOX_CMD_HELP_TEXT("                    interpreted as node pathes and converted to phandles")
+BAREBOX_CMD_HELP_TEXT("                    interpreted as node paths and converted to phandles")
 BAREBOX_CMD_HELP_TEXT("[00 11 22 .. nn]  - byte stream")
 BAREBOX_CMD_HELP_TEXT("If the value does not start with '<' or '[' it is interpreted as string")
 BAREBOX_CMD_HELP_END
diff --git a/common/Kconfig b/common/Kconfig
index 00e4f36..d437343 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -674,9 +674,9 @@ config DEFAULT_ENVIRONMENT_PATH
 	depends on DEFAULT_ENVIRONMENT
 	prompt "Default environment path"
 	help
-	  Space separated list of pathes the default environment will be taken from.
-	  Relative pathes will be relative to the barebox Toplevel dir, but absolute
-	  pathes are fine aswell.
+	  Space separated list of paths the default environment will be taken from.
+	  Relative paths will be relative to the barebox Toplevel dir, but absolute
+	  paths are fine aswell.
 
 config BAREBOXENV_TARGET
 	bool
diff --git a/common/hush.c b/common/hush.c
index b23b3f6..ffd2513 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -2020,7 +2020,7 @@ BAREBOX_CMD_START(getopt)
 BAREBOX_CMD_END
 #endif
 
-BAREBOX_MAGICVAR(PATH, "colon separated list of pathes to search for executables");
+BAREBOX_MAGICVAR(PATH, "colon separated list of paths to search for executables");
 #ifdef CONFIG_HUSH_FANCY_PROMPT
 BAREBOX_MAGICVAR(PS1, "hush prompt");
 #endif
diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 6a2d634..f0fd917 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -113,7 +113,7 @@ out:
  * @outpath: if this function returns 0 outpath will contain the path belonging
  *           to the input path description. Must be freed with free().
  *
- * pathes in the devicetree have the form of a multistring property. The first
+ * paths in the devicetree have the form of a multistring property. The first
  * string contains the full path to the physical device containing the path.
  * The remaining strings have the form "<type>:<options>". Currently supported
  * for <type> are:
diff --git a/scripts/genenv b/scripts/genenv
index 9f22ade..5ebe699 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -2,8 +2,8 @@
 
 # Generate the default environment file from a list of directories
 # usage: genenv <basedir> <objdir> <target> <dir>...
-# where <basedir> is the base directory for relative pathes in <dir>
-# where <objdir> is the base directory for relative pathes for result
+# where <basedir> is the base directory for relative paths in <dir>
+# where <objdir> is the base directory for relative paths for result
 # and <target> is the resulting binary environment
 objtree=$2
 basedir=$1
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
