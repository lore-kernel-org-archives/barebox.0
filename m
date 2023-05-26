Delivery-date: Fri, 26 May 2023 08:35:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R2g-00Ei9C-Dv
	for lore@lore.pengutronix.de; Fri, 26 May 2023 08:35:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R2d-00069I-MQ
	for lore@pengutronix.de; Fri, 26 May 2023 08:35:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cCS95AZ5XdPqCGWiNjz3I3kxBgAJ3PkFJcTGdz+p3ho=; b=oOmCSmYHk0kiKP0IciWVK6X1RZ
	W20+yMKobX+svPBaxLimzpRJPG2DO3GLvzB7RdAe5ppnC5HZPSbZ0CmDcF8sF3+JUgXvJC38nS1U+
	ECMWLPt+aQmHGZFENCP5UnLQWwmUgpqSutoBsP6U6IIiDt3XeSNJ8Y2gxwMp9UY6ZQQu99WDqsCbH
	OVg1adFEbWpUoz02Q1co+311KF8do9zpoMEUGfD4vq1xKQXUfVr7JDR5bVZS+cxnNV8bHeH4nIMCj
	zor0DT+bg/WRZmW0AaO/aoXA3zjYUSdbjGvQBm/SeUPDG0j896M2UYYaNcOiJ2cRHuj9xs2vRXN3g
	e6VC0X0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R1Y-001GdK-1C;
	Fri, 26 May 2023 06:34:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R1U-001Gc3-2W
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 06:34:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R1R-0005rt-Vy; Fri, 26 May 2023 08:33:58 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R1R-002tTe-Aj; Fri, 26 May 2023 08:33:57 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R1Q-004oPw-6g; Fri, 26 May 2023 08:33:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 May 2023 08:33:54 +0200
Message-Id: <20230526063354.1145474-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230526063354.1145474-1-a.fatoum@pengutronix.de>
References: <20230526063354.1145474-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_233400_816595_35654CBF 
X-CRM114-Status: UNSURE (   9.78  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 4/4] ARM: mmu: invalidate when mapping range uncached
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

memtest can call remap_range to map regions being tested as uncached,
but remap_range did not take care to evict any stale cache lines.
Do this now.

This fixes an issue of SELFTEST_MMU failing on an i.MX8MN, when running
memtest on an uncached region that was previously memtested while being
cached.

Fixes: 3100ea146688 ("ARM: rework MMU support")
Fixes: 7cc98fbb6128 ("arm: cpu: add basic arm64 mmu support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 4 ++++
 arch/arm/cpu/mmu_64.c | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index a324ebf71a55..c4e5a3bb0ab2 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -327,6 +327,10 @@ static void early_remap_range(u32 addr, size_t size, unsigned map_type)
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
 {
 	__arch_remap_range(virt_addr, phys_addr, size, map_type);
+
+	if (map_type == MAP_UNCACHED)
+		dma_inv_range(virt_addr, size);
+
 	return 0;
 }
 
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 940e0e914c43..63e70963224a 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -191,6 +191,10 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsign
 		return -EINVAL;
 
 	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs);
+
+	if (flags == MAP_UNCACHED)
+		dma_inv_range(virt_addr, size);
+
 	return 0;
 }
 
-- 
2.39.2



