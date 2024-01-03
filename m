Delivery-date: Wed, 03 Jan 2024 19:32:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62q-002NZ6-2C
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:32:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62l-0003Yg-L3
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:32:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NRNN8xXirWR2tyYc8C5pD+KLSwNV0GLRcF4oy3clrvI=; b=0NnhqnCD6fxUFKcURO0Gwva6AC
	OUcJUTa7B57rN014IFBfPCoHa1TXq5pqRNFM4irXCH78gl14ulspTOasTEG5TUyJFFxJT1nT41NaD
	9OQ+AegReM3JTbJurmNvm8C95idR3eLnKQXsiQxOuThw/rwsu/xK2PvwLOChZMSk+ocXLtexpSXQ1
	I5fPD6agR4M5ZyF3e5SssNe0SefPSbKrbPRks7j0fwwR/XaY5MWScV1uCidJH0z3E3hzIgSpEATQg
	IfTggxFcbxTcPtyJ+70SW/QNON3FWx5d26/bOhzoivWu2U6AjIAl399801VkLyZ/ubQNH/BX3Ia5H
	fD8aU5Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61Q-00BhTj-2M;
	Wed, 03 Jan 2024 18:31:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL610-00Bh1M-0d
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-0001PT-UY; Wed, 03 Jan 2024 19:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-000Asg-HL; Wed, 03 Jan 2024 19:30:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-0w;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:34 +0100
Message-Id: <20240103181312.409668-75-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103054_543403_B591E20B 
X-CRM114-Status: GOOD (  16.51  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 074/112] efi: flesh out EFI definitions in header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a lot of function pointer members in the protocols, that were
defined as void pointers instead of properly prototyped function pointers.

Similarly, a lot of data types are defined to equivalent types that
aren't as descriptive, e.g. size_t vs ulong and s16 vs efi_char16_t.

Let's switch them over all at once. No functional change as the types
are either equivalent or were unused in the case of function pointers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clocksource/efi.c  |   4 +-
 drivers/serial/efi-stdio.c |   4 +-
 include/efi.h              | 115 ++++++++++++++++++++++---------------
 include/efi/efi-stdio.h    |   4 +-
 4 files changed, 74 insertions(+), 53 deletions(-)

diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi.c
index 11dbb6189786..1ac587a715f2 100644
--- a/drivers/clocksource/efi.c
+++ b/drivers/clocksource/efi.c
@@ -12,14 +12,14 @@
 #include <linux/err.h>
 
 static uint64_t ticks = 1;
-static void *efi_cs_evt;
+static struct efi_event *efi_cs_evt;
 
 static uint64_t efi_cs_read(void)
 {
 	return ticks;
 }
 
-static void efi_cs_inc(void *event, void *ctx)
+static void efi_cs_inc(struct efi_event *event, void *ctx)
 {
 	ticks++;
 }
diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index 235d67a303ed..92133f837838 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -79,9 +79,9 @@ static int xlate_keypress(struct efi_input_key *k)
 	return k->unicode_char & 0xff;
 }
 
-static void efi_wait_single_event(void *event)
+static void efi_wait_single_event(struct efi_event *event)
 {
-	unsigned long index;
+	size_t index;
 
 	/* wait until key is pressed */
 	BS->wait_for_event(1, &event, &index);
diff --git a/include/efi.h b/include/efi.h
index 7e8b7f0a49b8..08cb07c8b946 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -177,18 +177,20 @@ enum efi_timer_delay {
 	EFI_TIMER_RELATIVE = 2
 };
 
+struct efi_event;
+
 /*
  * EFI Boot Services table
  */
 struct efi_boot_services {
 	struct efi_table_hdr hdr;
-	void *raise_tpl;
-	void *restore_tpl;
+	efi_status_t (EFIAPI *raise_tpl)(unsigned long new_tpl);
+	void (EFIAPI *restore_tpl)(unsigned long old_tpl);
 	efi_status_t (EFIAPI *allocate_pages)(int, int, unsigned long,
 				       efi_physical_addr_t *);
 	efi_status_t (EFIAPI *free_pages)(efi_physical_addr_t, unsigned long);
-	efi_status_t (EFIAPI *get_memory_map)(unsigned long *, void *, unsigned long *,
-				       unsigned long *, u32 *);
+	efi_status_t (EFIAPI *get_memory_map)(size_t *, struct efi_memory_desc *,
+					      size_t *, size_t *, u32 *);
 	efi_status_t (EFIAPI *allocate_pool)(int, unsigned long, void **);
 	efi_status_t (EFIAPI *free_pool)(void *);
 #define EFI_EVT_TIMER				0x80000000
@@ -203,33 +205,39 @@ struct efi_boot_services {
 #define EFI_TPL_NOTIFY		16
 #define EFI_TPL_HIGH_LEVEL	31
 	efi_status_t(EFIAPI *create_event)(u32 type , unsigned long tpl,
-			void (*fn) (void *event, void *ctx),
-			void *ctx, void **event);
-	efi_status_t(EFIAPI *set_timer)(void *event, enum efi_timer_delay type, uint64_t time);
-	efi_status_t(EFIAPI *wait_for_event)(unsigned long number_of_events, void *event,
-			unsigned long *index);
-	void *signal_event;
-	efi_status_t(EFIAPI *close_event)(void *event);
-	void *check_event;
-	void *install_protocol_interface;
-	void *reinstall_protocol_interface;
-	void *uninstall_protocol_interface;
-	efi_status_t (EFIAPI *handle_protocol)(efi_handle_t, efi_guid_t *, void **);
+			void (*fn) (struct efi_event *event, void *ctx),
+			void *ctx, struct efi_event **event);
+	efi_status_t(EFIAPI *set_timer)(struct efi_event *event, enum efi_timer_delay type, uint64_t time);
+	efi_status_t(EFIAPI *wait_for_event)(size_t number_of_events, struct efi_event **event,
+			size_t *index);
+	efi_status_t (EFIAPI *signal_event)(struct efi_event *event);
+	efi_status_t(EFIAPI *close_event)(struct efi_event *event);
+#define EFI_NATIVE_INTERFACE	0x00000000
+	efi_status_t (EFIAPI *check_event)(struct efi_event *event);
+	efi_status_t (EFIAPI *install_protocol_interface)(efi_handle_t *handle, const efi_guid_t *protocol,
+			int protocol_interface_type, void *protocol_interface);
+	efi_status_t (EFIAPI *reinstall_protocol_interface)(efi_handle_t handle, const efi_guid_t *protocol,
+			void *old_interface, void *new_interface);
+	efi_status_t (EFIAPI *uninstall_protocol_interface)(efi_handle_t handle,
+			const efi_guid_t *protocol, void *protocol_interface);
+
+	efi_status_t (EFIAPI *handle_protocol)(efi_handle_t, const efi_guid_t *, void **);
 	void *__reserved;
-	void *register_protocol_notify;
+	efi_status_t (EFIAPI *register_protocol_notify)(const efi_guid_t *protocol, struct efi_event *event,
+			void **registration);
 	efi_status_t (EFIAPI *locate_handle) (enum efi_locate_search_type search_type,
-			efi_guid_t *protocol, void *search_key,
-			unsigned long *buffer_size, efi_handle_t *buffer);
-	efi_status_t (EFIAPI *locate_device_path)(efi_guid_t *protocol,
+			const efi_guid_t *protocol, void *search_key,
+			size_t *buffer_size, efi_handle_t *buffer);
+	efi_status_t (EFIAPI *locate_device_path)(const efi_guid_t *protocol,
 			struct efi_device_path **device_path, efi_handle_t *device);
-	void *install_configuration_table;
+	efi_status_t (EFIAPI *install_configuration_table)(const efi_guid_t *guid, void *table);
 	efi_status_t (EFIAPI *load_image)(bool boot_policiy, efi_handle_t parent_image,
 			struct efi_device_path *file_path, void *source_buffer,
 			unsigned long source_size, efi_handle_t *image);
 	efi_status_t (EFIAPI *start_image)(efi_handle_t handle,
-			unsigned long *exitdata_size, s16 **exitdata);
+			size_t *exitdata_size, u16 **exitdata);
 	efi_status_t(EFIAPI *exit)(efi_handle_t handle,  efi_status_t exit_status,
-			unsigned long exitdata_size, s16 *exitdata);
+			unsigned long exitdata_size, u16 *exitdata);
 	efi_status_t (EFIAPI *unload_image)(efi_handle_t handle);
 	efi_status_t (EFIAPI *exit_boot_services)(efi_handle_t, unsigned long);
 	void *get_next_monotonic_count;
@@ -237,12 +245,13 @@ struct efi_boot_services {
 	efi_status_t (EFIAPI *set_watchdog_timer)(unsigned long timeout,
 						  uint64_t watchdog_code,
 						  unsigned long data_size,
-						  s16 *watchdog_data);
+						  u16 *watchdog_data);
 	efi_status_t(EFIAPI *connect_controller)(efi_handle_t controller_handle,
 			efi_handle_t *driver_image_handle,
 			struct efi_device_path *remaining_device_path,
 			bool Recursive);
-	void *disconnect_controller;
+	efi_status_t (EFIAPI *disconnect_controller)(efi_handle_t controller_handle,
+			efi_handle_t driver_image_handle, efi_handle_t child_handle);
 #define EFI_OPEN_PROTOCOL_BY_HANDLE_PROTOCOL  0x00000001
 #define EFI_OPEN_PROTOCOL_GET_PROTOCOL        0x00000002
 #define EFI_OPEN_PROTOCOL_TEST_PROTOCOL       0x00000004
@@ -264,12 +273,14 @@ struct efi_boot_services {
 			enum efi_locate_search_type search_type,
 			const efi_guid_t *protocol, void *search_key,
 			unsigned long *no_handles, efi_handle_t **buffer);
-	void *locate_protocol;
-	void *install_multiple_protocol_interfaces;
-	void *uninstall_multiple_protocol_interfaces;
-	void *calculate_crc32;
-	void *copy_mem;
-	void *set_mem;
+	efi_status_t (EFIAPI *locate_protocol)(const efi_guid_t *protocol,
+			void *registration, void **protocol_interface);
+	efi_status_t (EFIAPI *install_multiple_protocol_interfaces)(efi_handle_t *handle, ...);
+	efi_status_t (EFIAPI *uninstall_multiple_protocol_interfaces)(efi_handle_t handle, ...);
+	efi_status_t (EFIAPI *calculate_crc32)(const void *data,
+			unsigned long data_size, uint32_t *crc32);
+	void (EFIAPI *copy_mem)(void *destination, const void *source, unsigned long length);
+	void (EFIAPI *set_mem)(void *buffer, unsigned long size, uint8_t value);
 	void *create_event_ex;
 };
 
@@ -281,7 +292,8 @@ extern struct efi_boot_services *BS;
 enum efi_reset_type {
 	EFI_RESET_COLD = 0,
 	EFI_RESET_WARM = 1,
-	EFI_RESET_SHUTDOWN = 2
+	EFI_RESET_SHUTDOWN = 2,
+	EFI_RESET_PLATFORM_SPECIFIC = 3,
 };
 
 /*
@@ -292,19 +304,24 @@ enum efi_reset_type {
 
 struct efi_runtime_services {
 	struct efi_table_hdr hdr;
-	void *get_time;
-	void *set_time;
-	void *get_wakeup_time;
-	void *set_wakeup_time;
-	void *set_virtual_address_map;
-	void *convert_pointer;
-	efi_status_t (EFIAPI *get_variable)(s16 *variable_name, efi_guid_t *vendor,
+	efi_status_t (EFIAPI *get_time)(struct efi_time *time,
+					struct efi_time_cap *capabilities);
+	efi_status_t (EFIAPI *set_time)(struct efi_time *time);
+	efi_status_t (EFIAPI *get_wakeup_time)(char *enabled, char *pending,
+				       struct efi_time *time);
+	efi_status_t (EFIAPI *set_wakeup_time)(char enabled, struct efi_time *time);
+	efi_status_t (EFIAPI *set_virtual_address_map)(size_t memory_map_size,
+				       size_t descriptor_size,
+				       uint32_t descriptor_version,
+				       struct efi_memory_desc *virtmap);
+	efi_status_t (*convert_pointer)(unsigned long dbg, void **address);
+	efi_status_t (EFIAPI *get_variable)(efi_char16_t *variable_name, const efi_guid_t *vendor,
 			u32 *Attributes, unsigned long *data_size, void *data);
 	efi_status_t (EFIAPI *get_next_variable)(unsigned long *variable_name_size,
 			s16 *variable_name, efi_guid_t *vendor);
 	efi_status_t (EFIAPI *set_variable)(s16 *variable_name, efi_guid_t *vendor,
 			u32 Attributes, unsigned long data_size, void *data);
-	void *get_next_high_mono_count;
+	efi_status_t (EFIAPI *get_next_high_mono_count)(uint32_t *high_count);
 	void (EFIAPI *reset_system)(enum efi_reset_type reset_type, efi_status_t reset_status,
 			unsigned long data_size, void *reset_data);
 	void *update_capsule;
@@ -607,14 +624,14 @@ struct efi_config_table {
 
 struct efi_system_table {
 	struct efi_table_hdr hdr;
-	unsigned long fw_vendor;	/* physical addr of CHAR16 vendor string */
+	efi_char16_t *fw_vendor;	/* physical addr of CHAR16 vendor string */
 	u32 fw_revision;
 	efi_handle_t con_in_handle;
 	struct efi_simple_text_input_protocol *con_in;
 	efi_handle_t con_out_handle;
 	struct efi_simple_text_output_protocol *con_out;
 	efi_handle_t stderr_handle;
-	unsigned long std_err;
+	struct efi_simple_text_output_protocol *std_err;
 	struct efi_runtime_services *runtime;
 	struct efi_boot_services *boottime;
 	unsigned long nr_tables;
@@ -634,7 +651,7 @@ struct efi_loaded_image {
 	__aligned_u64 image_size;
 	unsigned int image_code_type;
 	unsigned int image_data_type;
-	unsigned long unload;
+	efi_status_t (EFIAPI *unload)(efi_handle_t image_handle);
 };
 
 __attribute__((noreturn)) void efi_main(efi_handle_t, struct efi_system_table *);
@@ -700,9 +717,12 @@ struct simple_text_output_mode {
 };
 
 struct efi_simple_text_output_protocol {
-	void *reset;
-	efi_status_t (EFIAPI *output_string)(void *, void *);
-	void *test_string;
+	efi_status_t (EFIAPI *reset)(
+			struct efi_simple_text_output_protocol *this,
+			char extended_verification);
+	efi_status_t (EFIAPI *output_string)(struct efi_simple_text_output_protocol *this, const efi_char16_t *str);
+	efi_status_t (EFIAPI *test_string)(struct efi_simple_text_output_protocol *this,
+			const efi_char16_t *str);
 
 	efi_status_t(EFIAPI *query_mode)(struct efi_simple_text_output_protocol *this,
 			unsigned long mode_number, unsigned long *columns, unsigned long *rows);
@@ -713,7 +733,8 @@ struct efi_simple_text_output_protocol {
 	efi_status_t(EFIAPI *clear_screen) (struct efi_simple_text_output_protocol *this);
 	efi_status_t(EFIAPI *set_cursor_position) (struct efi_simple_text_output_protocol *this,
 			unsigned long column, unsigned long row);
-	efi_status_t(EFIAPI *enable_cursor)(void *, bool enable);
+	efi_status_t(EFIAPI *enable_cursor)(struct efi_simple_text_output_protocol *this,
+			bool enable);
 	struct simple_text_output_mode *mode;
 };
 
diff --git a/include/efi/efi-stdio.h b/include/efi/efi-stdio.h
index 623b42c10f19..0b3a184a78a8 100644
--- a/include/efi/efi-stdio.h
+++ b/include/efi/efi-stdio.h
@@ -18,7 +18,7 @@ struct efi_key_state {
 
 struct efi_input_key {
 	u16 scan_code;
-	s16 unicode_char;
+	efi_char16_t unicode_char;
 };
 
 struct efi_key_data {
@@ -55,7 +55,7 @@ typedef efi_status_t (EFIAPI *efi_unregister_keystroke_notify)(
 struct efi_simple_text_input_ex_protocol {
 	efi_input_reset_ex reset;
 	efi_input_read_key_ex read_key_stroke_ex;
-	void *wait_for_key_ex;
+	struct efi_event *wait_for_key_ex;
 	efi_set_state set_state;
 	efi_register_keystroke_notify register_key_notify;
 	efi_unregister_keystroke_notify unregister_key_notify;
-- 
2.39.2



