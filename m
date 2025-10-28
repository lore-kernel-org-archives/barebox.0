Delivery-date: Tue, 28 Oct 2025 15:33:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDklB-00CiH4-17
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 15:33:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDklA-00030S-Ol
	for lore@pengutronix.de; Tue, 28 Oct 2025 15:33:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=G77AoPWCQhtHr9sj4gfPszjP0K+V22My8FvJBpJTTDI=; b=t64ArUoaAgSXqe22os9XPngaGg
	aa4TZDwGjYg7YNxkIQ2Xkf0yAccvTmx21fTizJlzbucryqVxfdGXV2lNa/HWEqbnz5w8t6EoZaq0x
	6MmNdnsfSWTDkXcH8SfwXyAM3O4v5uvekzrdqGrHgP74QUqnvlQG48BTBlXdEV0srbqElTqoOFmmx
	zPVA+Cvs/+SXUc+MSCjFztoGiER5rDnglxnWS0XznS3FKt85E73U3ctmT0oG3FtqpMsj8Qz5bnfZe
	LM6xvSCZNaVUyViFy0Yx7UrlJCS8YMJf4MGe3I9LQgoxvSemDciR5TZEgQ28pdjbYn2j2l59DfttY
	IFgtohAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDkkf-0000000G61k-1mmc;
	Tue, 28 Oct 2025 14:32:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDkkd-0000000G61X-2OH7
	for barebox@bombadil.infradead.org;
	Tue, 28 Oct 2025 14:32:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=G77AoPWCQhtHr9sj4gfPszjP0K+V22My8FvJBpJTTDI=; b=ZY5jAMp7sGodmBDkhH+IhZyeHo
	vqayuYkFNby/HdG2jevJLqve8q5B1DL/fsGWws9flVzpREUz1frLXGw2BhgoCMwSN0IVd+/PPawsI
	77WM+aCH0Go21F7weO4K9yibEoh+fHayFYm8NJpwY2kSYqpCQGaayzn3V2NiuwkZZk8q6yhYIl15M
	zLZzcIQFn+IY166fAnwkBWHElVgYW2RsEbtCtiz+IPXfdcplogA7B/QShW0rRRgVON5QVrAPfKHb/
	of/v4i/dLQF2/eFeklSrH4YthxFEpfInYUnN13zk2dhg3dcGHv/RJ9VFFigns7RorsAcR3MZSirLE
	5/Zt0uCw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDjsr-00000004Yri-1UN9
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 13:37:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDkkZ-0002r9-Dq; Tue, 28 Oct 2025 15:32:39 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDkkZ-005tGj-0m;
	Tue, 28 Oct 2025 15:32:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDkkZ-00000007TqP-0bgC;
	Tue, 28 Oct 2025 15:32:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 28 Oct 2025 15:32:34 +0100
Message-ID: <20251028143238.1782982-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_133709_420765_DA412349 
X-CRM114-Status: GOOD (  10.52  )
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
Subject: [PATCH 1/2] ARM: mmu: have zero_page_remappable() check MMU status
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

zero_page_access() and zero_page_faulting() call remap_range(), which
assumes the TTBR was initialized to page tables set up by barebox.

It's thus not safe to call them from generic code prior to enabling the
MMU, but we are doing just that. In preparation for fixing, let's make
zero_page_remappable reflect MMU status.

While at it, also drop the duplicate zero_page_access() prototype.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c |  5 +++++
 include/zero_page.h       | 12 ++++++------
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 033ba01ea4c8..92e06b06077f 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -81,6 +81,11 @@ void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_ha
 	return dma_alloc_map(dev, size, dma_handle, MAP_WRITECOMBINE);
 }
 
+bool zero_page_remappable(void)
+{
+	return get_cr() & CR_M;
+}
+
 void zero_page_access(void)
 {
 	remap_range(0x0, PAGE_SIZE, MAP_CACHED);
diff --git a/include/zero_page.h b/include/zero_page.h
index 8dd66a1efb9b..072e71be581e 100644
--- a/include/zero_page.h
+++ b/include/zero_page.h
@@ -20,12 +20,12 @@ void zero_page_faulting(void);
  */
 void zero_page_access(void);
 
-void zero_page_access(void);
-
-static inline bool zero_page_remappable(void)
-{
-	return true;
-}
+/**
+ * zero_page_remappable() - check if zero page can be remapped
+ *
+ * Check if MMU is enabled and zero page remapping support is available.
+ */
+bool zero_page_remappable(void);
 
 #else
 
-- 
2.47.3



