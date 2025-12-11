Delivery-date: Thu, 11 Dec 2025 21:37:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPY-00AQHi-2N
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:37:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPY-00089l-5B
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:37:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z46FtFqybYtGaYlz990Jm56h4NO7Dmn1QLf2m9QqKt8=; b=nDvmjbAvVMrDf1/5uJnX3ED9H9
	4tNVXxNsPEurG50UXt+ARPVxs+BEc/LtAgct6OxnKzk6p+NCddQ1Tk0LDj22qqdYDIg+Xj+OQmVbw
	Qwrpj8NLMD+j+4Lh7d1kVRh+etoCDsNKaLNAcbNoMWkD3PfqLzsRj5DoYttqsDQidKSojLv1tU/JU
	r/d93wGW+eQP3JyyaBa2CuqcRFNGjB1OWGAeX1f/2WziS4zTnlaHda87Gtru+W7QcF6VWRQyU8by5
	USqG+JWo4+dLuVsLl/LIBt7RZSwlqDdjLEoSCM2HzH1P3eFn9yyCKPwaWeeZV034vQfvrlmUD1AfZ
	GK5wJZ9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnPC-0000000HFPY-0omU;
	Thu, 11 Dec 2025 20:36:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnPA-0000000HFOK-1StG
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:36:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=z46FtFqybYtGaYlz990Jm56h4NO7Dmn1QLf2m9QqKt8=; b=h2AcV9MlOODHH8wk0Pq30QBxjk
	TNwr8D8NrlqBlssQMxtGHwXSspEfUdCNpfFOsl40VelRhWMwkYZnYI/80dMmEVS+DhM4kcTwSFDIh
	TEZPH2kRK+TEUBFpNjWPZcnoVimpncG11PHUnzFhz/sO7J3HLBfIMytRn/JFL8kle8uaUykkRUxWf
	43zXog/on2HAh1BCDTYmQ+YiiEYe3oHJKdZ+t8YBlMPPnOwBLedC0bbHXjFfYX9MpAw71GQEN30LW
	d5QcDjTmcwVBHvlOLyxHRjePKAPqSYMP4q/pIGy5lGrunTqtdHQfiM5FT0mO3X/RNluHpgTl+kBme
	gxHTz3kg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmXa-0000000FZXP-42Dx
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:41:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnP5-0007pi-BW; Thu, 11 Dec 2025 21:36:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnP5-005BWQ-0W;
	Thu, 11 Dec 2025 21:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJS-00000008e20-0DoX;
	Thu, 11 Dec 2025 21:30:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:30:07 +0100
Message-ID: <20251211203056.2014710-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_194131_228545_1DD33BF5 
X-CRM114-Status: GOOD (  10.74  )
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
Subject: [PATCH 16/16] efi: add missing EFIAPI to functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EFI functions have a different calling convention on x86, but this was
missed for a few functions and function pointers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clocksource/efi.c | 2 +-
 include/efi/services.h    | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi.c
index 534bea5525c4..7a07db0af83d 100644
--- a/drivers/clocksource/efi.c
+++ b/drivers/clocksource/efi.c
@@ -18,7 +18,7 @@ static uint64_t efi_cs_read(void)
 	return ticks;
 }
 
-static void efi_cs_inc(struct efi_event *event, void *ctx)
+static void EFIAPI efi_cs_inc(struct efi_event *event, void *ctx)
 {
 	ticks++;
 }
diff --git a/include/efi/services.h b/include/efi/services.h
index 9fc6a066a917..eaeaf1a55ee8 100644
--- a/include/efi/services.h
+++ b/include/efi/services.h
@@ -65,7 +65,7 @@ struct efi_boot_services {
 #define EFI_TPL_NOTIFY		16
 #define EFI_TPL_HIGH_LEVEL	31
 	efi_status_t(EFIAPI *create_event)(u32 type , unsigned long tpl,
-			void (*fn) (struct efi_event *event, void *ctx),
+			void (EFIAPI *fn) (struct efi_event *event, void *ctx),
 			void *ctx, struct efi_event **event);
 	efi_status_t(EFIAPI *set_timer)(struct efi_event *event, enum efi_timer_delay type, uint64_t time);
 	efi_status_t(EFIAPI *wait_for_event)(size_t number_of_events, struct efi_event **event,
@@ -174,7 +174,7 @@ struct efi_runtime_services {
 				       size_t descriptor_size,
 				       uint32_t descriptor_version,
 				       struct efi_memory_desc *virtmap);
-	efi_status_t (*convert_pointer)(unsigned long dbg, void **address);
+	efi_status_t (EFIAPI *convert_pointer)(unsigned long dbg, void **address);
 	efi_status_t (EFIAPI *get_variable)(efi_char16_t *variable_name, const efi_guid_t *vendor,
 			u32 *Attributes, size_t *data_size, void *data);
 	efi_status_t (EFIAPI *get_next_variable)(size_t *variable_name_size,
-- 
2.47.3



