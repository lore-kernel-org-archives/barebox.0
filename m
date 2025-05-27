Delivery-date: Tue, 27 May 2025 23:32:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tx-000yPk-2Q
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:32:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tv-0005sh-LP
	for lore@pengutronix.de; Tue, 27 May 2025 23:32:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KjSg1jX94AiQnIl0riCRNNR97j9ExiJEMWJwrohyq0Q=; b=YupeK3aS2InHuemj4gxAz1IbPq
	d8KpORlZ0Mg7DM44U14CeRatUV7lm+JTva7C5Ao3mhC66DlRmgz27n3C28JI5ab34N3CeEIyjRyjS
	G5xkFCZmmcTO++4JqQK4DpO7+1oaxIryTyIliKN1wBNUinej/KULHeiq/E/SPW3ElqrXFswo+d2Kv
	5uBvoaP0Z0syydZ8w54heVb7HNw28b2v7TfG4B/YwbYCA7LQ76RfgAkJPWoNjRJ/ymRT0kQiY1+Nx
	byhOgb++7PqlckR5EDU7qHh1L7X7RC2Am8rbyVyOb+79FWc6Xs5egku5NsVpoYwj5YmyN5SH4mAJz
	2f8wbNbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tN-0000000BbsZ-3DmX;
	Tue, 27 May 2025 21:31:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lV-0000000Bb01-118g
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lT-00015n-Re; Tue, 27 May 2025 23:23:16 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 27 May 2025 23:22:58 +0200
Message-Id: <20250527212300.575031-14-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142317_279260_6DFAD213 
X-CRM114-Status: UNSURE (   9.24  )
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
Subject: [PATCH 13/15] efi: payload: use efi_virt_to_phys instead of pointer to u64 casts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

Instead of casting pointers directly to integers, let's make use of the
newly introduced efi_virt_to_phys helper.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/payload/image.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index fa9a3ee1026d..f039b8a8d26a 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -273,18 +273,18 @@ static int do_bootm_efi(struct image_data *data)
 		memcpy(initrd, tmp, size);
 		memset(initrd + size, 0, PAGE_ALIGN(size) - size);
 		free(tmp);
-		boot_header->ramdisk_image = (uint64_t)initrd;
+		boot_header->ramdisk_image = efi_virt_to_phys(initrd);
 		boot_header->ramdisk_size = PAGE_ALIGN(size);
 	}
 
 	options = linux_bootargs_get();
 	if (options) {
-		boot_header->cmd_line_ptr = (uint64_t)options;
+		boot_header->cmd_line_ptr = efi_virt_to_phys(options);
 		boot_header->cmdline_size = strlen(options);
 	}
 
-	boot_header->code32_start = (uint64_t)loaded_image->image_base +
-			(image_header->setup_sects+1) * 512;
+	boot_header->code32_start = efi_virt_to_phys(loaded_image->image_base +
+			(image_header->setup_sects+1) * 512);
 
 	if (bootm_verbose(data)) {
 		printf("\nStarting kernel at 0x%p", loaded_image->image_base);
-- 
2.39.5



