Delivery-date: Tue, 05 Aug 2025 20:37:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXc-007Nic-1l
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 20:37:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXb-0001D8-Ku
	for lore@pengutronix.de; Tue, 05 Aug 2025 20:37:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=phhzdzjMTXQPmBJE8mk+vB18X/iDL60c4oGTZJTSxsw=; b=yYcwBEZ+isQcG1YcnRHEChpHG/
	cn5GJT8l7CeOIuSBdzLl974KZejsYR6TiejmuCoNnpqUTAN6Mz1mm0NEk+IPYxpAepgFgQpz0aX27
	O0cpK/S45haGyIgD1H67JviDYFEQDliD2zxgOrPFsZT2ABiGGzxVNHZ3Y0lONZ5558dk/wfrVEXVj
	dW7tOYNwuIMMHCi+XSxSSDprJtfNGehTzyGZCJlkhBhFmmsyn4jbwL0/cBVwca80yZGU8QukaVNAX
	oDd+OD/xtZQeor4CFoiqO+tvCzi5iMNHOUTU7bN9E34VR1VcmRNftl1PrgMbUGddYP2C0KqAULdKF
	hee9n+mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujMX1-0000000DYVL-32OB;
	Tue, 05 Aug 2025 18:37:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLjR-0000000DSgc-0gV3
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 17:45:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujLjO-0003rm-HW; Tue, 05 Aug 2025 19:45:46 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  5 Aug 2025 19:45:39 +0200
Message-Id: <20250805174541.2606267-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250805174541.2606267-1-a.fatoum@barebox.org>
References: <20250805174541.2606267-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_104549_197357_4546F011 
X-CRM114-Status: GOOD (  10.05  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 6/8] ARM: mmu: setup trap pages before remapping R/O
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The order matters on ARM32, because arm_fixup_vectors() actually rewrite
the vector table, which is in the text area.

On ARM64, the order doesn't matter. As we are going to make the memory
bank remapping code common between both ARM32 and ARM64, move
setup_trap_pages, so the code between ARM32 and ARM64 becomes identical.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmu_64.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 7e6e89cb98c2..a770be7ed611 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -417,10 +417,10 @@ void __mmu_init(bool mmu_on)
 		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
 	}
 
+	setup_trap_pages();
+
 	remap_range((void *)code_start, code_size, MAP_CODE);
 	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
-
-	setup_trap_pages();
 }
 
 void mmu_disable(void)
-- 
2.39.5



