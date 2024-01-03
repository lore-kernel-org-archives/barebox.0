Delivery-date: Wed, 03 Jan 2024 19:37:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL67E-002OMz-1L
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:37:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL67A-0000J8-4o
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:37:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eXa+ROx7BOJ4e9mB5ySBIK/1AGL53I12xbY5plDqSYA=; b=iDkLRsJqu8GH12+E2F8QOavSHj
	eq9sUGKDHawq9D5EceodV9q5TpqRaSSE9JBAy3KHni4qRBuinnpF59jGCxT0vOGuYOxpHZnbkxhWV
	Up9ZMhwPmue7uySO4hN4/Y3gfmEwdCwsrj8RxipVWgE6r834/F0T3i21pKshAfTi2SZlAjJ2xZGUy
	WFw0TybIZKf3rJXyJr2wXq6z2M29tRRTjV1LAxuYOh2IUsGRw2WWCxG+JjXQZgbGj0Nt9MMXZoHA7
	lxXz9hyQ6ycFVV93La9kdARepddTKp+VTyuC+5TOirThWdkUC/Az3n3ZQKfRD/MKi9SaknJWgeXoR
	8svozWpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL65V-00BmLh-0P;
	Wed, 03 Jan 2024 18:35:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61T-00BhXq-1d
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=eXa+ROx7BOJ4e9mB5ySBIK/1AGL53I12xbY5plDqSYA=; b=S0fZUxdeNqFXEVBKG7sugEUNrR
	r5YMg0PU4DgjVpaPvKPvE/lO9kDgoaLfrtylAzKQZm838QkTIQjDyI96bZBCL8rBAi2k/LOV4ChXW
	Ot4RVWG80vOjA36y4rv6Bm0SWzeebPFvzoox7w9FNW7eRkNUANGrggGQt0tmMrKblNUHTy+RqHvBn
	ncdItMIehkeaqUPzle2uoe9m1WKL0KIlAjLupgdsKuOmXPzndaGHMVPkjmQRU4w3sfD/t7b98BPLK
	sCb2skL+YNUdh8RXMM/oheLirW2aNJvNCGNkz2hwHkOoh9R3B/mcxNbt7XdQWPGwd/gIwSbH8M4jl
	7B9ltv0Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61I-00DIlt-BK
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001V5-OY; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-000AuY-Bm; Wed, 03 Jan 2024 19:30:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-39;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:27 +0100
Message-Id: <20240103181312.409668-68-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183113_797091_3D2F15B2 
X-CRM114-Status: UNSURE (   8.79  )
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
Subject: [PATCH 067/112] efi: block: move definitions into header file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We will need these definitions for the EFI loader as well, so move them
into a header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/block/efi-block-io.c | 27 ---------------------------
 include/efi.h                | 27 +++++++++++++++++++++++++++
 2 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index 810b6da32d55..876b46c2d7a7 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -19,33 +19,6 @@
 #define EFI_BLOCK_IO_PROTOCOL_REVISION2 0x00020001
 #define EFI_BLOCK_IO_PROTOCOL_REVISION3 ((2<<16) | (31))
 
-struct efi_block_io_media{
-	u32 media_id;
-	bool removable_media;
-	bool media_present;
-	bool logical_partition;
-	bool read_only;
-	bool write_caching;
-	u32 block_size;
-	u32 io_align;
-	sector_t last_block;
-	u64 lowest_aligned_lba; /* added in Revision 2 */
-	u32 logical_blocks_per_physical_block; /* added in Revision 2 */
-	u32 optimal_transfer_length_granularity; /* added in Revision 3 */
-};
-
-struct efi_block_io_protocol {
-	u64 revision;
-	struct efi_block_io_media *media;
-	efi_status_t(EFIAPI *reset)(struct efi_block_io_protocol *this,
-			bool ExtendedVerification);
-	efi_status_t(EFIAPI *read)(struct efi_block_io_protocol *this, u32 media_id,
-			u64 lba, unsigned long buffer_size, void *buf);
-	efi_status_t(EFIAPI *write)(struct efi_block_io_protocol *this, u32 media_id,
-			u64 lba, unsigned long buffer_size, void *buf);
-	efi_status_t(EFIAPI *flush)(struct efi_block_io_protocol *this);
-};
-
 struct efi_bio_priv {
 	struct efi_block_io_protocol *protocol;
 	struct device *dev;
diff --git a/include/efi.h b/include/efi.h
index 18583bf62594..2e34c6be068a 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -655,6 +655,33 @@ __attribute__((noreturn)) void efi_main(efi_handle_t, struct efi_system_table *)
  */
 #define EFI_VARIABLE_GUID_LEN 36
 
+struct efi_block_io_media{
+	u32 media_id;
+	bool removable_media;
+	bool media_present;
+	bool logical_partition;
+	bool read_only;
+	bool write_caching;
+	u32 block_size;
+	u32 io_align;
+	sector_t last_block;
+	u64 lowest_aligned_lba; /* added in Revision 2 */
+	u32 logical_blocks_per_physical_block; /* added in Revision 2 */
+	u32 optimal_transfer_length_granularity; /* added in Revision 3 */
+};
+
+struct efi_block_io_protocol {
+	u64 revision;
+	struct efi_block_io_media *media;
+	efi_status_t(EFIAPI *reset)(struct efi_block_io_protocol *this,
+			bool ExtendedVerification);
+	efi_status_t(EFIAPI *read)(struct efi_block_io_protocol *this, u32 media_id,
+			u64 lba, unsigned long buffer_size, void *buf);
+	efi_status_t(EFIAPI *write)(struct efi_block_io_protocol *this, u32 media_id,
+			u64 lba, unsigned long buffer_size, void *buf);
+	efi_status_t(EFIAPI *flush)(struct efi_block_io_protocol *this);
+};
+
 struct simple_text_output_mode {
 	s32 max_mode;
 	s32 mode;
-- 
2.39.2



