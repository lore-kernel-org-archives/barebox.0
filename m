Delivery-date: Thu, 11 Jun 2026 23:15:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXmka-004pmJ-1F
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 23:15:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXmkZ-0004Y7-R0
	for lore@pengutronix.de; Thu, 11 Jun 2026 23:15:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JAi3NF1TnMZ6upu3RjC99pJPlGW+i9z66V/q13kSXhg=; b=qbnFuE5Ag7P3Q8wpJgpe/HTaGT
	IIAF6m5Tm2hjSPdgOdrijiYnF7Q5GEYCHGAy7stxQ7mkcc39vuySSFS+le98pitJcxt3k/smBlhyK
	3S3Ov1UpUj+AZaR9Cl/hoZzXp7mUjiM1ZLBM+0yZXe1T7Ull7W4JYMKu+bsyWpVIlEPPZNTPL+CVh
	kZurig5ta9qMUzJX1DfFJIpX9w4u9eBHrqxDXTwwEzehoJ7Ml2nOAujcgN78r31IweHZDX+sECA1j
	asJTEwTkiTRMRcgTofxta6hR/H330KQ+tFSaIY/lNCwdfIHzr0HefB0A9IxQ/Va+Hd1HSuWa9XzI2
	+D7p6xog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXmjS-0000000A54g-0A0t;
	Thu, 11 Jun 2026 21:14:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXmjP-0000000A53a-2HH5
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 21:14:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wXmjL-0004FO-TP; Thu, 11 Jun 2026 23:14:27 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 11 Jun 2026 23:14:20 +0200
Message-ID: <20260611211425.4090757-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_141431_582821_EF632EFA 
X-CRM114-Status: UNSURE (   8.97  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] efi: loader: fix format string for ARM32
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

size_t is an unsigned long on our ARM64, but an unsigned int on ARM32,
which causes a GCC warning when compiling this printf format string.

Switch to the appropriate %zx format specifier to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/boot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/loader/boot.c b/efi/loader/boot.c
index adeb2ff337b3..adcfd96b4648 100644
--- a/efi/loader/boot.c
+++ b/efi/loader/boot.c
@@ -370,7 +370,7 @@ static efi_status_t EFIAPI efi_get_memory_map_ext(
 	r = efi_get_memory_map(memory_map_size, memory_map, map_key,
 			       descriptor_size, descriptor_version);
 
-	__EFI_PRINT("%sEFI: Exit: %s(%zu@%p, %p, 0x%lx@%p, %zu@%p, %u@%p): %u\n",
+	__EFI_PRINT("%sEFI: Exit: %s(%zu@%p, %p, 0x%zx@%p, %zu@%p, %u@%p): %u\n",
 		    __efi_nesting_dec(), __func__,
 		    *memory_map_size, memory_map_size, memory_map,
 		    *map_key, map_key, *descriptor_size, descriptor_size,
-- 
2.47.3



