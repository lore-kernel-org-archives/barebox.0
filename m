Delivery-date: Wed, 13 May 2026 15:57:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNA5N-001H7b-2E
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 15:57:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNA5J-0008Va-9N
	for lore@pengutronix.de; Wed, 13 May 2026 15:57:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qiAwjV+WXnnVeJAeKWNxRpdyvFt268vXYOkl1xpe8U8=; b=WblmUuvObmucgdrdPGVUlbq3jy
	vXJoBrG9NU/BRl36yLzqPbUjBbs73ti79teOWZQJxnJbqKYCsgFa2O30PMbvWFz192nHkjPy9R+3p
	0ildhRdUNwYqkAroaZkdbD+pj4G/vpjJ/cVtVosWYoVCIgmvB7LrhYTyXG8EpD9Sov+SNlg6Csocs
	e3019e+pynTEr9wTHvkpZ3q/G1CuiBiHhDN1AssfCwBBaXSMKRwu03lUqfVSsTMYZGfIDjPdTiiPS
	ROYZTSc6JezFxyGvJ1fA4oqSjhof8MDFdIqQfHPbp1leLK6zT9DDTeEYbe/pXYuBGMkEJQefI6fq1
	TKC1byhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA42-00000002q1l-35TZ;
	Wed, 13 May 2026 13:55:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA40-00000002q0O-2qhg
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 13:55:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA3z-0007xt-2Y; Wed, 13 May 2026 15:55:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA3z-000bi5-00;
	Wed, 13 May 2026 15:55:51 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA3y-00000001CbW-3pyw;
	Wed, 13 May 2026 15:55:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 May 2026 15:55:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-rockchip-fixes-v1-2-a4055849a014@pengutronix.de>
References: <20260513-rockchip-fixes-v1-0-a4055849a014@pengutronix.de>
In-Reply-To: <20260513-rockchip-fixes-v1-0-a4055849a014@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778680550; l=1300;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=gJQpIyMECbCtwA8DgK5cF8Rjt1/4SJK6xQ2uqdMhvF8=;
 b=jqCxFth0v8tq9FKTFTfpH3WKocH22ZlXAsJt1xaqqTBexwVEvudnmYNAOBHcrS4E0KW7d3p97
 xaqtRw7JC3DB+NmJEODMn0P2AHksL/nxj7qevmd9kPM1PmtI574pGR0
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_065552_725219_352A7817 
X-CRM114-Status: GOOD (  11.38  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: rockchip: dmc: substract
 ROCKCHIP_DRAM_TFA_CARVE_OUT from memory regions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With 516447c05c rockchip_ram() gets the physical memory base/size
instead of ROCKCHIP_DRAM_TFA_CARVE_OUT already honored. With this we
not only have to add ROCKCHIP_DRAM_TFA_CARVE_OUT to membase, but also
substract it from memsize. The latter was forgotten, add it now.

Fixes: 516447c05c ("ARM: rockchip: separate physical DRAM start from usable start")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index 9218f794f9..0b977b4593 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -161,13 +161,13 @@ static size_t rockchip_ram(phys_addr_t membase, resource_size_t memsize,
 		 * doesn't need any gaps in the DRAM space.
 		 */
 		base[0] = membase + ROCKCHIP_DRAM_TFA_CARVE_OUT;
-		size[0] = memsize;
+		size[0] = memsize - ROCKCHIP_DRAM_TFA_CARVE_OUT;
 
 		return 1;
 	}
 
 	base[i] = membase + ROCKCHIP_DRAM_TFA_CARVE_OUT;
-	size[i] = min_t(resource_size_t, RK3588_INT_REG_START, memsize) - membase;
+	size[i] = min_t(resource_size_t, RK3588_INT_REG_START, memsize) - membase - ROCKCHIP_DRAM_TFA_CARVE_OUT;
 	i++;
 
 	if (i < n && memsize > SZ_4G) {

-- 
2.47.3



