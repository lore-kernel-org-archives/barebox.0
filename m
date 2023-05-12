Delivery-date: Fri, 12 May 2023 13:12:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgu-00F2VN-5l
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:12:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgq-0005Cy-0m
	for lore@pengutronix.de; Fri, 12 May 2023 13:12:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FZLZxHjFfciLHhhCqflrRQRyYnjx21NOM/FCF8OoUwQ=; b=uPgHPk6PJmoCiPgUoeFzza/K84
	cQ+Tx18B1DLUskNk+zWQz5GDVy3MPb0z6OiZelT3AWLvSvWKBH2XS3O5droEhF+BbduUlrhjJzFpX
	BKj4VYcAn5KFKJ+yfxQw3FDbuVuO/XUv3747OU7MeAfpt5F7/mfCRUQMazo85yv+UUsTEtSZaJ/Ex
	1uatDJ8aOiPLk0xLRI+ztqdVzx3YK9/ATM3CyxljuObyOXNUuKEsuMElsWoqMGDoC8heNpXRGeCdc
	zt890bwcr/JCvaGzqx+Hk6ftvL8NG8Nr9FcCIAW+gLTCQqvjf2vUeQge5Y3TThfcXL3yE1WhaGjeS
	J7QVZkQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfk-00BkQt-1N;
	Fri, 12 May 2023 11:10:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfK-00Bk0w-2t
	for barebox@bombadil.infradead.org;
	Fri, 12 May 2023 11:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=FZLZxHjFfciLHhhCqflrRQRyYnjx21NOM/FCF8OoUwQ=; b=bzMAmkF2jc59+BmO7dJam3tn0W
	UxEPtoCsjw19128wi7261Fth/vhlfDGlWc2l9JZjMChGwikhuqpGKXbxMXXtZEBKbaNitD9BgqXUf
	n2wllyY1EMdhRIqT27pcLV7ED8GFzD30gHl6M8U3qOsCHJC3VQmIdU0BPYCmD7ZYKX2roTBPb34HB
	w+npp1/iz3IG6L8AA9dqyHc/qefWMXIT42T0OTB7/zthz00ivGC0rIoEMvg5rRRzTHR2oNWdO+xpR
	yA9R1YWaUj2tqqC61zxgPCDYrDoSuhKr/5FjciESWQHgehvGB2ZxX4bGpcTu/l1M7irItMY/4K1oX
	JNh0g4lA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfF-009835-1K
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf9-0003gh-DG; Fri, 12 May 2023 13:10:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-002wkJ-Ob; Fri, 12 May 2023 13:10:14 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055Du-4t; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:09:49 +0200
Message-Id: <20230512111008.1120833-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121021_524429_3A109E60 
X-CRM114-Status: GOOD (  10.31  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/27] ARM: mmu64: Use arch_remap_range where possible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index a22e0c81ab..0639d0f1ce 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -174,12 +174,12 @@ static void mmu_enable(void)
 
 void zero_page_access(void)
 {
-	create_sections(0x0, 0x0, PAGE_SIZE, CACHED_MEM);
+	arch_remap_range(0x0, PAGE_SIZE, MAP_CACHED);
 }
 
 void zero_page_faulting(void)
 {
-	create_sections(0x0, 0x0, PAGE_SIZE, 0x0);
+	arch_remap_range(0x0, PAGE_SIZE, MAP_FAULT);
 }
 
 /*
@@ -201,17 +201,17 @@ void __mmu_init(bool mmu_on)
 	pr_debug("ttb: 0x%p\n", ttb);
 
 	/* create a flat mapping */
-	create_sections(0, 0, 1UL << (BITS_PER_VA - 1), attrs_uncached_mem());
+	arch_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
 
 	/* Map sdram cached. */
 	for_each_memory_bank(bank) {
 		struct resource *rsv;
 
-		create_sections(bank->start, bank->start, bank->size, CACHED_MEM);
+		arch_remap_range((void *)bank->start, bank->size, MAP_CACHED);
 
 		for_each_reserved_region(bank, rsv) {
-			create_sections(resource_first_page(rsv), resource_first_page(rsv),
-					resource_count_pages(rsv), attrs_uncached_mem());
+			arch_remap_range((void *)resource_first_page(rsv),
+					 resource_count_pages(rsv), MAP_UNCACHED);
 		}
 	}
 
-- 
2.39.2



