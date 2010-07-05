Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVlXN-0000ko-7L
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 13:16:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Jul 2010 15:16:28 +0200
Message-Id: <1278335795-16289-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
References: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/12] cfi_flash: Do not typedef struct flash_info
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/cfi_flash.c       |   46 +++++++++++++++++++-------------------
 drivers/nor/cfi_flash.h       |   48 ++++++++++++++++++++--------------------
 drivers/nor/cfi_flash_amd.c   |   14 ++++++------
 drivers/nor/cfi_flash_intel.c |   12 +++++-----
 4 files changed, 60 insertions(+), 60 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index b21739b..bf582ab 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -77,7 +77,7 @@ static uint flash_offset_cfi[2]={FLASH_OFFSET_CFI,FLASH_OFFSET_CFI_ALT};
  * Functions
  */
 
-static void flash_add_byte (flash_info_t * info, cfiword_t * cword, uchar c)
+static void flash_add_byte (struct flash_info *info, cfiword_t * cword, uchar c)
 {
 #if defined(__LITTLE_ENDIAN)
 	unsigned short	w;
@@ -114,7 +114,7 @@ static void flash_add_byte (flash_info_t * info, cfiword_t * cword, uchar c)
 	}
 }
 
-static int flash_write_cfiword (flash_info_t * info, ulong dest,
+static int flash_write_cfiword (struct flash_info *info, ulong dest,
 				cfiword_t cword)
 {
 	cfiptr_t cptr;
@@ -159,7 +159,7 @@ void print_longlong (char *str, unsigned long long data)
 		sprintf (&str[i * 2], "%2.2x", *cp++);
 }
 
-static void flash_printqry (flash_info_t * info, flash_sect_t sect)
+static void flash_printqry (struct flash_info *info, flash_sect_t sect)
 {
 	cfiptr_t cptr;
 	int x, y;
@@ -188,7 +188,7 @@ static void flash_printqry (flash_info_t * info, flash_sect_t sect)
 /*
  * read a short word by swapping for ppc format.
  */
-static ushort flash_read_ushort (flash_info_t * info, flash_sect_t sect, uint offset)
+static ushort flash_read_ushort (struct flash_info *info, flash_sect_t sect, uint offset)
 {
 	uchar *addr;
 	ushort retval;
@@ -220,7 +220,7 @@ static ushort flash_read_ushort (flash_info_t * info, flash_sect_t sect, uint of
  * read a long word by picking the least significant byte of each maximum
  * port size word. Swap for ppc format.
  */
-static ulong flash_read_long (flash_info_t * info, flash_sect_t sect, uint offset)
+static ulong flash_read_long (struct flash_info *info, flash_sect_t sect, uint offset)
 {
 	uchar *addr;
 	ulong retval;
@@ -254,7 +254,7 @@ static ulong flash_read_long (flash_info_t * info, flash_sect_t sect, uint offse
  * http://www.jedec.org/download/search/jesd68.pdf
  *
 */
-static int flash_detect_cfi (flash_info_t * info)
+static int flash_detect_cfi (struct flash_info *info)
 {
 	int cfi_offset;
 	debug ("flash detect cfi\n");
@@ -291,7 +291,7 @@ static int flash_detect_cfi (flash_info_t * info)
 /*
  * The following code cannot be run from FLASH!
  */
-static ulong flash_get_size (flash_info_t *info, ulong base)
+static ulong flash_get_size (struct flash_info *info, ulong base)
 {
 	int i, j;
 	flash_sect_t sect_cnt;
@@ -478,7 +478,7 @@ static ulong flash_get_size (flash_info_t *info, ulong base)
  * when the passed address is greater or equal to the sector address
  * we have a match
  */
-flash_sect_t find_sector (flash_info_t * info, ulong addr)
+flash_sect_t find_sector (struct flash_info *info, ulong addr)
 {
 	flash_sect_t sector;
 
@@ -491,7 +491,7 @@ flash_sect_t find_sector (flash_info_t * info, ulong addr)
 
 static int cfi_erase(struct cdev *cdev, size_t count, unsigned long offset)
 {
-        flash_info_t *finfo = (flash_info_t *)cdev->priv;
+        struct flash_info *finfo = (struct flash_info *)cdev->priv;
         unsigned long start, end;
         int i, ret = 0;
 
@@ -519,7 +519,7 @@ out:
  * 1 - write timeout
  * 2 - Flash not erased
  */
-static int write_buff (flash_info_t * info, const uchar * src, ulong addr, ulong cnt)
+static int write_buff (struct flash_info *info, const uchar * src, ulong addr, ulong cnt)
 {
 	ulong wp;
 	ulong cp;
@@ -614,7 +614,7 @@ static int write_buff (flash_info_t * info, const uchar * src, ulong addr, ulong
 	return flash_write_cfiword (info, wp, cword);
 }
 
-static int flash_real_protect (flash_info_t * info, long sector, int prot)
+static int flash_real_protect (struct flash_info *info, long sector, int prot)
 {
 	int retcode = 0;
 
@@ -649,7 +649,7 @@ static int flash_real_protect (flash_info_t * info, long sector, int prot)
 
 static int cfi_protect(struct cdev *cdev, size_t count, unsigned long offset, int prot)
 {
-	flash_info_t *finfo = (flash_info_t *)cdev->priv;
+	struct flash_info *finfo = (struct flash_info *)cdev->priv;
 	unsigned long start, end;
 	int i, ret = 0;
 	const char *action = (prot? "protect" : "unprotect");
@@ -672,7 +672,7 @@ out:
 
 static ssize_t cfi_write(struct cdev *cdev, const void *buf, size_t count, unsigned long offset, ulong flags)
 {
-        flash_info_t *finfo = (flash_info_t *)cdev->priv;
+        struct flash_info *finfo = (struct flash_info *)cdev->priv;
         int ret;
 
 	debug("cfi_write: buf=0x%08x addr=0x%08x count=0x%08x\n",buf, cdev->dev->map_base + offset, count);
@@ -683,7 +683,7 @@ static ssize_t cfi_write(struct cdev *cdev, const void *buf, size_t count, unsig
 
 static void cfi_info (struct device_d* dev)
 {
-        flash_info_t *info = (flash_info_t *)dev->priv;
+        struct flash_info *info = (struct flash_info *)dev->priv;
 	int i;
 
 	if (info->flash_id != FLASH_MAN_CFI) {
@@ -775,7 +775,7 @@ static void cfi_info (struct device_d* dev)
 /*
  * flash_read_user_serial - read the OneTimeProgramming cells
  */
-static void flash_read_user_serial (flash_info_t * info, void *buffer, int offset,
+static void flash_read_user_serial (struct flash_info *info, void *buffer, int offset,
 			     int len)
 {
 	uchar *src;
@@ -791,7 +791,7 @@ static void flash_read_user_serial (flash_info_t * info, void *buffer, int offse
 /*
  * flash_read_factory_serial - read the device Id from the protection area
  */
-static void flash_read_factory_serial (flash_info_t * info, void *buffer, int offset,
+static void flash_read_factory_serial (struct flash_info *info, void *buffer, int offset,
 				int len)
 {
 	uchar *src;
@@ -804,7 +804,7 @@ static void flash_read_factory_serial (flash_info_t * info, void *buffer, int of
 
 #endif
 
-int flash_status_check (flash_info_t * info, flash_sect_t sector,
+int flash_status_check (struct flash_info *info, flash_sect_t sector,
 			       uint64_t tout, char *prompt)
 {
 	return info->cfi_cmd_set->flash_status_check(info, sector, tout, prompt);
@@ -814,7 +814,7 @@ int flash_status_check (flash_info_t * info, flash_sect_t sector,
  *  wait for XSR.7 to be set. Time out with an error if it does not.
  *  This routine does not set the flash to read-array mode.
  */
-int flash_generic_status_check (flash_info_t * info, flash_sect_t sector,
+int flash_generic_status_check (struct flash_info *info, flash_sect_t sector,
 			       uint64_t tout, char *prompt)
 {
 	uint64_t start;
@@ -839,7 +839,7 @@ int flash_generic_status_check (flash_info_t * info, flash_sect_t sector,
 /*
  * make a proper sized command based on the port and chip widths
  */
-void flash_make_cmd (flash_info_t * info, uchar cmd, void *cmdbuf)
+void flash_make_cmd (struct flash_info *info, uchar cmd, void *cmdbuf)
 {
 	int i;
 	uchar *cp = (uchar *) cmdbuf;
@@ -855,7 +855,7 @@ void flash_make_cmd (flash_info_t * info, uchar cmd, void *cmdbuf)
 /*
  * Write a proper sized command to the correct address
  */
-void flash_write_cmd (flash_info_t * info, flash_sect_t sect, uint offset, uchar cmd)
+void flash_write_cmd (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd)
 {
 
 	uchar *addr;
@@ -866,7 +866,7 @@ void flash_write_cmd (flash_info_t * info, flash_sect_t sect, uint offset, uchar
 	flash_write_word(info, cword, addr);
 }
 
-int flash_isequal (flash_info_t * info, flash_sect_t sect, uint offset, uchar cmd)
+int flash_isequal (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd)
 {
 	cfiptr_t cptr;
 	cfiword_t cword;
@@ -903,7 +903,7 @@ int flash_isequal (flash_info_t * info, flash_sect_t sect, uint offset, uchar cm
 	return retval;
 }
 
-int flash_isset (flash_info_t * info, flash_sect_t sect, uint offset, uchar cmd)
+int flash_isset (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd)
 {
 	cfiptr_t cptr;
 	cfiword_t cword;
@@ -937,7 +937,7 @@ struct file_operations cfi_ops = {
 static int cfi_probe (struct device_d *dev)
 {
 	unsigned long size = 0;
-	flash_info_t *info = xzalloc(sizeof(flash_info_t));
+	struct flash_info *info = xzalloc(sizeof(*info));
 
 	dev->priv = (void *)info;
 
diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index a8fa879..8e76c3e 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -34,7 +34,7 @@ struct cfi_cmd_set;
  * FLASH Info: contains chip specific data, per FLASH bank
  */
 
-typedef struct {
+struct flash_info {
 	struct driver_d driver;
 	ulong	size;			/* total bank size in bytes		*/
 	ushort	sector_count;		/* number of erase units		*/
@@ -60,15 +60,15 @@ typedef struct {
 	ushort	cfi_offset;		/* offset for cfi query 		*/
 	struct cfi_cmd_set *cfi_cmd_set;
 	struct cdev cdev;
-} flash_info_t;
+};
 
 struct cfi_cmd_set {
-	int (*flash_write_cfibuffer) (flash_info_t * info, ulong dest, const uchar * cp, int len);
-	int (*flash_erase_one) (flash_info_t * info, long sect);
-	int (*flash_is_busy) (flash_info_t * info, flash_sect_t sect);
-	void (*flash_read_jedec_ids) (flash_info_t * info);
-	void (*flash_prepare_write) (flash_info_t * info);
-	int (*flash_status_check) (flash_info_t * info, flash_sect_t sector, uint64_t tout, char *prompt);
+	int (*flash_write_cfibuffer) (struct flash_info *info, ulong dest, const uchar * cp, int len);
+	int (*flash_erase_one) (struct flash_info *info, long sect);
+	int (*flash_is_busy) (struct flash_info *info, flash_sect_t sect);
+	void (*flash_read_jedec_ids) (struct flash_info *info);
+	void (*flash_prepare_write) (struct flash_info *info);
+	int (*flash_status_check) (struct flash_info *info, flash_sect_t sector, uint64_t tout, char *prompt);
 };
 
 extern struct cfi_cmd_set cfi_cmd_set_intel;
@@ -180,21 +180,21 @@ extern struct cfi_cmd_set cfi_cmd_set_amd;
 #define CFI_FLASH_SHIFT_WIDTH	3
 /* Prototypes */
 
-int flash_isset (flash_info_t * info, flash_sect_t sect, uint offset, uchar cmd);
-void flash_write_cmd (flash_info_t * info, flash_sect_t sect, uint offset, uchar cmd);
-flash_sect_t find_sector (flash_info_t * info, ulong addr);
-int flash_status_check (flash_info_t * info, flash_sect_t sector,
+int flash_isset (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd);
+void flash_write_cmd (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd);
+flash_sect_t find_sector (struct flash_info *info, ulong addr);
+int flash_status_check (struct flash_info *info, flash_sect_t sector,
 			       uint64_t tout, char *prompt);
-int flash_generic_status_check (flash_info_t * info, flash_sect_t sector,
+int flash_generic_status_check (struct flash_info *info, flash_sect_t sector,
 			       uint64_t tout, char *prompt);
 
-int flash_isequal (flash_info_t * info, flash_sect_t sect, uint offset, uchar cmd);
-void flash_make_cmd (flash_info_t * info, uchar cmd, void *cmdbuf);
+int flash_isequal (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd);
+void flash_make_cmd (struct flash_info *info, uchar cmd, void *cmdbuf);
 
 /*
  * create an address based on the offset and the port width
  */
-static inline uchar *flash_make_addr (flash_info_t * info, flash_sect_t sect, uint offset)
+static inline uchar *flash_make_addr (struct flash_info *info, flash_sect_t sect, uint offset)
 {
 	return ((uchar *) (info->start[sect] + (offset * info->portwidth)));
 }
@@ -202,7 +202,7 @@ static inline uchar *flash_make_addr (flash_info_t * info, flash_sect_t sect, ui
 /*
  * read a character at a port width address
  */
-static inline uchar flash_read_uchar (flash_info_t * info, uint offset)
+static inline uchar flash_read_uchar (struct flash_info *info, uint offset)
 {
 	uchar *cp;
 
@@ -252,7 +252,7 @@ typedef union {
 	volatile unsigned long long *llp;
 } cfiptr_t;
 
-static inline void flash_write_word(flash_info_t *info, cfiword_t datum, void *addr)
+static inline void flash_write_word(struct flash_info *info, cfiword_t datum, void *addr)
 {
 	if (bankwidth_is_1(info)) {
 		debug("fw addr %p val %02x\n", addr, datum.c);
@@ -268,21 +268,21 @@ static inline void flash_write_word(flash_info_t *info, cfiword_t datum, void *a
 	}
 }
 
-extern void flash_print_info (flash_info_t *);
+extern void flash_print_info (struct flash_info *);
 extern int flash_sect_erase (ulong addr_first, ulong addr_last);
 extern int flash_sect_protect (int flag, ulong addr_first, ulong addr_last);
 
 /* common/flash.c */
-extern void flash_protect (int flag, ulong from, ulong to, flash_info_t *info);
+extern void flash_protect (int flag, ulong from, ulong to, struct flash_info *info);
 extern int flash_write (char *, ulong, ulong);
-extern flash_info_t *addr2info (ulong);
+extern struct flash_info *addr2info (ulong);
 //extern int write_buff (flash_info_t *info, const uchar *src, ulong addr, ulong cnt);
 
 /* board/?/flash.c */
 #if defined(CFG_FLASH_PROTECTION)
-extern int flash_real_protect(flash_info_t *info, long sector, int prot);
-extern void flash_read_user_serial(flash_info_t * info, void * buffer, int offset, int len);
-extern void flash_read_factory_serial(flash_info_t * info, void * buffer, int offset, int len);
+extern int flash_real_protect(struct flash_info *info, long sector, int prot);
+extern void flash_read_user_serial(struct flash_info *info, void * buffer, int offset, int len);
+extern void flash_read_factory_serial(struct flash_info *info, void * buffer, int offset, int len);
 #endif	/* CFG_FLASH_PROTECTION */
 
 /*-----------------------------------------------------------------------
diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/nor/cfi_flash_amd.c
index ea4c2c9..45b7e5c 100644
--- a/drivers/nor/cfi_flash_amd.c
+++ b/drivers/nor/cfi_flash_amd.c
@@ -2,7 +2,7 @@
 #include <stdio.h>
 #include "cfi_flash.h"
 
-static void flash_unlock_seq (flash_info_t * info)
+static void flash_unlock_seq (struct flash_info *info)
 {
 	flash_write_cmd (info, 0, AMD_ADDR_START, AMD_CMD_UNLOCK_START);
 	flash_write_cmd (info, 0, AMD_ADDR_ACK, AMD_CMD_UNLOCK_ACK);
@@ -14,7 +14,7 @@ static void flash_unlock_seq (flash_info_t * info)
  * Note: assume cfi->vendor, cfi->portwidth and cfi->chipwidth are correct
  *
 */
-static void amd_read_jedec_ids (flash_info_t * info)
+static void amd_read_jedec_ids (struct flash_info *info)
 {
 	info->manufacturer_id = 0;
 	info->device_id       = 0;
@@ -39,7 +39,7 @@ static void amd_read_jedec_ids (flash_info_t * info)
 	flash_write_cmd(info, 0, 0, AMD_CMD_RESET);
 }
 
-static int flash_toggle (flash_info_t * info, flash_sect_t sect, uint offset, uchar cmd)
+static int flash_toggle (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd)
 {
 	cfiptr_t cptr;
 	cfiword_t cword;
@@ -66,12 +66,12 @@ static int flash_toggle (flash_info_t * info, flash_sect_t sect, uint offset, uc
  * flash_is_busy - check to see if the flash is busy
  * This routine checks the status of the chip and returns true if the chip is busy
  */
-static int amd_flash_is_busy (flash_info_t * info, flash_sect_t sect)
+static int amd_flash_is_busy (struct flash_info *info, flash_sect_t sect)
 {
 	return flash_toggle (info, sect, 0, AMD_STATUS_TOGGLE);
 }
 
-static int amd_flash_erase_one (flash_info_t * info, long sect)
+static int amd_flash_erase_one (struct flash_info *info, long sect)
 {
 	flash_unlock_seq(info);
 	flash_write_cmd (info, 0, AMD_ADDR_ERASE_START, AMD_CMD_ERASE_START);
@@ -81,14 +81,14 @@ static int amd_flash_erase_one (flash_info_t * info, long sect)
 	return flash_status_check(info, sect, info->erase_blk_tout, "erase");
 }
 
-static void amd_flash_prepare_write(flash_info_t * info)
+static void amd_flash_prepare_write(struct flash_info *info)
 {
 	flash_unlock_seq(info);
 	flash_write_cmd (info, 0, AMD_ADDR_START, AMD_CMD_WRITE);
 }
 
 #ifdef CONFIG_CFI_BUFFER_WRITE
-static int amd_flash_write_cfibuffer (flash_info_t * info, ulong dest, const uchar * cp,
+static int amd_flash_write_cfibuffer (struct flash_info *info, ulong dest, const uchar * cp,
 				  int len)
 {
 	flash_sect_t sector;
diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
index e4dfdfa..4344760 100644
--- a/drivers/nor/cfi_flash_intel.c
+++ b/drivers/nor/cfi_flash_intel.c
@@ -7,7 +7,7 @@
  * Note: assume cfi->vendor, cfi->portwidth and cfi->chipwidth are correct
  *
 */
-static void intel_read_jedec_ids (flash_info_t * info)
+static void intel_read_jedec_ids (struct flash_info *info)
 {
 	info->manufacturer_id = 0;
 	info->device_id       = 0;
@@ -27,12 +27,12 @@ static void intel_read_jedec_ids (flash_info_t * info)
  * flash_is_busy - check to see if the flash is busy
  * This routine checks the status of the chip and returns true if the chip is busy
  */
-static int intel_flash_is_busy (flash_info_t * info, flash_sect_t sect)
+static int intel_flash_is_busy (struct flash_info *info, flash_sect_t sect)
 {
 	return !flash_isset (info, sect, 0, FLASH_STATUS_DONE);
 }
 
-static int intel_flash_erase_one (flash_info_t * info, long sect)
+static int intel_flash_erase_one (struct flash_info *info, long sect)
 {
 	flash_write_cmd (info, sect, 0, FLASH_CMD_CLEAR_STATUS);
 	flash_write_cmd (info, sect, 0, FLASH_CMD_BLOCK_ERASE);
@@ -41,14 +41,14 @@ static int intel_flash_erase_one (flash_info_t * info, long sect)
 	return flash_status_check(info, sect, info->erase_blk_tout, "erase");
 }
 
-static void intel_flash_prepare_write(flash_info_t * info)
+static void intel_flash_prepare_write(struct flash_info *info)
 {
 	flash_write_cmd (info, 0, 0, FLASH_CMD_CLEAR_STATUS);
 	flash_write_cmd (info, 0, 0, FLASH_CMD_WRITE);
 }
 
 #ifdef CONFIG_CFI_BUFFER_WRITE
-static int intel_flash_write_cfibuffer (flash_info_t * info, ulong dest, const uchar * cp,
+static int intel_flash_write_cfibuffer (struct flash_info *info, ulong dest, const uchar * cp,
 				  int len)
 {
 	flash_sect_t sector;
@@ -94,7 +94,7 @@ static int intel_flash_write_cfibuffer (flash_info_t * info, ulong dest, const u
 #define intel_flash_write_cfibuffer NULL
 #endif /* CONFIG_CFI_BUFFER_WRITE */
 
-static int intel_flash_status_check (flash_info_t * info, flash_sect_t sector,
+static int intel_flash_status_check (struct flash_info *info, flash_sect_t sector,
 				    uint64_t tout, char *prompt)
 {
 	int retcode;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
