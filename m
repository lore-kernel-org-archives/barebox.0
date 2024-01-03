Delivery-date: Wed, 03 Jan 2024 19:36:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66o-002OGj-0v
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66h-0008CR-Ft
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3y03nQDD1KrXFVafwK6ehEZVaoqAXh78xHBKFEpMbAQ=; b=ChKFLmQb4vps+2bNzX4klpcVrI
	gPg3yQyWDA3yv69jnr0bejnW9bE6PdElf803Q09Wbw4fZfva5Wup6IYKF5UVZpEXk2ZaPpinLzah9
	NCBjApNBItSbmdu5jkXMouAn4bd6vEPQK9j/y4HMdj+5nvwqVeuPIRnVP56IuhUPoSfIF8oJtPNnC
	HM4SXT6ZDpz+pW2tRnnwtRzQz8LItQUAjXxl7e/AXDjYNwX4pVPhF9gWLMurYAixf6srvsQaPSkX+
	2bZsQbmWCvR2dK2yu2Aw8bqNU3t0T0hBVTCOOT3MRP3ykOv6Xod49fby3+X1D848rKUkaQujbOo8W
	YzDlYrQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL651-00Blmg-2F;
	Wed, 03 Jan 2024 18:35:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61O-00BhSn-1K
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3y03nQDD1KrXFVafwK6ehEZVaoqAXh78xHBKFEpMbAQ=; b=G0i6zJ+4D7s5nAfYhY3Ffejexv
	GJgGkMi0sEvxMIbRezUmX4S04BmQBwl1CxOI0sNwG7XInPesgLU4koFWgASwHRtZlNrQGzbS4nsZY
	VIsDFNjwDbrCVm474DxASnu4PJcW1ljgp3uzWPuU2QcrWfCutg2rYJLTZ+YbS/9dA9En1vKz0idtk
	/cmWD9wuv+AXRwjALAbtO+hm2ewplGj5M0IY6aOXSadLlPuEC28eWiDjzcYgb+42i/uDslrVNhVnl
	i++LbL8HIaa1U6WqH7xeHrzhS/LBijeGXgcyMIUQ1ufrNOtou6qQ8RwVwYqku37StmLvSeURLBCHA
	1SnFDigg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61H-00DIm4-1H
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-0001Wd-98; Wed, 03 Jan 2024 19:30:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-000Av4-Ro; Wed, 03 Jan 2024 19:30:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-1X;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:38 +0100
Message-Id: <20240103181312.409668-79-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183112_267667_31C9C9DD 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 078/112] efi: fs: flesh out file system definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A number of members aren't prototyped or are using compatible, but less
descriptive. In preparation for adding EFI loader as another user of
these definitions, flesh them out.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi.h | 79 ++++++++++++++++++++++++++++++++++++++++++---------
 1 file changed, 65 insertions(+), 14 deletions(-)

diff --git a/include/efi.h b/include/efi.h
index e0080552cf53..80d2f784847b 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -303,6 +303,8 @@ enum efi_reset_type {
 #define EFI_RUNTIME_SERVICES_SIGNATURE ((u64)0x5652453544e5552ULL)
 #define EFI_RUNTIME_SERVICES_REVISION  0x00010000
 
+struct efi_capsule_header;
+
 struct efi_runtime_services {
 	struct efi_table_hdr hdr;
 	efi_status_t (EFIAPI *get_time)(struct efi_time *time,
@@ -317,16 +319,21 @@ struct efi_runtime_services {
 				       struct efi_memory_desc *virtmap);
 	efi_status_t (*convert_pointer)(unsigned long dbg, void **address);
 	efi_status_t (EFIAPI *get_variable)(efi_char16_t *variable_name, const efi_guid_t *vendor,
-			u32 *Attributes, unsigned long *data_size, void *data);
-	efi_status_t (EFIAPI *get_next_variable)(unsigned long *variable_name_size,
-			s16 *variable_name, efi_guid_t *vendor);
-	efi_status_t (EFIAPI *set_variable)(s16 *variable_name, efi_guid_t *vendor,
-			u32 Attributes, unsigned long data_size, void *data);
+			u32 *Attributes, size_t *data_size, void *data);
+	efi_status_t (EFIAPI *get_next_variable)(size_t *variable_name_size,
+			efi_char16_t *variable_name, efi_guid_t *vendor);
+	efi_status_t (EFIAPI *set_variable)(efi_char16_t *variable_name, const efi_guid_t *vendor,
+			u32 Attributes, size_t data_size, const void *data);
 	efi_status_t (EFIAPI *get_next_high_mono_count)(uint32_t *high_count);
 	void (EFIAPI *reset_system)(enum efi_reset_type reset_type, efi_status_t reset_status,
-			unsigned long data_size, void *reset_data);
-	void *update_capsule;
-	void *query_capsule_caps;
+			size_t data_size, void *reset_data);
+	efi_status_t (EFIAPI *update_capsule)(struct efi_capsule_header **capsule_header_array,
+					      size_t capsule_count,
+					      u64 scatter_gather_list);
+	efi_status_t (EFIAPI *query_capsule_caps)(struct efi_capsule_header **capsule_header_array,
+						  size_t capsule_count,
+						  u64 *maximum_capsule_size,
+						  u32 *reset_type);
 	void *query_variable_info;
 };
 
@@ -688,29 +695,58 @@ struct efi_loaded_image {
 #define EFI_FILE_ARCHIVE        0x0000000000000020
 #define EFI_FILE_VALID_ATTR     0x0000000000000037
 
+struct efi_file_io_token {
+	struct efi_event *event;
+	efi_status_t status;
+	size_t buffer_size;
+	void *buffer;
+};
+
 #define EFI_FILE_HANDLE_REVISION         0x00010000
+#define EFI_FILE_HANDLE_REVISION2        0x00020000
+#define EFI_FILE_HANDLE_LATEST_REVISION  EFI_FILE_PROTOCOL_REVISION2
 struct efi_file_handle {
 	uint64_t Revision;
 	efi_status_t(EFIAPI *open)(struct efi_file_handle *File,
-			struct efi_file_handle **NewHandle, s16 *FileName,
+			struct efi_file_handle **NewHandle, efi_char16_t *FileName,
 			uint64_t OpenMode, uint64_t Attributes);
 	efi_status_t(EFIAPI *close)(struct efi_file_handle *File);
 	efi_status_t(EFIAPI *delete)(struct efi_file_handle *File);
-	efi_status_t(EFIAPI *read)(struct efi_file_handle *File, unsigned long *BufferSize,
+	efi_status_t(EFIAPI *read)(struct efi_file_handle *File, size_t *BufferSize,
 			void *Buffer);
 	efi_status_t(EFIAPI *write)(struct efi_file_handle *File,
-			unsigned long *BufferSize, void *Buffer);
+			size_t *BufferSize, void *Buffer);
 	efi_status_t(EFIAPI *get_position)(struct efi_file_handle *File,
 			uint64_t *Position);
 	efi_status_t(EFIAPI *set_position)(struct efi_file_handle *File,
 			uint64_t Position);
 	efi_status_t(EFIAPI *get_info)(struct efi_file_handle *File,
-			efi_guid_t *InformationType, unsigned long *BufferSize,
+			const efi_guid_t *InformationType, size_t *BufferSize,
 			void *Buffer);
 	efi_status_t(EFIAPI *set_info)(struct efi_file_handle *File,
-			efi_guid_t *InformationType, unsigned long BufferSize,
+			const efi_guid_t *InformationType, size_t BufferSize,
 			void *Buffer);
 	efi_status_t(EFIAPI *flush)(struct efi_file_handle *File);
+	efi_status_t (EFIAPI *open_ex)(struct efi_file_handle *this,
+			struct efi_file_handle **new_handle,
+			u16 *file_name, u64 open_mode, u64 attributes,
+			struct efi_file_io_token *token);
+	efi_status_t (EFIAPI *read_ex)(struct efi_file_handle *this,
+			struct efi_file_io_token *token);
+	efi_status_t (EFIAPI *write_ex)(struct efi_file_handle *this,
+			struct efi_file_io_token *token);
+	efi_status_t (EFIAPI *flush_ex)(struct efi_file_handle *this,
+			struct efi_file_io_token *token);
+};
+
+#define EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_REVISION 0x00010000
+
+struct efi_load_file_protocol {
+	efi_status_t (EFIAPI *load_file)(struct efi_load_file_protocol *this,
+					 struct efi_device_path *file_path,
+					 bool boot_policy,
+					 size_t *buffer_size,
+					 void *buffer);
 };
 
 #define EFI_FILE_IO_INTERFACE_REVISION   0x00010000
@@ -722,6 +758,12 @@ struct efi_file_io_interface {
 			struct efi_file_handle **Root);
 };
 
+struct efi_simple_file_system_protocol {
+	u64 Revision;
+	efi_status_t (EFIAPI *open_volume)(struct efi_simple_file_system_protocol *this,
+			struct efi_file_handle **root);
+};
+
 struct efi_file_info {
 	uint64_t Size;
 	uint64_t FileSize;
@@ -730,7 +772,16 @@ struct efi_file_info {
 	struct efi_time LastAccessTime;
 	struct efi_time ModificationTime;
 	uint64_t Attribute;
-	s16 FileName[1];
+	efi_char16_t FileName[];
+};
+
+struct efi_file_system_info {
+	u64 size;
+	u8 read_only;
+	u64 volume_size;
+	u64 free_space;
+	u32 block_size;
+	efi_char16_t volume_label[];
 };
 
 __attribute__((noreturn)) void efi_main(efi_handle_t, struct efi_system_table *);
-- 
2.39.2



