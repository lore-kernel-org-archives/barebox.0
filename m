Delivery-date: Mon, 08 Dec 2025 10:29:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSXYj-009ARV-1s
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 10:29:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSXYj-0004nk-2Y
	for lore@pengutronix.de; Mon, 08 Dec 2025 10:29:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=APEZVMVZ7s3raKkjPD6ISs6MBWzdFYRdtDt9K4fgcn4=; b=Khp3KiJppI2sV5GGPAwl8q9c2i
	eNF2fN2eFMe/GVue1mxAFiWunpQkW5/AkNzvB8ofAXDIyyNWbBUMGdq3yzjWRFenjGBVd2WNJA4A1
	xPxb7XhD4DPFe3twQ2+jefUJOReSC23rahWcBVYPQkhxRH0tLMYKk5Kia6rnJxeqbI209M31VZWA+
	8Q5ryNpCQaHhKR7IfTF+1gNAjGIdWkXm8PStfn+cZE+drlDfxOZmFW57vy7isNLHrFYfCm/rC8yWg
	0eKSdRC6b0cQx9xtug62Q+8kPbRf/gNmv92FMrUb8lXv+rGYyl5K9QQlwaEcCnjR1D409Pxf35DxZ
	gQI4akHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSXYC-0000000Cs3T-3R6H;
	Mon, 08 Dec 2025 09:29:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSXYA-0000000Cs2A-2R6r
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 09:29:00 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vSXY6-0004a6-Hk; Mon, 08 Dec 2025 10:28:54 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Mon, 08 Dec 2025 10:28:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251208-v2025-11-0-topic-optee-imx6-start-v1-1-0907128cdb8f@pengutronix.de>
References: <20251208-v2025-11-0-topic-optee-imx6-start-v1-0-0907128cdb8f@pengutronix.de>
In-Reply-To: <20251208-v2025-11-0-topic-optee-imx6-start-v1-0-0907128cdb8f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_012858_664195_7C10B8A0 
X-CRM114-Status: UNSURE (   9.02  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: make arm_mem_scratch respect the OP-TEE stack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

According to the ASCII-ART above, before the end of memory comes the
optee memory, then the scratch stack.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 11be8b8583..e630969796 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -159,7 +159,7 @@ static inline unsigned long arm_mem_stack_top(unsigned long endmem)
 
 static inline const void *arm_mem_scratch_get(void)
 {
-	return (const void *)arm_mem_scratch(arm_mem_endmem_get());
+	return (const void *)arm_mem_scratch(arm_mem_optee(arm_mem_endmem_get()));
 }
 
 static inline unsigned long arm_mem_guard_page_get(void)

-- 
2.47.3



