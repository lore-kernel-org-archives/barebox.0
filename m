Delivery-date: Fri, 12 Sep 2025 08:51:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwxdX-0028kC-21
	for lore@lore.pengutronix.de;
	Fri, 12 Sep 2025 08:51:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwxdX-0006z7-1A
	for lore@pengutronix.de; Fri, 12 Sep 2025 08:51:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=c1WIljuneBOHv24OKLilKSqCz2j8M1IU4N6ohEZ/Cb4=; b=pHt9CFffhUED503b94blrDmW/W
	8FhJJMPxyHAqHxs/3P4S66SriYKXuOah1/zu/rmtGW0mN8Kdkt5m6UtnlyIhYmp1oVgMOFwFN7CuF
	eJkQ4D8Uu3gxozoKGsry1BBGqTDuERB82FnhGhbGMdWS7e3oAVF2tx3bEjMJU2jtYX/Em9IZUauI0
	nQ0FVmLUoWpH6qo6w1jAry+hUq75WOsMh7Wrl3g5OzWElvcHN+igEHkSofqoVLSeW5ocXlhiC6OGK
	fVrofuQvLkOSGp7747xN8V692gZP9BfGGd4tK4scsnXigjtGzrs/0HGUbklTE/wZ5h523tjnGCH2Z
	Vx50dOuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwxcq-00000007UUr-3Gwh;
	Fri, 12 Sep 2025 06:51:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwxcn-00000007USo-2cPu
	for barebox@lists.infradead.org;
	Fri, 12 Sep 2025 06:51:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uwxcj-0006s9-T5; Fri, 12 Sep 2025 08:51:09 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Chali Anis <chalianis1@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 12 Sep 2025 08:51:04 +0200
Message-ID: <20250912065105.2443411-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_235113_661181_C149769D 
X-CRM114-Status: UNSURE (   8.37  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM64: setupc: drop erroneous cache flush of virt addr 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

relocate_to_adr copies around executable code and thus needs to
ensure coherence between I$ and D$. When the function was first added,
it didn't maintain cache correctly, because while it did call
arm_early_mmu_cache_flush(), back then that function did not invalidate
I$ after the D$ clean.

This likely went unnoticed, because a comment in relocate_to_adr
suggested that ic ivau is invalidating the I$, but in reality that
instruction did an unconditional invalidation of the single
cache line corresponding to virtual address 0 if it exists.

Back in 2019, sync_caches_for_execution() was introduced, which
correctly invalidates I$ after D$ cleaning, but the invalidation of
address 0 still remained.

On a 64-bit Tegra SoC with barebox running as EFI payload, it was
observed that this instruction was triggering a translation fault[1] at
address 0. The reason behind that is not completely understood, but it's
fixed by removing these two lines that are erroneous anyway, so let's do
that.

[1]: https://esr.arm64.dev/#0x96000147

Fixes: 868df08038a9 ("ARM: aarch64: Add relocation support")
Signed-off-by: Chali Anis <chalianis1@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/setupc_64.S | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index 2138c2a600fa..fd95187a0422 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -63,9 +63,6 @@ ENTRY(relocate_to_adr)
 
 	bl	sync_caches_for_execution
 
-	mov	x0,#0
-	ic	ivau, x0	/* flush icache */
-
 	adr_l	x0, 1f
 	sub	x0, x0, x20
 	add	x0, x0, x21
-- 
2.47.3



