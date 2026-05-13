Delivery-date: Wed, 13 May 2026 15:57:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNA5h-001H8h-1r
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 15:57:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNA5c-0000DU-A9
	for lore@pengutronix.de; Wed, 13 May 2026 15:57:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OPVtbYoCDQC/I1YGZU6nwW77Lf+7zdt/9mLmzNpHfQs=; b=yJfeeAAupAU0WoB3MrhhK8DEYz
	zqwC1D8nseNQkZRx/uDF9kCEN5AarjkbOdBH9ze05wlnhWfn4kwXNxc18y2oLVvdjbGQglIIl6K8a
	GRJvKIA1Duk//B1px4S2UZYQrZILS3ik2JLEiNPhZYMq3NYrtGyRc99gN48XvZCLEftkxJnY3aTEa
	l1eeZrLeDZFATnyu42SuacOD6IKSVQOafmm/bJtRZCtXEZ5WfpnDO1XR4er5fC+OxEiq8Px0i3P0r
	EeSLZrnxuJIxLyuAvLZNJO9rzDob1Y7xd554ITW77H68tZdcUxLoIN0NqBFRJcoLhtmzgtLMc3GV1
	McqkQ8DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA44-00000002q2O-3vZs;
	Wed, 13 May 2026 13:55:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA40-00000002q0M-2sAZ
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 13:55:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA3z-0007xs-1u; Wed, 13 May 2026 15:55:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA3y-000bi4-3A;
	Wed, 13 May 2026 15:55:50 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA3y-00000001CbW-3qpB;
	Wed, 13 May 2026 15:55:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 May 2026 15:55:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-rockchip-fixes-v1-3-a4055849a014@pengutronix.de>
References: <20260513-rockchip-fixes-v1-0-a4055849a014@pengutronix.de>
In-Reply-To: <20260513-rockchip-fixes-v1-0-a4055849a014@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778680550; l=850;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=EZEz7eVJUlUpUz2tR/iZiiaHDlq/2WsdygeBsiAMF64=;
 b=XhSXHbJ5Tf/t4kW5vOIB7dDafj2x2hs10ZTw0/QLXGyjXJgHehx9um8ACwcgzu3JKs8HMXaZ7
 YHlcOQra48ECKzRATQrrBauPPis9sjpPvkB9GkqPGkLb2yyKMel+94i
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_065552_729013_676B8869 
X-CRM114-Status: GOOD (  10.90  )
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
Subject: [PATCH 3/3] ARM: rockchip: atf: pass correct memsize to
 mmu_early_enable()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Second argument of mmu_early_enable() is the usable memory size. Pass
memsize[0] there which contains the memory size as the name suggests.
Without this the TTB ends up outside the DRAM.

Fixes: f2ae1a4a85 ("ARM: rockchip: atf: enable MMU in PBL")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 62ed73a920..3e2e18ac29 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -172,7 +172,7 @@ static void rockchip_atf_load_bl31(void *fdt)
 {
 	unsigned long bl31_ep;
 
-	mmu_early_enable(membase[0], membase[0] + memsize[0]);
+	mmu_early_enable(membase[0], memsize[0]);
 
 	bl31_ep = load_elf64_image_phdr(&bl31);
 

-- 
2.47.3



