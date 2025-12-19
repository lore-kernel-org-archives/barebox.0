Delivery-date: Fri, 19 Dec 2025 11:37:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXru-00DAYV-12
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:37:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXri-0005fF-SU
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:37:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s9ifIuWTTwMh1TWo4NKcIuFtp9ZI1QWaEc3burxjRE8=; b=1WxEmEzrh0Z/R4hHtJN2lRFmND
	HzbKySfutR5Z0FuS1SOgSn3koUSKA8nGZcfacWyo9SdYjMfB+Yfvqs5i4bwIupjCdNu8Vcp9+Ft6o
	m+vb3cw4aK3lLiJ+NtgoE04XQUHp6/U3q9rR0Ge29JjKbFBjhK6pl3ld0V6ovsI+1+2IYDwn7XY3t
	SnRzqHBOVLxao9CYu6GLk+klSg2ELXHorindg2cYRgA+WPmopbqd+HahjJqph00Nng9eW66K8+6AD
	vAbdE8oHOTGroWyxftJVrqsmmWBVoUwP+C8fDTYrjgjrWKxG1KvSve3gR1CojFA+Q1bRE0SitFO8Z
	zR47N0DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqy-0000000A65V-45n9;
	Fri, 19 Dec 2025 10:36:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqr-0000000A5ul-3ysN
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-0004ah-F4; Fri, 19 Dec 2025 11:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-006RUT-0n;
	Fri, 19 Dec 2025 11:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-1BnB;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:20:53 +0100
Message-ID: <20251219101453.2806980-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_023649_984051_6ED117BA 
X-CRM114-Status: GOOD (  11.30  )
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
Subject: [PATCH v2025.09.y 17/49] ARM: mmu: have zero_page_remappable() check MMU status
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

zero_page_access() and zero_page_faulting() call remap_range(), which
assumes the TTBR was initialized to page tables set up by barebox.

It's thus not safe to call them from generic code prior to enabling the
MMU, but we are doing just that. In preparation for fixing, let's make
zero_page_remappable reflect MMU status.

While at it, also drop the duplicate zero_page_access() prototype.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251028143238.1782982-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 594850b2de53300ae25c103e4ec88b2dac418106)
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



