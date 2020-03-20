Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFE9e-0005pY-Ov
 for barebox@lists.infradead.org; Fri, 20 Mar 2020 09:41:28 +0000
Received: by mail-ed1-x541.google.com with SMTP id b23so6405646edx.4
 for <barebox@lists.infradead.org>; Fri, 20 Mar 2020 02:41:26 -0700 (PDT)
From: yegorslists@googlemail.com
Date: Fri, 20 Mar 2020 10:41:19 +0100
Message-Id: <20200320094119.7206-1-yegorslists@googlemail.com>
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
Subject: [PATCH] common: fix typos found with codespell
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 common/Kconfig            |  4 ++--
 common/bbu.c              |  2 +-
 common/block.c            |  2 +-
 common/blspec.c           | 16 ++++++++--------
 common/boot.c             |  2 +-
 common/bootsource.c       |  4 ++--
 common/clock.c            |  2 +-
 common/console_common.c   |  2 +-
 common/dlmalloc.c         | 12 ++++++------
 common/efi-devicepath.c   |  2 +-
 common/hush.c             |  4 ++--
 common/imx-bbu-nand-fcb.c |  4 ++--
 common/memtest.c          |  2 +-
 common/resource.c         |  2 +-
 common/serdev.c           |  6 +++---
 common/state/state.c      |  2 +-
 common/ubiformat.c        |  2 +-
 common/uimage.c           |  2 +-
 18 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 02ef3631e..400c0553c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -892,7 +892,7 @@ config DEFAULT_ENVIRONMENT_PATH
 	help
 	  Space separated list of paths the default environment will be taken from.
 	  Relative paths will be relative to the barebox Toplevel dir, but absolute
-	  paths are fine aswell.
+	  paths are fine as well.
 
 config BAREBOXENV_TARGET
 	bool
@@ -958,7 +958,7 @@ config RESET_SOURCE
 	bool "detect Reset cause"
 	depends on GLOBALVAR
 	help
-	  Provide a global variable at runtine which reflects the possible cause
+	  Provide a global variable at runtime which reflects the possible cause
 	  of the reset and why the bootloader is currently running. It can be
 	  useful for any kind of system recovery or repair.
 
diff --git a/common/bbu.c b/common/bbu.c
index b976b99d7..1755615cb 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -361,7 +361,7 @@ err_close:
  *
  * This update handler us suitable for a standard file-to-device copy operation.
  * The handler checks for a filetype and unprotects/erases the device if
- * necessary. If devicefile belongs to a device then the device is checkd for
+ * necessary. If devicefile belongs to a device then the device is checked for
  * enough space before touching it.
  *
  * Return: 0 if successful, negative error code otherwise
diff --git a/common/block.c b/common/block.c
index 02be80d7c..39275dc41 100644
--- a/common/block.c
+++ b/common/block.c
@@ -27,7 +27,7 @@
 
 LIST_HEAD(block_device_list);
 
-/* a chunk of contigous data */
+/* a chunk of contiguous data */
 struct chunk {
 	void *data; /* data buffer */
 	int block_start; /* first block in this chunk */
diff --git a/common/blspec.c b/common/blspec.c
index 7fb62d310..1a6d581f5 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -120,7 +120,7 @@ static void blspec_apply_oftree_overlays(const char *overlays,
  *
  * This boots an entry. On success this function does not return.
  * In case of an error the error code is returned. This function may
- * return 0 in case of a succesful dry run.
+ * return 0 in case of a successful dry run.
  */
 static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 {
@@ -456,7 +456,7 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 	const char *compat;
 	char *filename;
 
-	/* If the entry doesn't specifiy a devicetree we are compatible */
+	/* If the entry doesn't specify a devicetree we are compatible */
 	devicetree = blspec_entry_var_get(entry, "devicetree");
 	if (!devicetree)
 		return true;
@@ -528,7 +528,7 @@ static bool entry_is_match_machine_id(struct blspec_entry *entry)
 	if (env_machineid) {
 		const char *machineid = blspec_entry_var_get(entry, "machine-id");
 		if (!machineid || strcmp(machineid, env_machineid)) {
-			pr_debug("ignoring entry with missmatched machine-id " \
+			pr_debug("ignoring entry with mismatched machine-id " \
 				"\"%s\" != \"%s\"\n", env_machineid, machineid);
 			ret = false;
 		}
@@ -666,7 +666,7 @@ err_out:
  * entries found in the UBI volumes
  *
  * returns the number of entries found or a negative error code if some unexpected
- * error occured.
+ * error occurred.
  */
 static int blspec_scan_ubi(struct bootentries *bootentries, struct cdev *cdev)
 {
@@ -695,7 +695,7 @@ static int blspec_scan_ubi(struct bootentries *bootentries, struct cdev *cdev)
  * entries found under /bootentries/entries/.
  *
  * returns the number of entries found or a negative error code if some unexpected
- * error occured.
+ * error occurred.
  */
 static int blspec_scan_cdev(struct bootentries *bootentries, struct cdev *cdev)
 {
@@ -740,7 +740,7 @@ static int blspec_scan_cdev(struct bootentries *bootentries, struct cdev *cdev)
  *
  * Iterate over all devices and collect child their cdevs.
  * Returns the number of entries found or a negative error code if some unexpected
- * error occured.
+ * error occurred.
  */
 int blspec_scan_devices(struct bootentries *bootentries)
 {
@@ -770,7 +770,7 @@ int blspec_scan_devices(struct bootentries *bootentries)
  * Given a device this functions scans over all child cdevs looking
  * for bootentries entries.
  * Returns the number of entries found or a negative error code if some unexpected
- * error occured.
+ * error occurred.
  */
 int blspec_scan_device(struct bootentries *bootentries, struct device_d *dev)
 {
@@ -832,7 +832,7 @@ int blspec_scan_device(struct bootentries *bootentries, struct device_d *dev)
  * Given a name of a hardware device this functions scans over all child
  * cdevs looking for bootentries entries.
  * Returns the number of entries found or a negative error code if some unexpected
- * error occured.
+ * error occurred.
  */
 int blspec_scan_devicename(struct bootentries *bootentries, const char *devname)
 {
diff --git a/common/boot.c b/common/boot.c
index dcbe5cc2e..f546fce62 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -205,7 +205,7 @@ static int bootscript_create_entry(struct bootentries *bootentries, const char *
 /*
  * bootscript_scan_path - create boot entries from a path
  *
- * path can either be a full path to a bootscript or a full path to a diretory
+ * path can either be a full path to a bootscript or a full path to a directory
  * containing bootscripts.
  */
 static int bootscript_scan_path(struct bootentries *bootentries, const char *path)
diff --git a/common/bootsource.c b/common/bootsource.c
index 1f2bf87e9..fdbc4cd63 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -98,8 +98,8 @@ char *bootsource_get_alias_name(void)
 	}
 
 	/*
-	 * We expect SoC specific bootsource detction code to properly
-	 * initalize bootsource_instance, so we bail out if it didn't
+	 * We expect SoC specific bootsource detection code to properly
+	 * initialize bootsource_instance, so we bail out if it didn't
 	 */
 	if (bootsource_instance == BOOTSOURCE_INSTANCE_UNKNOWN)
 		return NULL;
diff --git a/common/clock.c b/common/clock.c
index 2b218fb6a..1a4931ca8 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -109,7 +109,7 @@ EXPORT_SYMBOL(get_time_ns);
  * calculated mult and shift factors. This guarantees that no 64bit
  * overflow happens when the input value of the conversion is
  * multiplied with the calculated mult factor. Larger ranges may
- * reduce the conversion accuracy by chosing smaller mult and shift
+ * reduce the conversion accuracy by choosing smaller mult and shift
  * factors.
  */
 
diff --git a/common/console_common.c b/common/console_common.c
index 6916f651e..6d017538b 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -63,7 +63,7 @@ static void log_del(struct log_entry *log)
  * @limit:	The maximum messages left in the buffer after
  *		calling this function.
  *
- * This function deletes all messages in the logbuf exeeding
+ * This function deletes all messages in the logbuf exceeding
  * the limit.
  */
 void log_clean(unsigned int limit)
diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index 9c33cc2c9..ae10c9ae3 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -331,7 +331,7 @@
       helps keep the system level memory demands of a long-lived
       program low. Mapped memory can never become `locked' between
       other chunks, as can happen with normally allocated chunks, which
-      menas that even trimming via malloc_trim would not release them.
+      means that even trimming via malloc_trim would not release them.
 
       However, it has the disadvantages that:
 
@@ -529,7 +529,7 @@ nextchunk-> +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
     the malloc code, but "mem" is the pointer that is returned to the
     user.  "Nextchunk" is the beginning of the next contiguous chunk.
 
-    Chunks always begin on even word boundries, so the mem portion
+    Chunks always begin on even word boundaries, so the mem portion
     (which is returned to the user) is also on an even word boundary, and
     thus double-word aligned.
 
@@ -1085,7 +1085,7 @@ static void malloc_extend_top(INTERNAL_SIZE_T nb)
 /* Main public routines */
 
 /*
-  Malloc Algorthim:
+  Malloc Algorithm:
 
     The requested size is first converted into a usable form, `nb'.
     This currently means to add 4 bytes overhead plus possibly more to
@@ -1641,7 +1641,7 @@ void *memalign(size_t alignment, size_t bytes)
 	char *brk;		/* alignment point within p */
 	mchunkptr newp;		/* chunk to return */
 	INTERNAL_SIZE_T newsize;	/* its size */
-	INTERNAL_SIZE_T leadsize;	/* leading space befor alignment point */
+	INTERNAL_SIZE_T leadsize;	/* leading space before alignment point */
 	mchunkptr remainder;	/* spare room at end to split off */
 	long remainder_size;	/* its size */
 
@@ -1858,10 +1858,10 @@ History:
 	Wolfram Gloger (Gloger@lrz.uni-muenchen.de).
       * Use last_remainder in more cases.
       * Pack bins using idea from  colin@nyx10.cs.du.edu
-      * Use ordered bins instead of best-fit threshhold
+      * Use ordered bins instead of best-fit threshold
       * Eliminate block-local decls to simplify tracing and debugging.
       * Support another case of realloc via move into top
-      * Fix error occuring when initial sbrk_base not word-aligned.
+      * Fix error occurring when initial sbrk_base not word-aligned.
       * Rely on page size for units instead of SBRK_UNIT to
 	avoid surprises about sbrk alignment conventions.
       * Add mallinfo, mallopt. Thanks to Raymond Nijssen
diff --git a/common/efi-devicepath.c b/common/efi-devicepath.c
index 3db2cea06..f17b9294c 100644
--- a/common/efi-devicepath.c
+++ b/common/efi-devicepath.c
@@ -473,7 +473,7 @@ unpack_device_path(struct efi_device_path *dev_path)
 	struct efi_device_path *Src, *Dest, *new_path;
 	unsigned long Size;
 
-	/* Walk device path and round sizes to valid boundries */
+	/* Walk device path and round sizes to valid boundaries */
 
 	Src = dev_path;
 	Size = 0;
diff --git a/common/hush.c b/common/hush.c
index 68c3eccdf..c24b2c7cd 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -761,7 +761,7 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 
 	/*
 	 * We do not support pipes in barebox, so pi->num_progs can't
-	 * be bigger than 1. pi->num_progs == 0 is already catched in
+	 * be bigger than 1. pi->num_progs == 0 is already caught in
 	 * the caller, so everything else than 1 is a bug.
 	 */
 	BUG_ON(pi->num_progs != 1);
@@ -1689,7 +1689,7 @@ char *shell_expand(char *str)
 	return res;
 }
 
-/* most recursion does not come through here, the exeception is
+/* most recursion does not come through here, the exception is
  * from builtin_source() */
 static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int flag)
 {
diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index aa3f73391..0629ae5b7 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -323,7 +323,7 @@ static struct fcb_block *read_fcb_hamming_13_8(void *rawpage)
 	 * correcting bitflips. This means we cannot allow bitflips in the
 	 * fingerprint and version. We bail out with an error if it's not correct.
 	 * This is currently done in the i.MX6qdl path. It needs to be checked if
-	 * the same happens in the BCH encoded variants (i.MX6ul(l)) aswell.
+	 * the same happens in the BCH encoded variants (i.MX6ul(l)) as well.
 	 */
 	if (((struct fcb_block *)fcb)->FingerPrint != 0x20424346 ||
 	    ((struct fcb_block *)fcb)->Version != 0x01000000)
@@ -1285,7 +1285,7 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	 *                ----------------------
 	 *
 	 * We want a robust update in which a power failure may occur
-	 * everytime without bricking the board, so here's the strategy:
+	 * every time without bricking the board, so here's the strategy:
 	 *
 	 * The FCBs contain pointers to the firmware slots in the
 	 * Firmware1_startingPage and Firmware2_startingPage fields. Note that
diff --git a/common/memtest.c b/common/memtest.c
index 44ddedd3d..7b7a9eef5 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -208,7 +208,7 @@ int mem_test_bus_integrity(resource_size_t _start,
 	 * Data line test: write a pattern to the first
 	 * location, write the 1's complement to a 'parking'
 	 * address (changes the state of the data bus so a
-	 * floating bus doen't give a false OK), and then
+	 * floating bus doesn't give a false OK), and then
 	 * read the value back. Note that we read it back
 	 * into a variable because the next time we read it,
 	 * it might be right (been there, tough to explain to
diff --git a/common/resource.c b/common/resource.c
index abc0814d2..16430b78e 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -34,7 +34,7 @@ static int init_resource(struct resource *res, const char *name)
 
 /*
  * request a region.
- * This will succedd when the requested region is completely inside
+ * This will succeed when the requested region is completely inside
  * the parent resource and does not conflict with any of the child
  * resources.
  */
diff --git a/common/serdev.c b/common/serdev.c
index 3e0da0846..c87b8a8c1 100644
--- a/common/serdev.c
+++ b/common/serdev.c
@@ -141,8 +141,8 @@ static int serdev_device_reader_receive_buf(struct serdev_device *serdev,
 	memcpy(r->buf + r->len, buf, room);
 	r->len += room;
 	/*
-	 * It's important we return 'size' even if we didn't trully
-	 * consume all of the data, since otherwise serdev will keep
+	 * It's important we return 'size' even if we didn't truly
+	 * consume all of the data, since otherwise, serdev will keep
 	 * re-executing us until we do. Given the logic above that
 	 * would mean infinite loop.
 	 */
@@ -155,7 +155,7 @@ static int serdev_device_reader_receive_buf(struct serdev_device *serdev,
  * @serdev:	Underlying serdev device
  * @capacity:	Storage capacity of the reader
  *
- * This function is inteded for creating of reader serdev devices that
+ * This function is intended for creating of reader serdev devices that
  * can be used in conjunction with serdev_device_read() to perform
  * trivial fixed length reads from a serdev device.
  */
diff --git a/common/state/state.c b/common/state/state.c
index 1822f37f3..d42920985 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -699,7 +699,7 @@ struct state *state_by_name(const char *name)
 /*
  * state_by_node - find a state instance by of node
  *
- * @node	The of node of the state intance
+ * @node	The of node of the state instance
  */
 struct state *state_by_node(const struct device_node *node)
 {
diff --git a/common/ubiformat.c b/common/ubiformat.c
index 72b9b6f2e..cfaa68f16 100644
--- a/common/ubiformat.c
+++ b/common/ubiformat.c
@@ -20,7 +20,7 @@
  */
 
 /*
- * Maximum amount of consequtive eraseblocks which are considered as normal by
+ * Maximum amount of consecutive eraseblocks which are considered as normal by
  * this utility. Otherwise it is assume that something is wrong with the flash
  * or the driver, and eraseblocks are stopped being marked as bad.
  */
diff --git a/common/uimage.c b/common/uimage.c
index 35bfb10b0..3470d9bc7 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -136,7 +136,7 @@ struct uimage_handle *uimage_open(const char *filename)
 		goto err_out;
 	}
 
-	/* convert header to cpu native endianess */
+	/* convert header to cpu native endianness */
 	header->ih_magic = uimage_to_cpu(header->ih_magic);
 	header->ih_hcrc = uimage_to_cpu(header->ih_hcrc);
 	header->ih_time = uimage_to_cpu(header->ih_time);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
