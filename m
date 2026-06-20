Delivery-date: Sat, 20 Jun 2026 06:58:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wann3-007pw7-1I
	for lore@lore.pengutronix.de;
	Sat, 20 Jun 2026 06:58:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wann2-0000IO-PM
	for lore@pengutronix.de; Sat, 20 Jun 2026 06:58:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=exaKBP53Nnd3/kvj6mq8yDC3U2g3dPUDa45UsH3d7MI=; b=gq0KfAWiRucfH7dLK/4G5fXy92
	/I+1jcphN3/o4Fk3cSGFEgjSJ/h+is8qbfwoMU9K+58cQQk+IZ/GCFZqFblXYzeqKedJPrHIqF1om
	EnhwSKHN0hAGH0AUiUShRGkKc68t5Rj210ixCJY/LexhgwJC38mWGCSsyZS371y2j1WPmwAPrLKJd
	RhdAYEixS7wseMnW/jYJmuJNCvcjcheJ0NbUXBbPnFxdiI15wX4puGr38GYwVSLs8lDOijRlvCzCB
	yMcgYwhn7scyGAfCDHeTVjyAnjRmMGCQ63fBeSXAYuSPNISjHmIpNsE5M19hutd854CsP0orOJCMC
	twdooq+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wanlZ-00000003AHS-1i80;
	Sat, 20 Jun 2026 04:57:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wanlV-00000003AH7-39yF
	for barebox@lists.infradead.org;
	Sat, 20 Jun 2026 04:57:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wanlR-0003wh-5v; Sat, 20 Jun 2026 06:57:05 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sat, 20 Jun 2026 06:57:02 +0200
Message-ID: <20260620045703.1436676-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260619_215709_811056_FC82CE30 
X-CRM114-Status: UNSURE (   7.51  )
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
Subject: [PATCH] ARM: mmu: panic when calling flush_cacheable_pages with zero size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's probably always a bug to end up here with a size of zero, but
region_end becoming -1 is a sure way to run into confusing issues.

Just throw the towel in this case, so the user can make sense of the
backtrace.

Reported-by: Ben Pye # Matrix
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/flush_cacheable_pages.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/cpu/flush_cacheable_pages.h b/arch/arm/cpu/flush_cacheable_pages.h
index a03e10810dc7..b8574d77cdef 100644
--- a/arch/arm/cpu/flush_cacheable_pages.h
+++ b/arch/arm/cpu/flush_cacheable_pages.h
@@ -28,6 +28,8 @@ static void flush_cacheable_pages(void *start, size_t size)
 	size_t block_size;
 	mmu_addr_t *ttb;
 
+	BUG_ON(!size);
+
 	region_start = PAGE_ALIGN_DOWN((ulong)start);
 	region_end = PAGE_ALIGN(region_start + size) - 1;
 
-- 
2.47.3



