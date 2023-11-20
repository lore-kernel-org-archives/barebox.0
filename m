Delivery-date: Mon, 20 Nov 2023 15:46:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r55Xr-001a7B-21
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 15:46:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r55Xr-00007x-M8
	for lore@pengutronix.de; Mon, 20 Nov 2023 15:46:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5/yGQnJpJ1qjlMyLasJjzampYf5v35e14C2cw11VMGo=; b=kXFyEQ+rkiAwFW1RV7HHjonyeI
	i2FC/9rwIEjvGYY05DtRUGyx0UIiKN896p2ui4cThTLoiABMccXM2esu3kMFi1sIoZ3e+is0uivRL
	sA4sE4N4ed1h0R40wMpQZ3WBBvVzjj95eCUI6z5tru6BYGYie/cL0N4eIcpf9X65MPnNnCoycSw61
	tpr8owhyT8FGf31QDcIzNZZMF4FuOZbDhw4BMFcAgji61V3A2SG6+S5bP0aU74Ofi4+QIN2B/+qXf
	ICYFdqbNCqONXRFoPzCi8K4UcGyn+Ae4TMCAiwOzLrpFchNeU9wiNsV4U5ZhGpF1C1UapMownIZhN
	qpo4eJgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r55WM-00CLxL-0E;
	Mon, 20 Nov 2023 14:45:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r55WF-00CLtc-0b
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 14:45:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r55WA-00089s-Q7; Mon, 20 Nov 2023 15:44:54 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r55WA-00ANGL-Dk; Mon, 20 Nov 2023 15:44:54 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r55WA-004Vsb-1C;
	Mon, 20 Nov 2023 15:44:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Nov 2023 15:44:52 +0100
Message-Id: <20231120144453.1075740-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_064459_288070_000C38DF 
X-CRM114-Status: GOOD (  10.88  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] ARM: mmu64: setup ttb for EL2 as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TF-A is often started before the MMU is initialized. There are some
exceptions though. On Layerscape  the TF-A (or: PPA in that case) is
started while the MMU is running. The PPA is then executed in EL3 and
returns in EL2. For this case setup the TTB for EL2 as well so that we
have a valid MMU setup when the PPA returns.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index b718cb1efa..716e717c72 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -297,6 +297,8 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 
 	el = current_el();
 	set_ttbr_tcr_mair(el, ttb, calc_tcr(el, BITS_PER_VA), MEMORY_ATTRIBUTES);
+	if (el == 3)
+		set_ttbr_tcr_mair(2, ttb, calc_tcr(2, BITS_PER_VA), MEMORY_ATTRIBUTES);
 
 	memset((void *)ttb, 0, GRANULE_SIZE);
 
-- 
2.39.2



