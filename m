Delivery-date: Tue, 27 May 2025 23:32:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tx-000yP7-0C
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:32:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tv-0005qz-1l
	for lore@pengutronix.de; Tue, 27 May 2025 23:32:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4bU7GfELAvVj6ySUfsTJSnzJbUNlZ6ItrteXC/Yi4oo=; b=Aa/rA4y81WNo5vHzKjXmMiDO2r
	iH5H1H3wMNpPdKs8Wt6pd+lezz2U6JW5efmaVqWWuy2/DWSfVCXK8i8Qe0L6di094Sl6+D55jpD7o
	bPPYDjNqC2E8FmDbuU0z/B3joJvj9q3y4Qrqvez++B3sJOKzyAXte35ccW60AJwbsXJ/6wT4aEybj
	ly9Ox+JZr946qGjmZjeSa9ak8VEICrsi/UI0Iw0WwnAngGPkpDgKysPJ+DtgJgUyDiuE1vZcnp8Sh
	M3Fa2QgQUHcH5vEMKRL6fiBu2p7nhqeI2OINICR2HSnZhYElHS5Yr1ox9i7Lf4RMlCW2MOrpA8OPa
	p+m0y72g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tM-0000000BbrF-3JJt;
	Tue, 27 May 2025 21:31:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lT-0000000BazU-3KfY
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lS-00015n-AR; Tue, 27 May 2025 23:23:14 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 27 May 2025 23:22:57 +0200
Message-Id: <20250527212300.575031-13-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142315_827670_A3AEC9C2 
X-CRM114-Status: UNSURE (   9.17  )
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
Subject: [PATCH 12/15] efi: payload: unify duplicate code in ifdef
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The two branches only differ in the addition of 512 bytes, so move that
into an IS_ENABLED() clause and remove the #ifdef.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/payload/image.c | 23 ++++++-----------------
 1 file changed, 6 insertions(+), 17 deletions(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index 20ef2a878c11..fa9a3ee1026d 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -215,7 +215,6 @@ static int efi_execute_image(enum filetype filetype, const char *file)
 	return -efi_errno(efiret);
 }
 
-#ifdef __x86_64__
 typedef void(*handover_fn)(void *image, struct efi_system_table *table,
 		struct linux_kernel_header *header);
 
@@ -223,25 +222,15 @@ static inline void linux_efi_handover(efi_handle_t handle,
 		struct linux_kernel_header *header)
 {
 	handover_fn handover;
+	uintptr_t addr;
 
-	handover = (handover_fn)((long)header->code32_start + 512 +
-				 header->handover_offset);
+	addr = header->code32_start + header->handover_offset;
+	if (IS_ENABLED(CONFIG_X86_64))
+		addr += 512;
+
+	handover = efi_phys_to_virt(addr);
 	handover(handle, efi_sys_table, header);
 }
-#else
-typedef void(*handover_fn)(void *image, struct efi_system_table *table,
-		struct linux_kernel_header *setup);
-
-static inline void linux_efi_handover(efi_handle_t handle,
-		struct linux_kernel_header *header)
-{
-	handover_fn handover;
-
-	handover = (handover_fn)((long)header->code32_start +
-				 header->handover_offset);
-	handover(handle, efi_sys_table, header);
-}
-#endif
 
 static int do_bootm_efi(struct image_data *data)
 {
-- 
2.39.5



