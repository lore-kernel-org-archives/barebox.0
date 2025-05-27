Delivery-date: Tue, 27 May 2025 23:31:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tv-000yOK-19
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:31:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tt-0005oT-AV
	for lore@pengutronix.de; Tue, 27 May 2025 23:31:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=73IVPw3jf3ylsUKEMPySD2vicCdjmDJkyLzGSmfETaM=; b=wA0tKNxbA3T8StLSSNnnk/LKH6
	MZHuXB29IgGMoQGdr5LtL2s6JJITzZFDUpO601uj9315O1G64rSbodknhpsf5CWwVHOXAf/4qDGwn
	k5MltPqJ/wS+t9nvKM0xmFbA20IhiY/K1F4fx9Chs9CbYruz5V1jxDqlUoTvkkNBiWwQsuks23A1C
	DOfHBrmJy8bITjSqP8XSXyY8F687sssu7CgpS65+VV0Z63BzZaQdbul8aliq13bsRkPOYTnDUWnVZ
	FYefE3/Mxgrm4Edye6SK3vgyuSuVOFAUXaCQB7ZdEgjUUKbF8w57BGvlD8jpnz01JxIxpnel/qzzR
	kne2qrhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tL-0000000Bbo2-16fM;
	Tue, 27 May 2025 21:31:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lR-0000000Bayw-03Zu
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lP-00015n-Hx; Tue, 27 May 2025 23:23:11 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 27 May 2025 23:22:55 +0200
Message-Id: <20250527212300.575031-11-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142313_048490_448B35B5 
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
Subject: [PATCH 10/15] efi: payload: iomem: use virt_start if set
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the EFI firmware populates virt_start, we should use that in
preference to phys_start as not to assume a 1:1 mapping.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/payload/iomem.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/efi/payload/iomem.c b/efi/payload/iomem.c
index 832f6db72b76..888aa8569ebb 100644
--- a/efi/payload/iomem.c
+++ b/efi/payload/iomem.c
@@ -25,9 +25,10 @@ static int efi_parse_mmap(struct efi_memory_desc *desc, bool verbose)
 		return 0;
 
 	/* XXX At least OVMF doesn't populate ->virt_start and leaves it at zero
-	 * for all mapping. Thus assume a 1:1 mapping and ignore virt_start
+	 * for all mappings. Handles this by assume a 1:1 mapping and falling
+	 * back to phys_start.
 	 */
-	va_base = desc->phys_start;
+	va_base = (uintptr_t)desc->virt_start ?: desc->phys_start;
 
 	switch (desc->type) {
 	case EFI_RESERVED_TYPE:
@@ -124,9 +125,9 @@ static int efi_parse_mmap(struct efi_memory_desc *desc, bool verbose)
 		flags = IORESOURCE_MEM | IORESOURCE_ROM_BIOS_COPY;
 	}
 
-	fullname = xasprintf("%s@%llx", name, desc->phys_start);
+	fullname = xasprintf("%s@%llx", name, (u64)va_base);
 
-	pr_debug("%s: (0x%llx+0x%llx)\n", fullname, va_base, va_size);
+	pr_debug("%s: (%pad+%pad)\n", fullname, &va_base, &va_size);
 
 	res = request_iomem_region(fullname, va_base, va_base + va_size - 1);
 	if (IS_ERR(res)) {
-- 
2.39.5



