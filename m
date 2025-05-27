Delivery-date: Tue, 27 May 2025 23:31:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1ts-000yLz-21
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:31:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tr-0005mQ-8Z
	for lore@pengutronix.de; Tue, 27 May 2025 23:31:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ul9gJWlhCz83Bs0bc480We+Lq784xYWefSMgbiYDmgY=; b=QD9Amlp7Di5Ofb+9bB71s+3Fye
	KXd02kwbmMuZ3WBvaK9AM0Xjw9rMpD8njM26/QGGMWNHLsPU86xO2dk8Uenr28JSHpk1WfiBLUusE
	5WI4juiAk9aICbtQfxmrQXG5l55uxtZES18RzyNlyQc03Ld0BUQ/F/hc/zDznVDNUIOclvYNAwMy7
	BqOJaCEGRXAS9V58vlIpT6t9PAKUEXGFGF6sVtxUmNqiJJn9168nWfWVh0vMhqxLxz2mlcIdTLBwT
	lqhU4CUiK1ekysPCI5GoIyGJllyTlQNwnISAfU0tmte97ummjfwaB676cyvDIYcojKbwLF81RubRt
	sNkHHBKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tI-0000000Bbl3-3l4W;
	Tue, 27 May 2025 21:31:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lO-0000000Baxd-3PRS
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lN-00015n-Hu
	for barebox@lists.infradead.org; Tue, 27 May 2025 23:23:09 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Tue, 27 May 2025 23:22:53 +0200
Message-Id: <20250527212300.575031-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142310_849041_8E07F778 
X-CRM114-Status: GOOD (  11.30  )
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
Subject: [PATCH 08/15] efi: return pointer from efi_earlymem_alloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Returning a pointer for a memory allocation function makes more sense.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 efi/payload/early-mem.c    | 6 +++---
 efi/payload/entry-multi.c  | 4 ++--
 efi/payload/entry-single.c | 4 ++--
 include/efi/efi-payload.h  | 3 +--
 4 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/efi/payload/early-mem.c b/efi/payload/early-mem.c
index 52052f7ed128..6229fd43a587 100644
--- a/efi/payload/early-mem.c
+++ b/efi/payload/early-mem.c
@@ -5,8 +5,8 @@
 #include <efi.h>
 #include <efi/efi-payload.h>
 
-efi_physical_addr_t efi_earlymem_alloc(const struct efi_system_table *sys_table,
-				       size_t *memsize)
+void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
+			 size_t *memsize)
 {
 	struct efi_boot_services *bs = sys_table->boottime;
 	enum efi_allocate_type alloc_type = EFI_ALLOCATE_ANY_PAGES;
@@ -29,5 +29,5 @@ efi_physical_addr_t efi_earlymem_alloc(const struct efi_system_table *sys_table,
 		panic("failed to allocate %zu byte memory pool: 0x%lx\n",
 		      *memsize, efiret);
 
-	return mem;
+	return efi_phys_to_virt(mem);
 }
diff --git a/efi/payload/entry-multi.c b/efi/payload/entry-multi.c
index 26cf2ebfa764..2eb9dccc08a0 100644
--- a/efi/payload/entry-multi.c
+++ b/efi/payload/entry-multi.c
@@ -24,7 +24,7 @@ static void efi_putc(void *ctx, int ch)
 void __efistub_efi_pe_entry(void *image, struct efi_system_table *sys_table)
 {
 	size_t memsize;
-	efi_physical_addr_t mem;
+	void *mem;
 	static struct barebox_efi_data efidata;
 
 #ifdef DEBUG
@@ -39,5 +39,5 @@ void __efistub_efi_pe_entry(void *image, struct efi_system_table *sys_table)
 
 	mem = efi_earlymem_alloc(sys_table, &memsize);
 
-	barebox_pbl_entry(mem, memsize, NULL);
+	barebox_pbl_entry((uintptr_t)mem, memsize, NULL);
 }
diff --git a/efi/payload/entry-single.c b/efi/payload/entry-single.c
index cb7981e03060..c95672b9fe66 100644
--- a/efi/payload/entry-single.c
+++ b/efi/payload/entry-single.c
@@ -18,7 +18,7 @@ void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
 {
 	efi_status_t efiret;
 	size_t memsize;
-	efi_physical_addr_t mem;
+	void *mem;
 
 #ifdef DEBUG
 	sys_table->con_out->output_string(sys_table->con_out, L"barebox\n");
@@ -39,7 +39,7 @@ void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
 
 	mem = efi_earlymem_alloc(sys_table, &memsize);
 
-	mem_malloc_init((void *)mem, (void *)mem + memsize - 1);
+	mem_malloc_init(mem, mem + memsize - 1);
 
 	start_barebox();
 }
diff --git a/include/efi/efi-payload.h b/include/efi/efi-payload.h
index 73b1b9bd8e74..313ba7f4abc2 100644
--- a/include/efi/efi-payload.h
+++ b/include/efi/efi-payload.h
@@ -30,7 +30,6 @@ int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
 		     void *buf, unsigned long size);
 int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec);
 
-efi_physical_addr_t efi_earlymem_alloc(const struct efi_system_table *sys_table,
-				       size_t *memsize);
+void *efi_earlymem_alloc(const struct efi_system_table *sys_table, size_t *memsize);
 
 #endif
-- 
2.39.5



