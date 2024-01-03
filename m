Delivery-date: Wed, 03 Jan 2024 19:34:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL64N-002Nrh-1t
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:34:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL64F-0005JJ-HV
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:34:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dXSGegNd+ptGfxZ2VlD6Z+da+N+ElOEHyFfsolvSNjQ=; b=N7/Ag3hMq9reQx4ifXi73YnaxJ
	VuuQ+IYu4kg9hGET9YHXG93mSpfFCxyzsNPmqEuspps54/HqI0qadcju/agGszR3OJ1XqmZ47/wiq
	YueToM39MJScHdzrBwn7o2tS3K5SNt7Nlb//nBw0iwO2aS2teN1PXYHLW/H1rgOZT1epGnqNkhiA6
	enIlgtMZiLb3D6PccrRtCTnnBt570MpVkQfgNL0abaHpzGTgKAr7Ja6x1yHalAks9HMiUVwhp2dfY
	YJTHVdkI8XW0xu9KZKjlujgGaAmXejELShJOUyqq+KuOfk/42UcycP1vC7BEHqjfaxRTac7eiaULL
	/ZHTtfSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL62U-00BinO-0G;
	Wed, 03 Jan 2024 18:32:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61G-00BhK3-1P
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dXSGegNd+ptGfxZ2VlD6Z+da+N+ElOEHyFfsolvSNjQ=; b=LXepcKAeMWvhf/FL1K5hrhvGgR
	b7BBUKg3bgJ60DLM1OS3mbMLF/aDDa9V9hEO3hfnIPRNBrjh+z8HyGgAVWNRBQLLe4NwPz3aU08o1
	1U7EtGzczrr2CmfKkg9jKvWKAFEadDmc5Dh0zS2MCNwlOtdUTcsw2D+y0EWl3udnFhs29kHrlYfOB
	Yq0OEkvIfyOgGTRLN5D/H62Uv5a7gkDiVmSOp3Ej35uOJErEoAB5Oehlz7QG+rIt+kjd3xlHmSi4p
	mLO4WUbg6fY9qAjUgTZJN39OQUdGNZhG21Okp+ZH4L7KrtMDbUCeAF2PLgRboN0KPxPEsBlJPyWQG
	4IG5OFeg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL617-005eBv-0v
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-0001hL-U3; Wed, 03 Jan 2024 19:30:57 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-000Axp-HF; Wed, 03 Jan 2024 19:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-1N;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:37 +0100
Message-Id: <20240103181312.409668-78-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183101_452269_250A819F 
X-CRM114-Status: UNSURE (   9.94  )
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
Subject: [PATCH 077/112] fs: efi: move definitions into header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EFI loader support will require access to these same definitions, so
move them into a header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/efi.c      | 59 ---------------------------------------------------
 include/efi.h | 59 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 59 insertions(+), 59 deletions(-)

diff --git a/fs/efi.c b/fs/efi.c
index 0cfd5a3aebf6..11073e9961c4 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -32,65 +32,6 @@
 #include <efi/efi-device.h>
 #include <linux/stddef.h>
 
-/* Open modes */
-#define EFI_FILE_MODE_READ      0x0000000000000001
-#define EFI_FILE_MODE_WRITE     0x0000000000000002
-#define EFI_FILE_MODE_CREATE    0x8000000000000000
-
-/* File attributes */
-#define EFI_FILE_READ_ONLY      0x0000000000000001
-#define EFI_FILE_HIDDEN         0x0000000000000002
-#define EFI_FILE_SYSTEM         0x0000000000000004
-#define EFI_FILE_RESERVIED      0x0000000000000008
-#define EFI_FILE_DIRECTORY      0x0000000000000010
-#define EFI_FILE_ARCHIVE        0x0000000000000020
-#define EFI_FILE_VALID_ATTR     0x0000000000000037
-
-#define EFI_FILE_HANDLE_REVISION         0x00010000
-struct efi_file_handle {
-	uint64_t Revision;
-	efi_status_t(EFIAPI *open)(struct efi_file_handle *File,
-			struct efi_file_handle **NewHandle, s16 *FileName,
-			uint64_t OpenMode, uint64_t Attributes);
-	efi_status_t(EFIAPI *close)(struct efi_file_handle *File);
-	efi_status_t(EFIAPI *delete)(struct efi_file_handle *File);
-	efi_status_t(EFIAPI *read)(struct efi_file_handle *File, unsigned long *BufferSize,
-			void *Buffer);
-	efi_status_t(EFIAPI *write)(struct efi_file_handle *File,
-			unsigned long *BufferSize, void *Buffer);
-	efi_status_t(EFIAPI *get_position)(struct efi_file_handle *File,
-			uint64_t *Position);
-	efi_status_t(EFIAPI *set_position)(struct efi_file_handle *File,
-			uint64_t Position);
-	efi_status_t(EFIAPI *get_info)(struct efi_file_handle *File,
-			efi_guid_t *InformationType, unsigned long *BufferSize,
-			void *Buffer);
-	efi_status_t(EFIAPI *set_info)(struct efi_file_handle *File,
-			efi_guid_t *InformationType, unsigned long BufferSize,
-			void *Buffer);
-	efi_status_t(EFIAPI *flush)(struct efi_file_handle *File);
-};
-
-#define EFI_FILE_IO_INTERFACE_REVISION   0x00010000
-
-struct efi_file_io_interface {
-	uint64_t Revision;
-	efi_status_t(EFIAPI *open_volume)(
-			struct efi_file_io_interface *This,
-			struct efi_file_handle **Root);
-};
-
-struct efi_file_info {
-	uint64_t Size;
-	uint64_t FileSize;
-	uint64_t PhysicalSize;
-	struct efi_time CreateTime;
-	struct efi_time LastAccessTime;
-	struct efi_time ModificationTime;
-	uint64_t Attribute;
-	s16 FileName[1];
-};
-
 struct efifs_priv {
 	struct efi_file_handle *root_dir;
 	struct efi_file_io_interface *protocol;
diff --git a/include/efi.h b/include/efi.h
index a73c96ef3a82..e0080552cf53 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -674,6 +674,65 @@ struct efi_loaded_image {
 	efi_status_t (EFIAPI *unload)(efi_handle_t image_handle);
 };
 
+/* Open modes */
+#define EFI_FILE_MODE_READ      0x0000000000000001
+#define EFI_FILE_MODE_WRITE     0x0000000000000002
+#define EFI_FILE_MODE_CREATE    0x8000000000000000
+
+/* File attributes */
+#define EFI_FILE_READ_ONLY      0x0000000000000001
+#define EFI_FILE_HIDDEN         0x0000000000000002
+#define EFI_FILE_SYSTEM         0x0000000000000004
+#define EFI_FILE_RESERVIED      0x0000000000000008
+#define EFI_FILE_DIRECTORY      0x0000000000000010
+#define EFI_FILE_ARCHIVE        0x0000000000000020
+#define EFI_FILE_VALID_ATTR     0x0000000000000037
+
+#define EFI_FILE_HANDLE_REVISION         0x00010000
+struct efi_file_handle {
+	uint64_t Revision;
+	efi_status_t(EFIAPI *open)(struct efi_file_handle *File,
+			struct efi_file_handle **NewHandle, s16 *FileName,
+			uint64_t OpenMode, uint64_t Attributes);
+	efi_status_t(EFIAPI *close)(struct efi_file_handle *File);
+	efi_status_t(EFIAPI *delete)(struct efi_file_handle *File);
+	efi_status_t(EFIAPI *read)(struct efi_file_handle *File, unsigned long *BufferSize,
+			void *Buffer);
+	efi_status_t(EFIAPI *write)(struct efi_file_handle *File,
+			unsigned long *BufferSize, void *Buffer);
+	efi_status_t(EFIAPI *get_position)(struct efi_file_handle *File,
+			uint64_t *Position);
+	efi_status_t(EFIAPI *set_position)(struct efi_file_handle *File,
+			uint64_t Position);
+	efi_status_t(EFIAPI *get_info)(struct efi_file_handle *File,
+			efi_guid_t *InformationType, unsigned long *BufferSize,
+			void *Buffer);
+	efi_status_t(EFIAPI *set_info)(struct efi_file_handle *File,
+			efi_guid_t *InformationType, unsigned long BufferSize,
+			void *Buffer);
+	efi_status_t(EFIAPI *flush)(struct efi_file_handle *File);
+};
+
+#define EFI_FILE_IO_INTERFACE_REVISION   0x00010000
+
+struct efi_file_io_interface {
+	uint64_t Revision;
+	efi_status_t(EFIAPI *open_volume)(
+			struct efi_file_io_interface *This,
+			struct efi_file_handle **Root);
+};
+
+struct efi_file_info {
+	uint64_t Size;
+	uint64_t FileSize;
+	uint64_t PhysicalSize;
+	struct efi_time CreateTime;
+	struct efi_time LastAccessTime;
+	struct efi_time ModificationTime;
+	uint64_t Attribute;
+	s16 FileName[1];
+};
+
 __attribute__((noreturn)) void efi_main(efi_handle_t, struct efi_system_table *);
 
 /*
-- 
2.39.2



