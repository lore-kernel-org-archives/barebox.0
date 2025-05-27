Delivery-date: Tue, 27 May 2025 23:32:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1u1-000yRa-0o
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:32:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tz-0005y6-9A
	for lore@pengutronix.de; Tue, 27 May 2025 23:32:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UgfanHSppkEtg0OOox3Bk/z7klJ0FwoUmn7cgIa2rFY=; b=cUKv99IQ6tRXtyf6Fwz9z1P1OI
	oumvbsip4RURp+gRyLwQEbN6JOP8LwXg/w3LlOD8E+ww6FO+kMsTCg2wQXKhbSvheZ2gTP+EDQqnG
	Q5W+Y65pINDjOM6oW1hDSpX1IrE+1mMpzhLnkeK2xGWSyK08Dvq5KLZpxRRsgZX4qtqH5YOHd9/Z/
	e5mptpkQQa3skZrQpVvLzlAjFaCIOi2DVz+DaVZJ+i/EuknOPOeV1RZ6u0N1JTQqcq1Gi4aPwxswT
	1Jj0aX0GJmaX4FGLgj+U/HdawFeJI8r+ChoxSpGmxRRX5lTw5E6JftCD+nMUCPSG5UGsG6Nj7hY9n
	bjRUPhGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tL-0000000Bbpx-411j;
	Tue, 27 May 2025 21:31:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lS-0000000BazK-3iaY
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lQ-00015n-IS; Tue, 27 May 2025 23:23:13 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 27 May 2025 23:22:56 +0200
Message-Id: <20250527212300.575031-12-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142315_229588_BE585C87 
X-CRM114-Status: GOOD (  19.09  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-7.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/15] efi: use size_t for UINTN array sizes instead of unsigned long
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

UINTN is the native register wide integer type. We don't have a specific
typedef for this in barebox, instead using size_t in places and unsigned
long in others.

The type confusion is no problem on 64-bit platforms, where size_t is
just a typedef for long. On 32-bit platforms, size_t is a typedef for
int, which while having the same size as long, is a different type,
which leads to compiler warning and errors regarding use of different
types for pointer arguments or in printf format strings.

The nice way out would have just define the size_t type as alias for
unsigned long everywhere, but this leads to false positive printf format
string warnings, so let's clean up the EFI UINTN type usage:

  - Everywhere, where the UINTN is used for an array size or buffer
    length, use size_t

  - Everywhere else keep it as unsigned long. In future, these types may
    be replaces by more specific typedefs.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/efi_handle_dump.c  |  8 ++++----
 drivers/efi/efi-device.c    | 17 ++++++++---------
 drivers/efi/efi-handle.c    |  4 ++--
 drivers/serial/serial_efi.c | 10 +++++-----
 drivers/video/efi_gop.c     | 10 +++++-----
 efi/payload/init.c          |  4 ++--
 efi/payload/iomem.c         |  2 +-
 fs/efi.c                    | 12 ++++++------
 fs/efivarfs.c               |  6 +++---
 include/efi.h               | 32 ++++++++++++++++----------------
 include/efi/efi-device.h    |  2 +-
 include/efi/efi-payload.h   |  2 +-
 12 files changed, 54 insertions(+), 55 deletions(-)

diff --git a/commands/efi_handle_dump.c b/commands/efi_handle_dump.c
index a9db5eb75b69..30abf9000387 100644
--- a/commands/efi_handle_dump.c
+++ b/commands/efi_handle_dump.c
@@ -33,10 +33,10 @@ static void efi_devpath(struct efi_boot_services *bs,
 	}
 }
 
-static void efi_dump(struct efi_boot_services *bs, efi_handle_t *handles, unsigned long handle_count)
+static void efi_dump(struct efi_boot_services *bs, efi_handle_t *handles, size_t handle_count)
 {
 	int i, j;
-	unsigned long num_guids;
+	size_t num_guids;
 	efi_guid_t **guids;
 
 	if (!handles || !handle_count)
@@ -61,7 +61,7 @@ static void efi_dump(struct efi_boot_services *bs, efi_handle_t *handles, unsign
 
 static int do_efi_protocol_dump(struct efi_boot_services *bs, int argc, char **argv)
 {
-	unsigned long handle_count = 0;
+	size_t handle_count = 0;
 	efi_handle_t *handles = NULL;
 	int ret;
 	efi_guid_t guid;
@@ -110,7 +110,7 @@ static int do_efi_protocol_dump(struct efi_boot_services *bs, int argc, char **a
 
 static int do_efi_handle_dump(int argc, char *argv[])
 {
-	unsigned long handle_count = 0;
+	size_t handle_count = 0;
 	efi_handle_t *handles = NULL;
 	struct efi_boot_services *bs;
 	int ret;
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 6dfcf22d3baf..d5eda66cd55a 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -23,7 +23,7 @@
 static int efi_locate_handle(enum efi_locate_search_type search_type,
 		efi_guid_t *protocol,
 		void *search_key,
-		unsigned long *no_handles,
+		size_t *no_handles,
 		efi_handle_t **buffer)
 {
 	return __efi_locate_handle(BS, search_type, protocol, search_key, no_handles,
@@ -59,14 +59,14 @@ static void efi_devinfo(struct device *dev)
 
 static efi_handle_t efi_find_parent(efi_handle_t handle)
 {
-	unsigned long handle_count = 0;
+	size_t i, handle_count = 0;
 	efi_handle_t *handles = NULL, parent;
-	unsigned long num_guids;
+	size_t j, num_guids;
 	efi_guid_t **guids;
-	int ret, i, j, k;
+	int ret;
 	efi_status_t efiret;
 	struct efi_open_protocol_information_entry *entry_buffer;
-	unsigned long entry_count;
+	size_t k, entry_count;
 
 	ret = efi_locate_handle(BY_PROTOCOL, &efi_device_path_protocol_guid,
 			NULL, &handle_count, &handles);
@@ -215,9 +215,9 @@ static int efi_register_device(struct efi_device *efidev)
  */
 void efi_register_devices(void)
 {
-	unsigned long handle_count = 0;
+	size_t handle_count = 0;
 	efi_handle_t *handles = NULL;
-	unsigned long num_guids;
+	size_t num_guids;
 	efi_guid_t **guids;
 	int ret, i;
 	struct efi_device **efidevs;
@@ -264,9 +264,8 @@ void efi_register_devices(void)
 int efi_connect_all(void)
 {
 	efi_status_t  efiret;
-	unsigned long handle_count;
+	size_t i, handle_count;
 	efi_handle_t *handle_buffer;
-	int i;
 
 	efiret = BS->locate_handle_buffer(ALL_HANDLES, NULL, NULL, &handle_count,
 			&handle_buffer);
diff --git a/drivers/efi/efi-handle.c b/drivers/efi/efi-handle.c
index be9013cb648f..6485e97ded3f 100644
--- a/drivers/efi/efi-handle.c
+++ b/drivers/efi/efi-handle.c
@@ -13,11 +13,11 @@ int __efi_locate_handle(struct efi_boot_services *bs,
 			enum efi_locate_search_type search_type,
 			efi_guid_t *protocol,
 			void *search_key,
-			unsigned long *no_handles,
+			size_t *no_handles,
 			efi_handle_t **buffer)
 {
 	efi_status_t efiret;
-	unsigned long buffer_size = 0;
+	size_t buffer_size = 0;
 	efi_handle_t *buf;
 
 	efiret = bs->locate_handle(search_type, protocol, search_key, &buffer_size,
diff --git a/drivers/serial/serial_efi.c b/drivers/serial/serial_efi.c
index 6ed068f159f2..a0abbaf649d3 100644
--- a/drivers/serial/serial_efi.c
+++ b/drivers/serial/serial_efi.c
@@ -75,9 +75,9 @@ struct efi_serial_io_protocol {
 	efi_status_t (EFIAPI *getcontrol) (struct efi_serial_io_protocol *This,
 			uint32_t *control);
 	efi_status_t (EFIAPI *write) (struct efi_serial_io_protocol *This,
-			unsigned long *buffersize, void *buffer);
+			size_t *buffersize, void *buffer);
 	efi_status_t (EFIAPI *read) (struct efi_serial_io_protocol *This,
-			unsigned long *buffersize, void *buffer);
+			size_t *buffersize, void *buffer);
 
 	struct efi_serial_io_mode *mode;
 };
@@ -117,7 +117,7 @@ static void efi_serial_putc(struct console_device *cdev, char c)
 	struct efi_serial_io_protocol *serial = uart->serial;
 	uint32_t control;
 	efi_status_t efiret;
-	unsigned long buffersize = sizeof(char);
+	size_t buffersize = sizeof(char);
 
 	do {
 		efiret = serial->getcontrol(serial, &control);
@@ -136,7 +136,7 @@ static int efi_serial_puts(struct console_device *cdev, const char *s,
 	struct efi_serial_io_protocol *serial = uart->serial;
 	uint32_t control;
 	efi_status_t efiret;
-	unsigned long buffersize = nbytes;
+	size_t buffersize = nbytes;
 
 	do {
 		efiret = serial->getcontrol(serial, &control);
@@ -156,7 +156,7 @@ static int efi_serial_getc(struct console_device *cdev)
 	struct efi_serial_io_protocol *serial = uart->serial;
 	uint32_t control;
 	efi_status_t efiret;
-	unsigned long buffersize = sizeof(char);
+	size_t buffersize = sizeof(char);
 	char c;
 
 	do {
diff --git a/drivers/video/efi_gop.c b/drivers/video/efi_gop.c
index cd2506c04b24..f4f58d9271f5 100644
--- a/drivers/video/efi_gop.c
+++ b/drivers/video/efi_gop.c
@@ -41,14 +41,14 @@ struct efi_graphics_output_protocol_mode {
 	uint32_t max_mode;
 	uint32_t mode;
 	struct efi_graphics_output_mode_info *info;
-	unsigned long size_of_info;
+	size_t size_of_info;
 	void *frame_buffer_base;
-	unsigned long frame_buffer_size;
+	size_t frame_buffer_size;
 };
 
 struct efi_graphics_output_protocol {
 	efi_status_t (EFIAPI *query_mode) (struct efi_graphics_output_protocol *This,
-			uint32_t mode_number, unsigned long *size_of_info,
+			uint32_t mode_number, size_t *size_of_info,
 			struct efi_graphics_output_mode_info **info);
 	efi_status_t (EFIAPI *set_mode) (struct efi_graphics_output_protocol *This,
 			uint32_t mode_number);
@@ -147,7 +147,7 @@ static int efi_gop_query(struct efi_gop_priv *priv)
 	struct efi_graphics_output_protocol_mode *mode;
 	struct efi_graphics_output_mode_info *info;
 	efi_status_t efiret;
-	unsigned long size = 0;
+	size_t size = 0;
 	int i;
 	struct fb_videomode *vmode;
 
@@ -180,7 +180,7 @@ static int efi_gop_fb_activate_var(struct fb_info *fb_info)
 	struct efi_gop_priv *priv = fb_info->priv;
 	struct efi_graphics_output_mode_info *info;
 	int num;
-	unsigned long size = 0;
+	size_t size = 0;
 	efi_status_t efiret;
 
 	num = simple_strtoul(fb_info->mode->name, NULL, 0);
diff --git a/efi/payload/init.c b/efi/payload/init.c
index ae8b9203737b..6a616161e884 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -51,7 +51,7 @@ void *efi_get_variable(char *name, efi_guid_t *vendor, int *var_size)
 {
 	efi_status_t efiret;
 	void *buf;
-	unsigned long size = 0;
+	size_t size = 0;
 	s16 *name16 = xstrdup_char_to_wchar(name);
 
 	efiret = RT->get_variable(name16, vendor, NULL, &size, NULL);
@@ -84,7 +84,7 @@ void *efi_get_variable(char *name, efi_guid_t *vendor, int *var_size)
 }
 
 int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
-		     void *buf, unsigned long size)
+		     void *buf, size_t size)
 {
 	efi_status_t efiret = EFI_SUCCESS;
 	s16 *name16 = xstrdup_char_to_wchar(name);
diff --git a/efi/payload/iomem.c b/efi/payload/iomem.c
index 888aa8569ebb..64f4b809e0c2 100644
--- a/efi/payload/iomem.c
+++ b/efi/payload/iomem.c
@@ -147,7 +147,7 @@ static int efi_barebox_populate_mmap(void)
 	void *mmap_buf = NULL, *desc;
 	efi_status_t efiret;
 	size_t mmap_size;
-	size_t mapkey;
+	ulong mapkey;
 	size_t descsz;
 	u32 descver;
 	int ret = 0;
diff --git a/fs/efi.c b/fs/efi.c
index 40f71ff241d3..da15c9078051 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -149,7 +149,7 @@ static int efifs_open(struct device *dev, struct file *f, const char *filename)
 	struct efifs_file *ufile;
 	wchar_t *efi_path = path_to_efi(filename);
 	struct efi_file_info *info;
-	unsigned long bufsize = 1024;
+	size_t bufsize = 1024;
 	uint64_t efimode = EFI_FILE_MODE_READ;
 	int ret;
 
@@ -205,7 +205,7 @@ static int efifs_read(struct device *_dev, struct file *f, void *buf, size_t ins
 {
 	struct efifs_file *ufile = f->private_data;
 	efi_status_t efiret;
-	unsigned long bufsize = insize;
+	size_t bufsize = insize;
 
 	efiret = ufile->entry->read(ufile->entry, &bufsize, buf);
 	if (EFI_ERROR(efiret)) {
@@ -220,7 +220,7 @@ static int efifs_write(struct device *_dev, struct file *f, const void *buf,
 {
 	struct efifs_file *ufile = f->private_data;
 	efi_status_t efiret;
-	unsigned long bufsize = insize;
+	size_t bufsize = insize;
 
 	efiret = ufile->entry->write(ufile->entry, &bufsize, (void *)buf);
 	if (EFI_ERROR(efiret)) {
@@ -249,7 +249,7 @@ static int efifs_truncate(struct device *dev, struct file *f, loff_t size)
 	struct efifs_file *ufile = f->private_data;
 	efi_status_t efiret;
 	struct efi_file_info *info;
-	unsigned long bufsize = 1024;
+	size_t bufsize = 1024;
 	int ret;
 
 	info = xzalloc(1024);
@@ -302,7 +302,7 @@ static struct dirent *efifs_readdir(struct device *dev, DIR *dir)
 {
 	struct efifs_dir *udir = container_of(dir, struct efifs_dir, dir);
 	efi_status_t efiret;
-	unsigned long bufsize = 256;
+	size_t bufsize = 256;
 	s16 buf[256];
 	struct efi_file_info *f;
 
@@ -336,7 +336,7 @@ static int efifs_stat(struct device *dev, const char *filename,
 	efi_status_t efiret;
 	struct efi_file_handle *entry;
 	struct efi_file_info *info;
-	unsigned long bufsize = 1024;
+	size_t bufsize = 1024;
 	int ret;
 
 	info = xzalloc(1024);
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index f5217ae91eda..9717a6340676 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -119,7 +119,7 @@ static int efivars_unlink(struct device *dev, const char *pathname)
 
 struct efivars_file {
 	void *buf;
-	unsigned long size;
+	size_t size;
 	efi_guid_t vendor;
 	s16 *name;
 	u32 attributes;
@@ -273,7 +273,7 @@ static int efivarfs_stat(struct device *dev, const char *filename,
 	efi_guid_t vendor;
 	s16 *name;
 	efi_status_t efiret;
-	unsigned long size = 0;
+	size_t size = 0;
 	int ret;
 
 	ret = efivarfs_parse_filename(filename, &vendor, &name);
@@ -299,7 +299,7 @@ static int efivarfs_probe(struct device *dev)
 	efi_guid_t vendor;
 	s16 name[1024];
 	char *name8;
-	unsigned long size;
+	size_t size;
 	struct efivarfs_priv *priv;
 
 	name[0] = 0;
diff --git a/include/efi.h b/include/efi.h
index 217e3d9f56ff..9015aebaa50b 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -193,12 +193,12 @@ struct efi_boot_services {
 	struct efi_table_hdr hdr;
 	efi_status_t (EFIAPI *raise_tpl)(unsigned long new_tpl);
 	void (EFIAPI *restore_tpl)(unsigned long old_tpl);
-	efi_status_t (EFIAPI *allocate_pages)(int, int, unsigned long,
+	efi_status_t (EFIAPI *allocate_pages)(int, int, size_t,
 				       efi_physical_addr_t *);
-	efi_status_t (EFIAPI *free_pages)(efi_physical_addr_t, unsigned long);
+	efi_status_t (EFIAPI *free_pages)(efi_physical_addr_t, size_t);
 	efi_status_t (EFIAPI *get_memory_map)(size_t *, struct efi_memory_desc *,
-					      size_t *, size_t *, u32 *);
-	efi_status_t (EFIAPI *allocate_pool)(int, unsigned long, void **);
+					      ulong *, size_t *, u32 *);
+	efi_status_t (EFIAPI *allocate_pool)(int, size_t, void **);
 	efi_status_t (EFIAPI *free_pool)(void *);
 #define EFI_EVT_TIMER				0x80000000
 #define EFI_EVT_RUNTIME				0x40000000
@@ -240,18 +240,18 @@ struct efi_boot_services {
 	efi_status_t (EFIAPI *install_configuration_table)(const efi_guid_t *guid, void *table);
 	efi_status_t (EFIAPI *load_image)(bool boot_policiy, efi_handle_t parent_image,
 			struct efi_device_path *file_path, void *source_buffer,
-			unsigned long source_size, efi_handle_t *image);
+			size_t source_size, efi_handle_t *image);
 	efi_status_t (EFIAPI *start_image)(efi_handle_t handle,
 			size_t *exitdata_size, u16 **exitdata);
 	efi_status_t(EFIAPI *exit)(efi_handle_t handle,  efi_status_t exit_status,
-			unsigned long exitdata_size, u16 *exitdata);
+			size_t exitdata_size, u16 *exitdata);
 	efi_status_t (EFIAPI *unload_image)(efi_handle_t handle);
 	efi_status_t (EFIAPI *exit_boot_services)(efi_handle_t, unsigned long);
 	void *get_next_monotonic_count;
 	efi_status_t (EFIAPI *stall)(unsigned long usecs);
 	efi_status_t (EFIAPI *set_watchdog_timer)(unsigned long timeout,
 						  uint64_t watchdog_code,
-						  unsigned long data_size,
+						  size_t data_size,
 						  u16 *watchdog_data);
 	efi_status_t(EFIAPI *connect_controller)(efi_handle_t controller_handle,
 			efi_handle_t *driver_image_handle,
@@ -272,22 +272,22 @@ struct efi_boot_services {
 					      efi_handle_t agent, efi_handle_t controller);
 	efi_status_t(EFIAPI *open_protocol_information)(efi_handle_t handle, const efi_guid_t *Protocol,
 			struct efi_open_protocol_information_entry **entry_buffer,
-			unsigned long *entry_count);
+			size_t *entry_count);
 	efi_status_t (EFIAPI *protocols_per_handle)(efi_handle_t handle,
 			efi_guid_t ***protocol_buffer,
-			unsigned long *protocols_buffer_count);
+			size_t *protocols_buffer_count);
 	efi_status_t (EFIAPI *locate_handle_buffer) (
 			enum efi_locate_search_type search_type,
 			const efi_guid_t *protocol, void *search_key,
-			unsigned long *no_handles, efi_handle_t **buffer);
+			size_t *no_handles, efi_handle_t **buffer);
 	efi_status_t (EFIAPI *locate_protocol)(const efi_guid_t *protocol,
 			void *registration, void **protocol_interface);
 	efi_status_t (EFIAPI *install_multiple_protocol_interfaces)(efi_handle_t *handle, ...);
 	efi_status_t (EFIAPI *uninstall_multiple_protocol_interfaces)(efi_handle_t handle, ...);
 	efi_status_t (EFIAPI *calculate_crc32)(const void *data,
-			unsigned long data_size, uint32_t *crc32);
-	void (EFIAPI *copy_mem)(void *destination, const void *source, unsigned long length);
-	void (EFIAPI *set_mem)(void *buffer, unsigned long size, uint8_t value);
+			size_t data_size, uint32_t *crc32);
+	void (EFIAPI *copy_mem)(void *destination, const void *source, size_t length);
+	void (EFIAPI *set_mem)(void *buffer, size_t size, uint8_t value);
 	void *create_event_ex;
 };
 
@@ -670,7 +670,7 @@ struct efi_system_table {
 	struct efi_simple_text_output_protocol *std_err;
 	struct efi_runtime_services *runtime;
 	struct efi_boot_services *boottime;
-	unsigned long nr_tables;
+	size_t nr_tables;
 	struct efi_config_table *tables;
 };
 
@@ -840,9 +840,9 @@ struct efi_block_io_protocol {
 	efi_status_t(EFIAPI *reset)(struct efi_block_io_protocol *this,
 			bool ExtendedVerification);
 	efi_status_t(EFIAPI *read)(struct efi_block_io_protocol *this, u32 media_id,
-			u64 lba, unsigned long buffer_size, void *buf);
+			u64 lba, size_t buffer_size, void *buf);
 	efi_status_t(EFIAPI *write)(struct efi_block_io_protocol *this, u32 media_id,
-			u64 lba, unsigned long buffer_size, void *buf);
+			u64 lba, size_t buffer_size, void *buf);
 	efi_status_t(EFIAPI *flush)(struct efi_block_io_protocol *this);
 };
 
diff --git a/include/efi/efi-device.h b/include/efi/efi-device.h
index a8fc99a0e12b..06903f48da64 100644
--- a/include/efi/efi-device.h
+++ b/include/efi/efi-device.h
@@ -66,7 +66,7 @@ int __efi_locate_handle(struct efi_boot_services *bs,
 		enum efi_locate_search_type search_type,
 		efi_guid_t *protocol,
 		void *search_key,
-		unsigned long *no_handles,
+		size_t *no_handles,
 		efi_handle_t **buffer);
 
 #endif /* __EFI_EFI_DEVICE_H */
diff --git a/include/efi/efi-payload.h b/include/efi/efi-payload.h
index 313ba7f4abc2..22cdceb71fe2 100644
--- a/include/efi/efi-payload.h
+++ b/include/efi/efi-payload.h
@@ -27,7 +27,7 @@ static inline void *efi_get_global_var(char *name, int *var_size)
 }
 
 int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
-		     void *buf, unsigned long size);
+		     void *buf, size_t size);
 int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec);
 
 void *efi_earlymem_alloc(const struct efi_system_table *sys_table, size_t *memsize);
-- 
2.39.5



