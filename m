Delivery-date: Fri, 24 Oct 2025 18:42:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCKru-00BNGg-31
	for lore@lore.pengutronix.de;
	Fri, 24 Oct 2025 18:42:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCKru-0002VV-95
	for lore@pengutronix.de; Fri, 24 Oct 2025 18:42:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ecnK3M9Onxt7AWDRnGPuuMhX96jkMz4pEImj9TAyyng=; b=zdcmLkIj9Li2yB9y2kRMYcjRgf
	zxDccme2l9UPRTQKVFrBUrV01ZWH2bUGQ2rDQ2tHYoaxEVqTVivq+dmqn8k0IJx3eNvdXL333oiUZ
	XhMo+G8845jhL8XX+/0Yl8WRRr+mbGh1DChm9foidGNt5YZoLIgtI/jJQ7XOrSJtOW6hIqBeDC7jn
	qVxYSJlOjTphypKUAmbm+QjIBzutUxpWGyppwUl21Eqf0QeHdIzvU99hjNMJ99A0sfAnLOSNqEJ//
	OwsgEtbQc3y+90uPChhiO7Sjm97n61WT3bJRU9FHo9WUTE+2DVG39TYhT/0hI+R147iPQt/f7ODXV
	B2AepVYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCKrF-0000000A0E3-3728;
	Fri, 24 Oct 2025 16:41:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCKrD-0000000A0Df-006v
	for barebox@lists.infradead.org;
	Fri, 24 Oct 2025 16:41:40 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vCKr9-0002Np-6j
	for barebox@lists.infradead.org; Fri, 24 Oct 2025 18:41:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 24 Oct 2025 18:41:27 +0200
Message-ID: <20251024164133.1937633-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_094139_060134_F554CA81 
X-CRM114-Status: UNSURE (   8.66  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: atf: document BL32 FDT argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Document the BL32 arg3 FDT passing to avoid confusions since OP-TEE
expects the FDT via arg2 and not arg3. That the TF-A is shifting the
arguments is not very obvious.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/cpu/atf.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/cpu/atf.c b/arch/arm/cpu/atf.c
index d01e20508c7a..7abe43a2703e 100644
--- a/arch/arm/cpu/atf.c
+++ b/arch/arm/cpu/atf.c
@@ -158,6 +158,14 @@ struct bl2_to_bl31_params_mem_v2 *bl2_plat_get_bl31_params_v2(uintptr_t bl32_ent
 
 	p.bl33_ep_info.args.arg0 = 0xffff & read_mpidr();
 	p.bl33_ep_info.pc = bl33_entry;
+	/*
+	 * The FDT address is passed via arg3 to the BL32. The BL31 which is in
+	 * charge to start the BL32, adapts this information and passes the FDT
+	 * via arg2 to the BL32 in case of OP-TEE since OP-TEE expects the FDT
+	 * within arg2. The reason for this behaviour is the TF-A legacy code
+	 * path which uses arg0 to specify the SPSR (AARCH32, AARCH64) state.
+	 * Therefore all OP-TEE call arguments are shifted by one.
+	 */
 	p.bl32_ep_info.args.arg3 = fdt_addr;
 	p.bl32_ep_info.pc = bl32_entry;
 
-- 
2.47.3



