Delivery-date: Sat, 20 Jun 2026 07:06:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wanuH-007q0m-2e
	for lore@lore.pengutronix.de;
	Sat, 20 Jun 2026 07:06:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wanuH-0004uB-7m
	for lore@pengutronix.de; Sat, 20 Jun 2026 07:06:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JMgvwz+MpQyrYywaMwqaxpcSmvGA98bvcdPnPCyaWkM=; b=F496QasKA497tQwr35RMz3C65B
	rlSjVZBGSqXXNabJ/xIWWq18Qfkbep70YY1GW1Gs9th9ElWsvpkSQ0uRwHcDV9zoBnjWlT9dxHb9v
	75EGo2U7LDdQr5Rz+d//DiLRtZN6k24Qx3PXvsoT/uXodycCyj67DZntPuYdDJPDAKLjvM27/3FDt
	SxIRKdXSc5AjPFZTXXA8Lafse2rz3LuALj7KrwdNJEHzIyMqQny1yeZPtBleVQmoqOOnYa26P8TfP
	g10WSjsngcDMk4h9dC/nzfJ2H4Qa57M+2t4kbqClESE/JxOza/ySfqel9qf5xmzefnFufWiYaMFuM
	g9I79TKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wantD-00000003ARj-0Gei;
	Sat, 20 Jun 2026 05:05:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wantA-00000003ARP-2Tus
	for barebox@lists.infradead.org;
	Sat, 20 Jun 2026 05:05:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1want8-0001lK-Rd; Sat, 20 Jun 2026 07:05:02 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sat, 20 Jun 2026 07:04:56 +0200
Message-ID: <20260620050459.1444430-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260619_220504_635565_007AF635 
X-CRM114-Status: UNSURE (   7.24  )
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
Subject: [PATCH v2] ARM: mmu: skip cacheable page flushes for empty ranges
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If we end here with a size of zero, region_end will become -1 and
is a sure way to lead into confusing issues.

__arch_remap_range() skips 0-sized regions, so do likewise here, so
all of arch_remap_range() is 0-size-region safe.

Reported-by: Ben Pye # Matrix
Fixes: b71103970c9b ("ARM: mmu: skip TLB invalidation if remapping zero bytes")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - early exit instead of panic
  - Add Fixes: tag
---
 arch/arm/cpu/flush_cacheable_pages.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/cpu/flush_cacheable_pages.h b/arch/arm/cpu/flush_cacheable_pages.h
index a03e10810dc7..a5c54864d446 100644
--- a/arch/arm/cpu/flush_cacheable_pages.h
+++ b/arch/arm/cpu/flush_cacheable_pages.h
@@ -28,6 +28,9 @@ static void flush_cacheable_pages(void *start, size_t size)
 	size_t block_size;
 	mmu_addr_t *ttb;
 
+	if (!size)
+		return;
+
 	region_start = PAGE_ALIGN_DOWN((ulong)start);
 	region_end = PAGE_ALIGN(region_start + size) - 1;
 
-- 
2.47.3



