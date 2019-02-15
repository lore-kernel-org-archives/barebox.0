Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1guZMP-0002BF-Ni
 for barebox@lists.infradead.org; Fri, 15 Feb 2019 09:00:44 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 15 Feb 2019 10:00:37 +0100
Message-Id: <20190215090037.5112-1-o.rempel@pengutronix.de>
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
Subject: [PATCH] efi: cleanups
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

make local functions static and remove unused code

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/efi-devicepath.c       | 222 +---------------------------------
 common/efi/efi-image.c        |   2 +-
 drivers/block/efi-block-io.c  |   2 +-
 drivers/clocksource/efi_x86.c |   4 +-
 drivers/efi/efi-device.c      |   2 +-
 drivers/net/efi-snp.c         |   2 +-
 fs/efi.c                      |   2 +-
 fs/efivarfs.c                 |   2 +-
 8 files changed, 9 insertions(+), 229 deletions(-)

diff --git a/common/efi-devicepath.c b/common/efi-devicepath.c
index 54c2f4e3c5..24722284b4 100644
--- a/common/efi-devicepath.c
+++ b/common/efi-devicepath.c
@@ -453,34 +453,6 @@ struct efi_device_path end_instance_device_path = {
 	.length = END_DEVICE_PATH_LENGTH,
 };
 
-unsigned long
-device_path_size(struct efi_device_path *dev_path)
-{
-	struct efi_device_path *Start;
-
-	Start = dev_path;
-	while (!is_device_path_end(dev_path))
-		dev_path = next_device_path_node(dev_path);
-
-	return ((unsigned long) dev_path - (unsigned long) Start) +
-	    sizeof (struct efi_device_path);
-}
-
-struct efi_device_path *
-duplicate_device_path(struct efi_device_path *dev_path)
-{
-	struct efi_device_path *new_dev_path;
-	unsigned long Size;
-
-	Size = device_path_size(dev_path);
-
-	new_dev_path = malloc(Size);
-	if (new_dev_path)
-		memcpy(new_dev_path, dev_path, Size);
-
-	return new_dev_path;
-}
-
 struct efi_device_path *
 device_path_from_handle(efi_handle_t Handle)
 {
@@ -495,134 +467,7 @@ device_path_from_handle(efi_handle_t Handle)
 	return device_path;
 }
 
-struct efi_device_path *
-device_path_instance(struct efi_device_path **device_path, unsigned long *Size)
-{
-	struct efi_device_path *Start, *Next, *dev_path;
-	unsigned long Count;
-
-	dev_path = *device_path;
-	Start = dev_path;
-
-	if (!dev_path)
-		return NULL;
-
-	for (Count = 0;; Count++) {
-		Next = next_device_path_node(dev_path);
-
-		if (is_device_path_end_type(dev_path))
-			break;
-
-		dev_path = Next;
-	}
-
-	if (dev_path->sub_type == END_ENTIRE_DEVICE_PATH_SUBTYPE)
-		Next = NULL;
-
-	*device_path = Next;
-
-	*Size = ((u8 *) dev_path) - ((u8 *) Start);
-
-	return Start;
-}
-
-unsigned long
-device_path_instance_count(struct efi_device_path *device_path)
-{
-	unsigned long Count, Size;
-
-	Count = 0;
-	while (device_path_instance(&device_path, &Size)) {
-		Count += 1;
-	}
-
-	return Count;
-}
-
-struct efi_device_path *
-append_device_path(struct efi_device_path *Src1, struct efi_device_path *Src2)
-/*
- * Src1 may have multiple "instances" and each instance is appended
- * Src2 is appended to each instance is Src1.  (E.g., it's possible
- * to append a new instance to the complete device path by passing
- * it in Src2)
- */
-{
-	unsigned long src1_size, src1_inst, src2_size, Size;
-	struct efi_device_path *Dst, *Inst;
-	u8 *dst_pos;
-
-	if (!Src1)
-		return duplicate_device_path(Src2);
-
-	if (!Src2) {
-		return duplicate_device_path(Src1);
-	}
-
-	src1_size = device_path_size(Src1);
-	src1_inst = device_path_instance_count(Src1);
-	src2_size = device_path_size(Src2);
-	Size = src1_size * src1_inst + src2_size;
-
-	Dst = malloc(Size);
-	if (Dst) {
-		dst_pos = (u8 *) Dst;
-
-		/* Copy all device path instances */
-
-		while ((Inst = device_path_instance(&Src1, &Size))) {
-
-			memcpy(dst_pos, Inst, Size);
-			dst_pos += Size;
-
-			memcpy(dst_pos, Src2, src2_size);
-			dst_pos += src2_size;
-
-			memcpy(dst_pos, &end_instance_device_path,
-			       sizeof (struct efi_device_path));
-			dst_pos += sizeof (struct efi_device_path);
-		}
-
-		/* Change last end marker */
-		dst_pos -= sizeof (struct efi_device_path);
-		memcpy(dst_pos, &end_device_path,
-		       sizeof (struct efi_device_path));
-	}
-
-	return Dst;
-}
-
-struct efi_device_path *
-append_device_path_node(struct efi_device_path *Src1,
-			struct efi_device_path *Src2)
-/*
- * Src1 may have multiple "instances" and each instance is appended
- * Src2 is a signal device path node (without a terminator) that is
- * appended to each instance is Src1.
- */
-{
-	struct efi_device_path *Temp, *Eop;
-	unsigned long length;
-
-	/* Build a Src2 that has a terminator on it */
-
-	length = Src2->length;
-	Temp = malloc(length + sizeof (struct efi_device_path));
-	if (!Temp)
-		return NULL;
-
-	memcpy(Temp, Src2, length);
-	Eop = next_device_path_node(Temp);
-	set_device_path_end_node(Eop);
-
-	/* Append device paths */
-
-	Src1 = append_device_path(Src1, Temp);
-	free(Temp);
-	return Src1;
-}
-
-struct efi_device_path *
+static struct efi_device_path *
 unpack_device_path(struct efi_device_path *dev_path)
 {
 	struct efi_device_path *Src, *Dest, *new_path;
@@ -665,71 +510,6 @@ unpack_device_path(struct efi_device_path *dev_path)
 	return new_path;
 }
 
-struct efi_device_path *
-append_device_path_instance(struct efi_device_path *Src,
-			    struct efi_device_path *Instance)
-{
-	u8 *Ptr;
-	struct efi_device_path *dev_path;
-	unsigned long src_size;
-	unsigned long instance_size;
-
-	if (Src == NULL)
-		return duplicate_device_path(Instance);
-
-	src_size = device_path_size(Src);
-	instance_size = device_path_size(Instance);
-	Ptr = malloc(src_size + instance_size);
-	dev_path = (struct efi_device_path *) Ptr;
-
-	memcpy(Ptr, Src, src_size);
-
-	while (!is_device_path_end(dev_path))
-		dev_path = next_device_path_node(dev_path);
-
-	/*
-	 * Convert the End to an End Instance, since we are
-	 *  appending another instacne after this one its a good
-	 *  idea.
-	 */
-	dev_path->sub_type = END_INSTANCE_DEVICE_PATH_SUBTYPE;
-
-	dev_path = next_device_path_node(dev_path);
-	memcpy(dev_path, Instance, instance_size);
-
-	return (struct efi_device_path *) Ptr;
-}
-
-efi_status_t
-lib_device_path_to_interface(efi_guid_t * Protocol,
-			     struct efi_device_path *file_path,
-			     void **Interface)
-{
-	efi_status_t Status;
-	efi_handle_t Device;
-
-	Status = BS->locate_device_path(Protocol, &file_path, &Device);
-
-	if (!EFI_ERROR(Status)) {
-
-		/* If we didn't get a direct match return not found */
-		Status = EFI_NOT_FOUND;
-
-		if (is_device_path_end(file_path)) {
-
-			/* It was a direct match, lookup the protocol interface */
-
-			Status =
-			    BS->handle_protocol(Device, Protocol, Interface);
-		}
-	}
-
-	if (EFI_ERROR(Status))
-		*Interface = NULL;
-
-	return Status;
-}
-
 static void
 dev_path_pci(struct string *str, void *dev_path)
 {
diff --git a/common/efi/efi-image.c b/common/efi/efi-image.c
index 885348da45..939663a6e2 100644
--- a/common/efi/efi-image.c
+++ b/common/efi/efi-image.c
@@ -88,7 +88,7 @@ struct linux_kernel_header {
 	uint32_t handover_offset;	/** */
 } __attribute__ ((packed));
 
-int efi_load_image(const char *file, efi_loaded_image_t **loaded_image,
+static int efi_load_image(const char *file, efi_loaded_image_t **loaded_image,
 		efi_handle_t *h)
 {
 	void *exe;
diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index 2bbeb99e69..d167d814c2 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -142,7 +142,7 @@ static int is_bio_usbdev(struct efi_device *efidev)
 	return 0;
 }
 
-int efi_bio_probe(struct efi_device *efidev)
+static int efi_bio_probe(struct efi_device *efidev)
 {
 	int ret;
 	struct efi_bio_priv *priv;
diff --git a/drivers/clocksource/efi_x86.c b/drivers/clocksource/efi_x86.c
index 4d2657ea1d..f8d3ff8a43 100644
--- a/drivers/clocksource/efi_x86.c
+++ b/drivers/clocksource/efi_x86.c
@@ -6,7 +6,7 @@
 #include <clock.h>
 
 #ifdef __x86_64__
-uint64_t ticks_read(void)
+static uint64_t ticks_read(void)
 {
 	uint64_t a, d;
 
@@ -15,7 +15,7 @@ uint64_t ticks_read(void)
 	return (d << 32) | a;
 }
 #else
-uint64_t ticks_read(void)
+static uint64_t ticks_read(void)
 {
 	uint64_t val;
 
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 5cc68fb781..305d337aab 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -32,7 +32,7 @@
 #include <efi/efi-device.h>
 #include <linux/err.h>
 
-int efi_locate_handle(enum efi_locate_search_type search_type,
+static int efi_locate_handle(enum efi_locate_search_type search_type,
 		efi_guid_t *protocol,
 		void *search_key,
 		unsigned long *no_handles,
diff --git a/drivers/net/efi-snp.c b/drivers/net/efi-snp.c
index 4e32513739..def2714bee 100644
--- a/drivers/net/efi-snp.c
+++ b/drivers/net/efi-snp.c
@@ -231,7 +231,7 @@ static int efi_snp_set_ethaddr(struct eth_device *edev, const unsigned char *adr
 	return 0;
 }
 
-int efi_snp_probe(struct efi_device *efidev)
+static int efi_snp_probe(struct efi_device *efidev)
 {
 	struct eth_device *edev;
 	struct efi_snp_priv *priv;
diff --git a/fs/efi.c b/fs/efi.c
index 81c1ffe078..944d6aac7a 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -513,7 +513,7 @@ coredevice_initcall(efifs_init);
 
 static int index;
 
-int efi_fs_probe(struct efi_device *efidev)
+static int efi_fs_probe(struct efi_device *efidev)
 {
 	char *path, *device;
 	int ret;
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index a911eac3bf..1e80493621 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -67,7 +67,7 @@ static int read_byte_str(const char *str, u8 *out)
 	return 0;
 }
 
-int efi_guid_parse(const char *str, efi_guid_t *guid)
+static int efi_guid_parse(const char *str, efi_guid_t *guid)
 {
 	int i, ret;
 	u8 idx[] = { 3, 2, 1, 0, 5, 4, 7, 6, 8, 9, 10, 11, 12, 13, 14, 15 };
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
