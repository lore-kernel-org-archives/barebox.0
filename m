Delivery-date: Thu, 23 Oct 2025 08:59:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBpIb-00AsIW-07
	for lore@lore.pengutronix.de;
	Thu, 23 Oct 2025 08:59:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBpIa-0001mV-Fk
	for lore@pengutronix.de; Thu, 23 Oct 2025 08:59:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8HA7M4aPsejjU8dkvDHi273q8s+1FClwAEwLStBN1Ew=; b=uj6+xbJirncVYg69w5IwJz83OE
	IPR6O+TNYHKYbQFHtsZfutzhl96S69TDHf9198KCPr52+ygtb5BqtuRHJVkP0x9ZvOKO8PcF7gj3z
	/AwiU2EotAPt8dT3y1ih3rlb70mr2EQlYMSqqmqcRPDtCO2XE6xAzYxCPDUcqLY0Sx4Ue2z9S0mdQ
	NT2T5whMQy9rXTy919ehAHX2iotVhWW8OUN0ydcHHVIGzTezzkIcNNBKPATbXWKcJaXCoOr/d67ej
	+taPTekZZ0hSovomi2LFs0OmnKlh9KdtrF82uQXFFXhVCfk9qHICNyEhU/zPxYYLZclYmUJuvC3qg
	kqRO50KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBpI1-00000005HlA-2EJ1;
	Thu, 23 Oct 2025 06:59:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBpHz-00000005HkM-0OhB
	for barebox@lists.infradead.org;
	Thu, 23 Oct 2025 06:59:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBpHw-0001e1-1G; Thu, 23 Oct 2025 08:59:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBpHv-00510W-2j;
	Thu, 23 Oct 2025 08:59:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBpHv-00000008ljY-36r7;
	Thu, 23 Oct 2025 08:59:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Chali Anis <chalianis1@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Oct 2025 08:59:06 +0200
Message-ID: <20251023065907.2090100-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_235911_130511_6F41117F 
X-CRM114-Status: UNSURE (   9.86  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] efi: payload: do not check for heap addresses in efi_load_image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We used to request memory from EFI only if read_file fails, but now that
read_file has been removed from efi_read_file, only EFI memory is used.

The check in efi_free_file for heap addresses thus serves no purpose any
longer and can be dropped.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/image.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index ae7678188d84..5d20221a135e 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -61,16 +61,6 @@ static void *efi_read_file(const char *file, size_t *size)
 	return buf;
 }
 
-static void efi_free_file(void *_mem, size_t size)
-{
-	efi_physical_addr_t mem = efi_virt_to_phys(_mem);
-
-	if (mem_malloc_start() <= mem && mem < mem_malloc_end())
-		free(_mem);
-	else
-		BS->free_pages(mem, DIV_ROUND_UP(size, EFI_PAGE_SIZE));
-}
-
 int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
 		   efi_handle_t *h)
 {
@@ -101,7 +91,7 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
 
 	*h = handle;
 out:
-	efi_free_file(exe, size);
+	BS->free_pages(efi_virt_to_phys(exe), DIV_ROUND_UP(size, EFI_PAGE_SIZE));
 	return -efi_errno(efiret);
 }
 
-- 
2.47.3



