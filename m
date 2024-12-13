Delivery-date: Fri, 13 Dec 2024 22:01:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCnH-007jMf-0x
	for lore@lore.pengutronix.de;
	Fri, 13 Dec 2024 22:01:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCnH-0001Kh-6c
	for lore@pengutronix.de; Fri, 13 Dec 2024 22:01:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l8oiLT+6jpww/R/01UaaLdSbm5pkJd6CS+vgiB+Tlpc=; b=jNLydyDCD1pUbXNP1p61nogLus
	a3LYVZcSRg+h898dWs45Zxr6m+Fdj/4YKXdqx1RJNMcNg5stcWOwxlW7FGJCGUvXY95HXdp+NJ5xc
	ghSrQ8g11XwMjTOH5RPqvBR0VyYLFs/etaHwtM9qQuZwGt2jLrumQEVaj1MUZlyHN3EX/SXXeEQCV
	ydy6mPl/4T5c1lDco9zpoDJ9d00FKWysL29R4sxWJ0sfQVbE/5p7efI+fRo1lwuz1vLKOoiVgERRF
	Vfzq7zxYqe0Ws/FlUBry6yDtW7Mdjb9GzKyNVsBMyXTSrdugRRw6vn2Hitrd6XZ3S/Pbmdkiz3mn+
	IY8I+l/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmu-000000051tr-31ls;
	Fri, 13 Dec 2024 21:01:28 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmp-000000051pJ-2gHP
	for barebox@lists.infradead.org;
	Fri, 13 Dec 2024 21:01:25 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id D1454E74071; Fri, 13 Dec 2024 22:00:26 +0100 (CET)
Received: from astat.fritz.box (a89-182-99-197.net-htp.de [89.182.99.197])
	by lynxeye.de (Postfix) with ESMTPA id 8F1C3E74084
	for <barebox@lists.infradead.org>; Fri, 13 Dec 2024 22:00:20 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Dec 2024 22:00:13 +0100
Message-ID: <20241213210015.357249-7-dev@lynxeye.de>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241213210015.357249-1-dev@lynxeye.de>
References: <20241213210015.357249-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_130123_865178_F4F630D9 
X-CRM114-Status: GOOD (  10.56  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/9] ARM: zynq: zed: switch to entry function with stack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use the upper non-contiguous OCM region vacated by the
BootROM as the entry stack.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index 6e5a17d7eff5..c681764bd009 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -286,7 +286,7 @@ static void avnet_zedboard_pbl_console_init(void)
 	pr_debug("\nAvnet ZedBoard PBL\n");
 }
 
-ENTRY_FUNCTION(start_avnet_zedboard, r0, r1, r2)
+ENTRY_FUNCTION_WITHSTACK(start_avnet_zedboard, 0xfffff000, r0, r1, r2)
 {
 
 	void *fdt = __dtb_z_zynq_zed_start + get_runtime_offset();
-- 
2.47.1



