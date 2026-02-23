Delivery-date: Mon, 23 Feb 2026 09:57:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRkw-004luO-0m
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 09:57:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRkw-0005me-Gc
	for lore@pengutronix.de; Mon, 23 Feb 2026 09:57:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=inT6xUiQuhIJ75/IY26INoxupYJxXJXotKULiSZHy2Y=; b=nSMK69S21RJ0gLzX/H/5M9qhJk
	8SSnHRyEHZXSM4SEkMGgaxp7FoKgTpF+hazIJw2fQaZxo6Cjnv4bhTilz38y+hyCa/HTh7NOcxvtk
	oGJYcTF9Z0R2RgUloPAKPXzONP2NOxZRngu9ZWqSsfYOWTMtf4gHAeMAmCmDsxmEvV1Ww0ICMgcjg
	I/Eeva3P9Omcr6n5ipoWkzUFIjqC1ssLnWa3QkoZ+6qmPG48eMgrl2h6Thm8ErKX7y9vxEXteSNut
	YZ2e7REx+PO+T6EwfDyChX8vqNOVSPqVAmg7B5CB8e6K3Hld+s68VUDfE6IntcJxtdaqHHOv8Ra6P
	bH1lijcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRkb-0000000HRrU-2CqT;
	Mon, 23 Feb 2026 08:57:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRkZ-0000000HRpt-1tZx
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 08:57:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRkH-0005a4-W8; Mon, 23 Feb 2026 09:56:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRkG-002COW-1O;
	Mon, 23 Feb 2026 09:56:49 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRkH-00000000mdp-2ziX;
	Mon, 23 Feb 2026 09:56:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Feb 2026 09:56:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-rockchip-optee-v1-2-723493320d42@pengutronix.de>
References: <20260223-rockchip-optee-v1-0-723493320d42@pengutronix.de>
In-Reply-To: <20260223-rockchip-optee-v1-0-723493320d42@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771837009; l=2099;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=yA1muhweNHv/LVblfzUg7kkH63m4BUKsdNNFzqkn/yg=;
 b=eKn0EJ7ul6EhQYdF7hl7+15ih7ctxFklxwy2g05VAvAPSp/nBGKmaS+Es1P5PRtncC9WHZekS
 KnuQBnTWvCRB94DTyngXQfVz8b3kCC1At22bg0tqcyr7hAbAXGfsqma
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_005707_504084_44EDC645 
X-CRM114-Status: GOOD (  15.53  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: rockchip: atf: Fix memend
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In rk3588_barebox_entry() we do a:

	endmem = rk3588_ram0_size();

This is wrong, as the function name says it returns the (usable in this
case) RAM size. It doesn't count from 0x0 as we assume, but from
RK3588_DRAM_BOTTOM, which means that endmem is calculated by
RK3588_DRAM_BOTTOM too low.

Fix this and while at it use rk3588_ram_sizes(), as this returns usable
DRAM start and size, so exactly the data we need.

Without this fix we run into trouble on boards with 4GB or more of DRAM.
On these boards the 32bit DRAM space is limited by the beginning of the
internal register space. Without this fix the end of the memory range
we pass to barebox overlaps the internal register space. This likely
only didn't blow up because we ultimately do not use the end of DRAM
as OPTEE_SIZE is substracted from it. OP-TEE is in the lower DRAM on
Rockchip though, so the space we reserve for OP-TEE in the upper DRAM
was just unused.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index c4ed84aae6..a57c8d94e2 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -194,12 +194,14 @@ static int rk3588_fixup_mem(void *fdt)
 
 void __noreturn rk3588_barebox_entry(void *fdt)
 {
-	unsigned long membase, endmem;
+	phys_addr_t membase, memend;
+	resource_size_t memsize;
 
-	membase = RK3588_DRAM_BOTTOM;
-	endmem = rk3588_ram0_size();
+	rk3588_ram_sizes(&membase, &memsize, 1);
 
-	rk_scratch = (void *)arm_mem_scratch(endmem);
+	memend = membase + memsize;
+
+	rk_scratch = (void *)arm_mem_scratch(memend);
 
 	if (current_el() == 3) {
 		void *fdt_scratch = NULL;
@@ -223,7 +225,7 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 	}
 
 	optee_set_membase(rk_scratch_get_optee_hdr());
-	barebox_arm_entry(membase, endmem - membase, fdt);
+	barebox_arm_entry(membase, memsize, fdt);
 }
 
 void rk3576_atf_load_bl31(void *fdt)

-- 
2.47.3



