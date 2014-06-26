Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0GIR-00069V-0P
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 20:29:28 +0000
Received: from [99.240.204.5] (port=34374 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X0GI4-00031u-2B
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 16:29:04 -0400
Date: Thu, 26 Jun 2014 16:25:05 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1406261622080.1210@localhost>
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
Subject: [PATCH] Fix misspellings of "persistant" -> "persistent" in various
 places
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Fix misspellings of "persistent", including the renaming of a function
to "register_persistant_environment".

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i decided to dedicate a single patch just for this misspelling given
that it occurs quite a few times, *and* it involves an actual code
change which makes it more significant.

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 77581f6..6546680 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -355,7 +355,7 @@ make ARCH=arm CROSS_COMPILE=armv5compiler

 - Create four primary partitions on the MCI card
  - the first one for the bootlets (about 256 kiB)
- - the second one for the persistant environment (size is up to you, at least 256k)
+ - the second one for the persistent environment (size is up to you, at least 256k)
  - the third one for the kernel (2 MiB ... 4 MiB in size)
  - the 4th one for the root filesystem which can fill the rest of the available space

diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index 1eae377..a5798ee 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -70,7 +70,7 @@ mem_initcall(mx23_evk_mem_init);
  * If this SD card is also the boot media, we can use the second partition
  * for our environment purpose (if present!).
  */
-static int register_persistant_environment(void)
+static int register_persistent_environment(void)
 {
 	struct cdev *cdev;

@@ -116,9 +116,9 @@ static int mx23_evk_devices_init(void)
 	add_generic_device("mxs_mci", DEVICE_ID_DYNAMIC, NULL, IMX_SSP1_BASE,
 					0x8000, IORESOURCE_MEM, &mci_pdata);

-	rc = register_persistant_environment();
+	rc = register_persistent_environment();
 	if (rc != 0)
-		printf("Cannot create the 'env0' persistant "
+		printf("Cannot create the 'env0' persistent "
 			 "environment storage (%d)\n", rc);

 #ifdef CONFIG_USB_GADGET_DRIVER_ARC
diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index fae4d91..40a6bff 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -180,7 +180,7 @@ the imx233-olinuxino with barebox

 - Create four primary partitions on the MCI card
  - the first one for the bootlets (about 256 kiB)
- - the second one for the persistant environment
+ - the second one for the persistent environment
    (size is up to you, at least 256k)
  - the third one for the kernel (2 MiB ... 4 MiB in size)
  - the 4th one for the root filesystem which can fill the
diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index 05d0f77..6cf6b10 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -85,7 +85,7 @@ SECTIONS
 		boot_disk = .;
 		BYTE(0x00);		/* boot disk number (provided by the BIOS)

-		/* information about the persistant environment storage */
+		/* information about the persistent environment storage */
 		. = PATCH_AREA + PATCH_AREA_PERS_START;
 		pers_env_storage = .;
 		LONG(0x00000000);	/* LBA start lower */
diff --git a/arch/x86/mach-i386/include/mach/barebox.lds.h b/arch/x86/mach-i386/include/mach/barebox.lds.h
index 12eeeac..f6f6346 100644
--- a/arch/x86/mach-i386/include/mach/barebox.lds.h
+++ b/arch/x86/mach-i386/include/mach/barebox.lds.h
@@ -31,27 +31,27 @@
 #define PATCH_AREA_BOOT_DEV 16

 /**
- * Offset where to store information about the persistant environment storage
+ * Offset where to store information about the persistent environment storage
  * It points to an LBA number (8 bytes) and defines the first sector of this
  * storage on disk.
  */
 #define PATCH_AREA_PERS_START 20

 /**
- * Offset where to store information about the persistant environment storage
+ * Offset where to store information about the persistent environment storage
  * It points to a short number (2 bytes) and defines the sector count of this
  * storage on disk.
  */
 #define PATCH_AREA_PERS_SIZE 28

 /**
- * Offset where to store information about the persistant environment storage
+ * Offset where to store information about the persistent environment storage
  * drive number (BIOS number, 1 byte)
  */
 #define PATCH_AREA_PERS_DRIVE 30

 /**
- * Mark the persistant environment as not used
+ * Mark the persistent environment as not used
  */
 #define PATCH_AREA_PERS_SIZE_UNUSED 0x000

diff --git a/arch/x86/mach-x86.dox b/arch/x86/mach-x86.dox
index 661e905..3835a43 100644
--- a/arch/x86/mach-x86.dox
+++ b/arch/x86/mach-x86.dox
@@ -53,7 +53,7 @@ code. Thats why not the PIC is touched nor the IDT.
 @todo Add some notes about drive numbers used by the BIOS. They may change
 if one change orders in the BIOS setup. Drive orders and numbers may be
 different at BIOS runtime and Linux runtime! But these numbers are required
-at BIOS runtime for booting and the persistant environment storage.
+at BIOS runtime for booting and the persistent environment storage.

 @attention Currently there is a 4 GiB limit for the disk sizes!

@@ -82,11 +82,11 @@ gets stored when this image will be written to a boot media. This information
 is required to load all parts of the image from the boot media at runtime.

 The image gets installed in two ways onto the boot media, depending on the
-need for a persistant storage.
+need for a persistent storage.

-@subsection mach_x86_drive_layout_wops barebox's boot media layout without persistant storage
+@subsection mach_x86_drive_layout_wops barebox's boot media layout without persistent storage

-In this case @a barebox's persistant storage is anywhere:
+In this case @a barebox's persistent storage is anywhere:

 @verbatim
   Sector     Content
@@ -100,9 +100,9 @@ In this case @a barebox's persistant storage is anywhere:
     0        MBR, Partition table, boot code
 @endverbatim

-@subsection mach_x86_drive_layout_wps barebox's boot media layout with persistant storage
+@subsection mach_x86_drive_layout_wps barebox's boot media layout with persistent storage

-@a barebox's persistant storage is part of the boot media (more
+@a barebox's persistent storage is part of the boot media (more
 space required in front of the first partition) and interferes with the
 boot loader image itself:

@@ -115,13 +115,13 @@ boot loader image itself:
     .        32 bit barebox code
     n+2      16 bit bootstrap code, BIOS calling code
     n+1      indirect sector
-    n        end of persistant environment storage
+    n        end of persistent environment storage
     .
-    1        start of persistant environment storage
+    1        start of persistent environment storage
     0        MBR, Partition table, boot code
 @endverbatim

-The information where the persistant storage is located is also stored into
+The information where the persistent storage is located is also stored into
 the MBR at specific locations by @p setupmbr. The @a barebox runtime will use
 it to load and store all environment relevant data.

diff --git a/scripts/setupmbr/setupmbr.c b/scripts/setupmbr/setupmbr.c
index 0060c2e..506ed19 100644
--- a/scripts/setupmbr/setupmbr.c
+++ b/scripts/setupmbr/setupmbr.c
@@ -140,7 +140,7 @@ static void invalidate_daps(struct DAPS *sector)
  * Create the indirect sector with the DAPS entries
  * @param daps_table Where to store the entries
  * @param size Size of the whole image in bytes
- * @param pers_sector_count Count of sectors to skip after MBR for the persistant environment storage
+ * @param pers_sector_count Count of sectors to skip after MBR for the persistent environment storage
  * @return 0 on success
  *
  * This routine calculates the DAPS entries for the case the whole
@@ -326,10 +326,10 @@ static int check_for_space(const void *hd_image, off_t size)
 }

 /**
- * Setup the persistant environment storage information
+ * Setup the persistent environment storage information
  * @param patch_area Where to patch
- * @param pers_sector_start Start sector of the persistant environment storage
- * @param pers_sector_count Count of sectors for the persistant environment storage
+ * @param pers_sector_start Start sector of the persistent environment storage
+ * @param pers_sector_count Count of sectors for the persistent environment storage
  * @return 0 on success
  */
 static int store_pers_env_info(void *patch_area, uint64_t pers_sector_start, long pers_sector_count)
@@ -355,7 +355,7 @@ static int store_pers_env_info(void *patch_area, uint64_t pers_sector_start, lon
  * Prepare the MBR and indirect sector for runtime
  * @param fd_barebox barebox image to use
  * @param fd_hd Hard disk image to prepare
- * @param pers_sector_count Count of sectors to skip after MBR for the persistant environment storage
+ * @param pers_sector_count Count of sectors to skip after MBR for the persistent environment storage
  * @return 0 on success
  *
  * This routine expects a prepared hard disk image file with a partition table
@@ -390,7 +390,7 @@ static int barebox_overlay_mbr(int fd_barebox, int fd_hd, long pers_sector_count
 	}

 	/*
-	 * the persistant environment storage is in front of the main
+	 * the persistent environment storage is in front of the main
 	 * barebox image. To handle both, we need more space in front of the
 	 * the first partition.
 	 */
@@ -415,7 +415,7 @@ static int barebox_overlay_mbr(int fd_barebox, int fd_hd, long pers_sector_count

 	/*
 	 * embed the barebox main image into the disk drive image,
-	 * but keep the persistant environment storage untouched
+	 * but keep the persistent environment storage untouched
 	 * (if defined), e.g. store the main image behind this special area.
 	 */
 	memcpy(hd_image + ((pers_sector_count + 1) * SECTOR_SIZE),
@@ -471,7 +471,7 @@ static void print_usage(const char *pname)
 {
 	printf("%s: Preparing a hard disk image for boot with barebox on x86.\n", pname);
 	printf("Usage is\n %s [options] -m <barebox image> -d <hd image>\n", pname);
-	printf(" [options] are:\n -s <count> sector count of the persistant environment storage\n");
+	printf(" [options] are:\n -s <count> sector count of the persistent environment storage\n");
 	printf(" <barebox image> barebox's boot image file\n");
 	printf(" <hd image> HD image to store the barebox image\n");
 	printf(" If no '-s <x>' was given, barebox occupies sectors 0 to n, else sector 0 and x+1 to n\n");
@@ -586,7 +586,7 @@ prepared in some special way:
     this does not collide with partitions on the boot media, the first
     partition must start at a sector behind the ones @a barebox occupies.
 @li @a barebox handles its runtime configuration in a special way: It stores it
-    in a binary way into some reserved sectors ("persistant storage").
+    in a binary way into some reserved sectors ("persistent storage").

 @section x86_bootloader_preparations Boot Preparations

@@ -603,12 +603,12 @@ simple calulation:
 	sectors = (\<size of barebox image\> + 511) / 512

 To be able to store the runtime configuration, further free sectors are
-required. Its up to you and your requirements, how large this persistant
+required. Its up to you and your requirements, how large this persistent
 storage must be. If you need 16 kiB for this purpose, you need to keep
 additional 32 sectors free.

 For this example we are reserving 300 sectors for the @a barebox image and
-additionaly 32 sectors for the persistant storage. So, the first partition on
+additionaly 32 sectors for the persistent storage. So, the first partition on
 the boot media must start at sector 333 or later.

 Run the @p fdisk tool to setup such a partition table:
@@ -672,7 +672,7 @@ In the next step, @a barebox gets installed to this boot media:
 This command writes the @a barebox image file './barebox.bin' onto the device
 @p /dev/sda.

-The @p -s option will keep the persistant storage sectors free and untouched
+The @p -s option will keep the persistent storage sectors free and untouched
 and set flags in the MBR to forward its existance, size and location to
 @a barebox at runtime. @p setupmbr also does not change the partition table.

@@ -681,11 +681,11 @@ The @a barebox image gets stored on the boot media like this:
 @verbatim
 sector 0   1             33                              333
        |---|-------------|--------------- ~~~ ------------|--------------
-      MBR    persistant              barebox                 first
+      MBR    persistent              barebox                 first
               storage               main image              partition
 @endverbatim

-If the @p -s option is omitted, the "persistant storage" part simply does
+If the @p -s option is omitted, the "persistent storage" part simply does
 not exist:

 @verbatim

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
