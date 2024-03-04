Delivery-date: Mon, 04 Mar 2024 20:09:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDgc-008dc6-2X
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:09:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDgb-0004DQ-BK
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:09:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3y03nQDD1KrXFVafwK6ehEZVaoqAXh78xHBKFEpMbAQ=; b=Gw3c4VdZfUtxz8Ei6g18XxTYWx
	Buq3vpK82VVJs/dQ6OHUAQaD8/KJ4JMugETECxsIDXEJywTS6KVnslEZffy/om7vYwAKINlXwNZ75
	ixO5nq93is5Vf4gm7UvSrafBuK0mMT2DBDU8og+Bkk95Oa2m03lAgKljgN3jD4NG6LN8p3iomltd+
	HcCEtgXnJ+Z7rbOu/pBO09d2o9y9fRUeSTZGc8JFYs6z0LqUV4RilFDAFnd2YX3+GVFmi9+XQPwkd
	MEAnTpDqOIxaWhk3+PahEwyX4TsSTgjm4RNGQstTdnyI1uEcKGX6jBOjvrFmlwnE9i4BCW+xYhXPg
	U35cRwtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDg0-0000000AMEe-3ffa;
	Mon, 04 Mar 2024 19:08:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaY-0000000AIYT-1ubh
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3y03nQDD1KrXFVafwK6ehEZVaoqAXh78xHBKFEpMbAQ=; b=MwWZk50bITKRVegPs7sR0N9F3U
	G/P2DGb1zcgyncvEla/k61Yg3u7yqhnbl8EWtKJHQdIvj7MqpuXdrUQ9LoRBhq6MaYlIt1wFrAYoP
	UUT8uE3kPLDxmM19gmtfJOap9eHrf+j6TG1s+g1/+7gjxfhqUCnKXwO2gdFCK6FV+rchi1R33IVUh
	SV6AQeuhscrZYcv0Kr4d4xX+/6jtGe0FBUXeegQuQGE5LYru2KefcpwHfMmLj06KZFGdadTiA9McE
	4i2LAIYk9iXCnXRxCGIFvC9gqs+JXGZ5cHjm844z92Osr9SKj+mLWw6ix8CNZ+1CbHlHlDkP2bTKn
	xnHsaM/w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaR-000000051vb-3YXA
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaJ-0006IL-5v; Mon, 04 Mar 2024 20:02:47 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-004PMT-LD; Mon, 04 Mar 2024 20:02:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYM-00Ed9V-1p;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:03 +0100
Message-Id: <20240304190038.3486881-79-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190256_035163_8F676462 
X-CRM114-Status: GOOD (  10.97  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 078/113] efi: fs: flesh out file system definitions
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



