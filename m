Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1wCS-0007ks-Rt
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 11:26:13 +0000
Received: from [99.240.204.5] (port=50151 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X1wC5-0000oV-Cd
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 07:25:49 -0400
Date: Tue, 1 Jul 2014 07:21:31 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407010719440.25792@localhost>
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
Subject: [PATCH] Documentation: Fix remaining typoes "persistant", "existance".
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Fix a couple typoes that occur only in Documentation/ or in comments,
so no functional change.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/Documentation/boards/mxs/Chumby-Falconwing.rst b/Documentation/boards/mxs/Chumby-Falconwing.rst
index 172d684..97b39f3 100644
--- a/Documentation/boards/mxs/Chumby-Falconwing.rst
+++ b/Documentation/boards/mxs/Chumby-Falconwing.rst
@@ -36,7 +36,7 @@ How to prepare an MCI card to boot the "chumby one" with barebox
   * Create four primary partitions on the MCI card

     * the first one for the bootlets (about 256 kiB)
-    * the second one for the persistant environment (size is up to you, at least 256k)
+    * the second one for the persistent environment (size is up to you, at least 256k)
     * the third one for the kernel (2 MiB ... 4 MiB in size)
     * the fourth one for the root filesystem which can fill the rest of the available space

diff --git a/Documentation/boards/x86.rst b/Documentation/boards/x86.rst
index ee5e869..ea13b91 100644
--- a/Documentation/boards/x86.rst
+++ b/Documentation/boards/x86.rst
@@ -32,7 +32,7 @@ prepared in some special way:
     the first partition must start at a sector behind the ones barebox
     occupies.
   * barebox handles its runtime configuration in a special way: It
-    stores it in a binary way into some reserved sectors ("persistant
+    stores it in a binary way into some reserved sectors ("persistent
     storage").

 Boot Preparations
@@ -52,12 +52,12 @@ simple calulation::
 	sectors = (\<size of barebox image\> + 511) / 512

 To be able to store the runtime configuration, further free sectors are
-required. Its up to you and your requirements, how large this persistant
+required. Its up to you and your requirements, how large this persistent
 storage must be. If you need 16 kiB for this purpose, you need to keep
 additional 32 sectors free.

 For this example we are reserving 300 sectors for the barebox image and
-additionaly 32 sectors for the persistant storage. So, the first partition on
+additionaly 32 sectors for the persistent storage. So, the first partition on
 the boot media must start at sector 333 or later.

 Run the  fdisk tool to setup such a partition table::
@@ -116,18 +116,18 @@ In the next step, barebox gets installed to this boot media::
 This command writes the barebox image file './barebox' onto the device
  /dev/sda.

-The  -s option will keep the persistant storage sectors free and untouched
-and set flags in the MBR to forward its existance, size and location to
+The  -s option will keep the persistent storage sectors free and untouched
+and set flags in the MBR to forward its existence, size and location to
 barebox at runtime.  setupmbr also does not change the partition table.

 The barebox image gets stored on the boot media like this::

   sector 0   1             33                              333
          |---|-------------|--------------- ~~~ ------------|--------------
-        MBR    persistant              barebox                 first
+        MBR    persistent              barebox                 first
                 storage               main image              partition

-If the  -s option is omitted, the "persistant storage" part simply does
+If the  -s option is omitted, the "persistent storage" part simply does
 not exist::

   sector 0   1                              333
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 2aaceb4..fe48610 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -311,7 +311,7 @@ static const uint32_t tx28_starterkit_pad_setup[] = {
  * Try to register an environment storage on the attached MCI card
  * @return 0 on success
  *
- * We rely on the existance of a usable SD card, already attached to
+ * We rely on the existence of a usable SD card, already attached to
  * our system, to get a persistent memory for our environment.
  * If this SD card is also the boot medium, we can use the second partition
  * for our environment purpose (if present!).
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index fbd8ecd..653b4f5 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -214,7 +214,7 @@ static int nomadik_nand_probe(struct device_d *dev)
 	nand->options = pdata->options;

 	/*
-	 * Scan to find existance of the device
+	 * Scan to find existence of the device
 	 */
 	if (nand_scan(&host->mtd, 1)) {
 		ret = -ENXIO;
diff --git a/scripts/setupmbr/setupmbr.c b/scripts/setupmbr/setupmbr.c
index 506ed19..b74b105 100644
--- a/scripts/setupmbr/setupmbr.c
+++ b/scripts/setupmbr/setupmbr.c
@@ -673,7 +673,7 @@ This command writes the @a barebox image file './barebox.bin' onto the device
 @p /dev/sda.

 The @p -s option will keep the persistent storage sectors free and untouched
-and set flags in the MBR to forward its existance, size and location to
+and set flags in the MBR to forward its existence, size and location to
 @a barebox at runtime. @p setupmbr also does not change the partition table.

 The @a barebox image gets stored on the boot media like this:

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
