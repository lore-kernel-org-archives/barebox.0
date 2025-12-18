Delivery-date: Thu, 18 Dec 2025 12:13:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBwx-00Co0x-32
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:13:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBwx-0005nw-5B
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:13:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vLKrbQXNNchxPODQuGRLS7MgTrB+QQnxjaHxb4yL9os=; b=UswT+XNMmdHzacXbCoZ0RIKH2N
	YU460wcOXjhA8EjiFdEAVsBbaWUAj8uXJ7nsudPtq5ibMIKf5PQAGdOM1CCXv/beU4SOJIEnD87bd
	rhGQinmORj7Q4wgQ/a74khecmKKgssoTLTSxBa8WpzHHuxTn/2ktXFJ0pdI2s+1R5RWyYQjdP6+WB
	Jo1A42QHhMvuQDOjVXgacb0Xc2mSXOUnL0/aFftdeg/yrixQQnflAzqp3aZAeTJ2n/RwBgbHAGcRG
	gKSfSuo74GiUaZFC6+hrxL06WK8f2Iu6DVPP4SibWwDc9HJ5strzgkDO2dIfEDg6cfr/OYdbb0g3t
	CvCY5aJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBwC-00000008IK5-3wuo;
	Thu, 18 Dec 2025 11:12:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBw7-00000008IG4-2hOL
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:12:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0005N3-CI; Thu, 18 Dec 2025 12:12:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-006GgH-0a;
	Thu, 18 Dec 2025 12:12:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-0M6T;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:22 +0100
Message-ID: <20251218111242.1527495-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_031247_734543_96A06732 
X-CRM114-Status: GOOD (  11.25  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 02/54] efi: loader: switch over event/memory key type to efi_uintn_t
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current unsigned long type has the same size, but switching to
efi_uintn_t makes some code we are going to import from U-Boot easier to
diff.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/services.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/include/efi/services.h b/include/efi/services.h
index eaeaf1a55ee8..c0dbac8743cc 100644
--- a/include/efi/services.h
+++ b/include/efi/services.h
@@ -44,13 +44,13 @@ struct efi_memory_desc;
  */
 struct efi_boot_services {
 	struct efi_table_hdr hdr;
-	efi_status_t (EFIAPI *raise_tpl)(unsigned long new_tpl);
-	void (EFIAPI *restore_tpl)(unsigned long old_tpl);
+	efi_status_t (EFIAPI *raise_tpl)(efi_uintn_t new_tpl);
+	void (EFIAPI *restore_tpl)(efi_uintn_t old_tpl);
 	efi_status_t (EFIAPI *allocate_pages)(int, int, size_t,
 				       efi_physical_addr_t *);
 	efi_status_t (EFIAPI *free_pages)(efi_physical_addr_t, size_t);
 	efi_status_t (EFIAPI *get_memory_map)(size_t *, struct efi_memory_desc *,
-					      ulong *, size_t *, u32 *);
+					      efi_uintn_t *, size_t *, u32 *);
 	efi_status_t (EFIAPI *allocate_pool)(int, size_t, void **);
 	efi_status_t (EFIAPI *free_pool)(void *);
 #define EFI_EVT_TIMER				0x80000000
@@ -64,7 +64,7 @@ struct efi_boot_services {
 #define EFI_TPL_CALLBACK	8
 #define EFI_TPL_NOTIFY		16
 #define EFI_TPL_HIGH_LEVEL	31
-	efi_status_t(EFIAPI *create_event)(u32 type , unsigned long tpl,
+	efi_status_t(EFIAPI *create_event)(u32 type , efi_uintn_t tpl,
 			void (EFIAPI *fn) (struct efi_event *event, void *ctx),
 			void *ctx, struct efi_event **event);
 	efi_status_t(EFIAPI *set_timer)(struct efi_event *event, enum efi_timer_delay type, uint64_t time);
@@ -99,7 +99,7 @@ struct efi_boot_services {
 	efi_status_t(EFIAPI *exit)(efi_handle_t handle,  efi_status_t exit_status,
 			size_t exitdata_size, u16 *exitdata);
 	efi_status_t (EFIAPI *unload_image)(efi_handle_t handle);
-	efi_status_t (EFIAPI *exit_boot_services)(efi_handle_t, unsigned long);
+	efi_status_t (EFIAPI *exit_boot_services)(efi_handle_t, efi_uintn_t);
 	void *get_next_monotonic_count;
 	efi_status_t (EFIAPI *stall)(unsigned long usecs);
 	efi_status_t (EFIAPI *set_watchdog_timer)(unsigned long timeout,
-- 
2.47.3



