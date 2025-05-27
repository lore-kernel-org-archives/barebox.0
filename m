Delivery-date: Tue, 27 May 2025 23:31:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tu-000yNp-2T
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:31:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1ts-0005nM-C3
	for lore@pengutronix.de; Tue, 27 May 2025 23:31:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d+wSjCOwt4ZsbHFyS9N9LBnstiBJavEESsHOgOMsGjQ=; b=iH8hcPAXq5toHpTTKmWgcZDGY5
	9j3QPDp+rQJu75LtjoJskQ9+IaTRo2+KSNI0Bht674PMJcOM9KK1qhwIbVxiKmuNajfjb/ve0DsGx
	xhYDbX4yFL2rLR9ZwYUOLnWOFSZU5FbeI6Bw2f7QXULN7DkGc0HnxWchdZbCjhLmjdU3if/cJmk08
	i/u6N34w0N26FDerJVfH1cP2CDLkoIEnsI5nkit9FrPwWTFLM1AOubqyxwbQNLpJUzfwT7rbKvtZn
	/JjagRatK/LbjOd5sorTOSgFAa/jtWVCiP3dr718wS9f5XQrQiaZuwhXAAcoEMJrfqdIuU9Q55P2d
	OrxTV9Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tG-0000000BbjO-3vpl;
	Tue, 27 May 2025 21:31:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lM-0000000Bawa-0yC0
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lK-00015n-RF; Tue, 27 May 2025 23:23:07 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 27 May 2025 23:22:50 +0200
Message-Id: <20250527212300.575031-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142308_266586_B53128F3 
X-CRM114-Status: UNSURE (   9.12  )
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
X-Spam-Status: No, score=-7.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/15] efi: payload: early-mem: EFI_ALLOCATE_ANY_PAGES on non-x86
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Using EFI_ALLOCATE_MAX_ADDRESS with an address of ~0 means that the EFI
implementation is free to give us any region it sees fit, so let's use
EFI_ALLOCATE_ANY_PAGES explicitly instead to make this clearer.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/payload/early-mem.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/efi/payload/early-mem.c b/efi/payload/early-mem.c
index b4e8790a39c4..52052f7ed128 100644
--- a/efi/payload/early-mem.c
+++ b/efi/payload/early-mem.c
@@ -9,13 +9,18 @@ efi_physical_addr_t efi_earlymem_alloc(const struct efi_system_table *sys_table,
 				       size_t *memsize)
 {
 	struct efi_boot_services *bs = sys_table->boottime;
+	enum efi_allocate_type alloc_type = EFI_ALLOCATE_ANY_PAGES;
 	efi_physical_addr_t mem;
 	efi_status_t efiret;
 
-	mem = IS_ENABLED(CONFIG_X86) ? 0x3fffffff : ~0ULL;
+	if (IS_ENABLED(CONFIG_X86)) {
+		/* Try to stay clear of memory mapped devices */
+		alloc_type = EFI_ALLOCATE_MAX_ADDRESS;
+		mem = SZ_1G - 1;
+	}
+
 	for (*memsize = SZ_256M; *memsize >= SZ_8M; *memsize /= 2) {
-		efiret  = bs->allocate_pages(EFI_ALLOCATE_MAX_ADDRESS,
-					     EFI_LOADER_DATA,
+		efiret  = bs->allocate_pages(alloc_type, EFI_LOADER_DATA,
 					     *memsize / EFI_PAGE_SIZE, &mem);
 		if (!EFI_ERROR(efiret) || efiret != EFI_OUT_OF_RESOURCES)
 			break;
-- 
2.39.5



