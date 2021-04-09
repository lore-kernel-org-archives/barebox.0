Delivery-date: Fri, 09 Apr 2021 15:13:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUqwk-0007r1-8c
	for lore@lore.pengutronix.de; Fri, 09 Apr 2021 15:13:14 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUqwj-0000Z0-7S
	for lore@pengutronix.de; Fri, 09 Apr 2021 15:13:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ac1jiSZAb0ojGK4rbEVFo/tXBM5/wxymp2oXiyvvf0M=; b=mzXLQIPjapWNjEfAjUBab+Vgy
	D1jAdRv17a9LZwGgVm3gtOvjOnzgWx0Cf1rVzB1NB2rF8RN9M7La8R5F8Sv4U+tQE5NzZziv8PJdu
	vQayCsDe/rKbadtDEpHd7kqEgv2GU0ma06Q0IVIzfbW2I0josKbLV7MusEL1Hh0cuWBIkgI8+EXap
	YB6RkgbL07u/Og4CQfa7FCMGtWrFoFwpmacWVKjZql5fkrcHBJRO67TWxKrMcZqonzuqKH0DjHIUb
	yWfiJ/bFdnmmLPAVr35MMRaMPefCezsnXwATefLYnXO9AUzvs14GSSSsSzS7Q3TOek7FGo3dlFkcj
	FP/Xd5y9Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUqvi-000nfk-EQ; Fri, 09 Apr 2021 13:12:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUqvW-000neO-MO
 for barebox@desiato.infradead.org; Fri, 09 Apr 2021 13:11:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=2jKXNbz8/w5SdqJBkf48Fl35/laX7NBVdteWc9at7M8=; b=AiHir9R9HE7BJSzzANr+NpCbkF
 6+9Cm5TdGy90Ls/fZCAvHEpvxJzeouRXHpkhQoj1I4rNN3eKsKMpWGvHLhub6hF+1JRU2reJy4LEl
 UkAYsxhQj/oMHa6fSV4mdwHRX9d27GCr+IR5kpsDRuFnHEkFx0vBmuGzwDI2bDGMnTPfQ/boFsbNv
 Skk/cYAibz/YEen9XbJf9Je8G4de05FxjlJii16Wpmha4dc4U5kkOl7q0et93eUVLT1Vs6F5swyqU
 TxGl0Jzz4JzgSErDZ3X10FnHSrwZxGlAEGfWgCvgW50v2qMVvN0EhQ+rbtfPD5Onc1WtQtq2oTMSw
 rEjMQxag==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUqvT-004XTx-7z
 for barebox@lists.infradead.org; Fri, 09 Apr 2021 13:11:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lUqvP-0008Cx-RE; Fri, 09 Apr 2021 15:11:51 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lUqvP-00018w-FY; Fri, 09 Apr 2021 15:11:51 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri,  9 Apr 2021 15:11:47 +0200
Message-Id: <20210409131149.2184-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210409131149.2184-1-o.rempel@pengutronix.de>
References: <20210409131149.2184-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_061155_300849_9E0B7F9F 
X-CRM114-Status: UNSURE (   8.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 4/6] ARM: at91: add __sama5d3_stashed_bootrom_r4 helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add sama5d3 specific __sama5d3_stashed_bootrom_r4 helper.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/sama5_bootsource.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-at91/include/mach/sama5_bootsource.h b/arch/arm/mach-at91/include/mach/sama5_bootsource.h
index 8355c2eeb6..931e1f29c8 100644
--- a/arch/arm/mach-at91/include/mach/sama5_bootsource.h
+++ b/arch/arm/mach-at91/include/mach/sama5_bootsource.h
@@ -46,6 +46,9 @@ static inline int sama5_bootsource_instance(u32 reg)
 #define __sama5d2_stashed_bootrom_r4 \
 	(*(volatile u32 *)(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE - 0x4))
 
+#define __sama5d3_stashed_bootrom_r4 \
+	(*(volatile u32 *)(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 0x4))
+
 static inline void __noreturn sama5_boot_xload(void __noreturn (*bb)(void), u32 r4)
 {
 	asm volatile("mov r4, %0" : : "r"(r4) : );
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

