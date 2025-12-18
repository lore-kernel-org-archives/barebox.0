Delivery-date: Thu, 18 Dec 2025 12:38:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLR-00CoOe-2W
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:38:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKo-0000uf-9A
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:38:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pi6WbQmWvy/ijYDcudp1YLwHGbBM1u62G4WevxCqhGg=; b=nUMghQYHiiQMI1ailNoeqUFLo3
	fbbllNkoJkyKKgWza4/WuEQchTosfuRA/GrlUkw/I1GFzmvz6WkSHagfEQsymcSUiC5JcUFf3qbj6
	iqxP9WAKCwx32H31TgL5eQWr1lzZpjhxkX9LqcpH+jai6lCMgkNsK4QRkLipy1Ug3R0zZ9UBldD3m
	fH6JuDLiD51gavOcISpqU/EZBUYPcOgr1TDtHv+jiEiaYvvFJnhufBjq5cZ40chtGA4H+dagW8gAk
	f5U2rNiAB5rIz920KpTaQcXf2oxbPefKw7buD/HD7k6d1GkGcNSwI0jiwQxvP7RoWh/GS0fNo9u12
	dYvzCXPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJg-00000008KUX-0RBM;
	Thu, 18 Dec 2025 11:37:08 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJU-00000008KJj-3XNW
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:36:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Pi6WbQmWvy/ijYDcudp1YLwHGbBM1u62G4WevxCqhGg=; b=fRqGV5iNUbwZ6uST89JqVsjo8n
	cYDfzQrIcTOwNiENItA7GWOnxcrl4NgJdfq9R0t48nWwjjwPqqiQ7YTRtWSrpXWGa87p6RYVCHFha
	f7YCxNN7w18JfGdRcoDSXhMx8wQfY4ZBBLUJVoyhc8KeH4ackkm6wAiht2RGA8ulvkm/92k9xLln7
	cMAtb8LLSwd+fmblzT00QSan+sOsDfSOC1axIGE40hnL2nFw/cFM6felYvd95Rb1psHnAehmuUucU
	KU+hLwjya5cvWQRKsTWmHoyLD0S+S6ZCutpZvBUhg1YvSmALm7DNG0eqlWJDLznhUQWDn9lYb6NeU
	sbsCpZQA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJR-000000063vt-2Rxf
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-0008F4-IC; Thu, 18 Dec 2025 12:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-006Gwc-1C;
	Thu, 18 Dec 2025 12:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw5-0000000AVre-1OEn;
	Thu, 18 Dec 2025 12:12:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:08 +0100
Message-ID: <20251218111242.1527495-49-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_113653_683953_5A6C814D 
X-CRM114-Status: UNSURE (   8.25  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 48/54] ARM: don't disable MMU when EFI booting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EFI boot does not disable MMU or caches and Linux will log errors if we
disable them. Therefore selectively, skip MMU disablement.

This may give us some performance boost when we slim down the support
for direct EFI-stub boot.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/cpu.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 0c678f54c023..eb9a2310534f 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -90,6 +90,9 @@ static void arch_shutdown(void)
 
 	disable_interrupts();
 
+	if (efi_is_loader() == EFI_LOADER_RUNTIME)
+		return;
+
 	mmu_disable();
 
 	icache_invalidate();
-- 
2.47.3



