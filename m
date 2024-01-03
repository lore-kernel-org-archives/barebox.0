Delivery-date: Wed, 03 Jan 2024 19:33:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63P-002NhO-0M
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63G-00049R-Jg
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UE2bH76TYaibn0qmYkuvMilkFce5E035FKfVAIhkeLs=; b=0V6o2pG8ZhZ1PIw6pUZeHouEFO
	Bqir0cjNBPvADlPwYMHiPGEooiw8NlUWieXLV0yiioW15Xp8As4rdDj7C9AcA4Cv2zuLMRGU4sc56
	plFTyYohCwVtnzXB9YXvguK3IZD58y9kRhxBDDw6esBTxL64j/qOnbnVjRsCPq11z27Q2Z/xWqAqz
	xH3qX9fYAVWkb6BVyobViE6st+0P/K9DNdVslz7mqHgVBwUHM/l4xUSToioPlnY0rsl9RylJ1/9oj
	IZnpAjhc5YE70ovrfusw1SJx+II8EPpqxGw4+PuJltvr6S/HjN7PqVeYQVHghoB6/76xHQFnpNr3w
	EACmHhLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61t-00Bi40-2I;
	Wed, 03 Jan 2024 18:31:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL617-00Bh1v-1e
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL614-0001hN-0P; Wed, 03 Jan 2024 19:30:58 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-000Axt-JS; Wed, 03 Jan 2024 19:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-1o;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:18 +0100
Message-Id: <20240103181312.409668-59-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103101_577758_699B7B3B 
X-CRM114-Status: GOOD (  10.35  )
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
Subject: [PATCH 058/112] efi: payload: fix ARM build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we only ever built EFI for x86. Prepare building it for ARM by
removing the x86-specific attributes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/image.c | 4 ++--
 include/efi/types.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index f9706c028ed9..8e5ad87de22f 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -217,8 +217,8 @@ static inline void linux_efi_handover(efi_handle_t handle,
 	handover(handle, efi_sys_table, header);
 }
 #else
-typedef void(*handover_fn)(VOID *image, EFI_SYSTEM_TABLE *table,
-		struct SetupHeader *setup) __attribute__((regparm(0)));
+typedef void(*handover_fn)(void *image, struct efi_system_table *table,
+		struct linux_kernel_header *setup);
 
 static inline void linux_efi_handover(efi_handle_t handle,
 		struct linux_kernel_header *header)
diff --git a/include/efi/types.h b/include/efi/types.h
index 3d42948d2b62..6e134387692f 100644
--- a/include/efi/types.h
+++ b/include/efi/types.h
@@ -33,7 +33,7 @@ typedef guid_t efi_guid_t __aligned(__alignof__(u32));
   (c) & 0xff, ((c) >> 8) & 0xff, \
   (d0), (d1), (d2), (d3), (d4), (d5), (d6), (d7) }})
 
-#ifdef CONFIG_EFI_PAYLOAD
+#ifdef __x86_64__
 #define EFIAPI __attribute__((ms_abi))
 #else
 #define EFIAPI
-- 
2.39.2



