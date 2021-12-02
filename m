Delivery-date: Thu, 02 Dec 2021 08:44:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1msglO-0006bH-8h
	for lore@lore.pengutronix.de; Thu, 02 Dec 2021 08:44:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1msglN-0002mV-BB
	for lore@pengutronix.de; Thu, 02 Dec 2021 08:44:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1C0B10kzrh0CBtiSJcQc6G4CD5SciJwD45JZCzt2gE=; b=H/AMUWSVVfPanK
	PUvl7x6mSngFYIL+QpH7oiwa4xBYpnL6UMDZs9avH1cbQ0Dn7wj4TNGnBl3d8WqLjHQZsLa1RPEcK
	mrXSPF7G+hYrPzP0U88NH01cYlaCh7SdWLYh8pWVG8Unm+HCYrbWJl+usk0P7I0fgZzKPonhF++br
	fyRqbFt+/izSp6CUBst5BiViyg/C5KGvCEbv5u8DaX77TAhzP9Cw0fTYl0UlX9Ivb4OG0m6aPSBEW
	09xmlOE/uh80ZleU2+Q1KoksZxEZ8RVVzu5HIZCoEc5TfQZOkvlLYH9YOTnTxI5potjwJkbRuPQ77
	dc1iV6XNjrIaJwMSWk9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msgkB-00BDC7-J9; Thu, 02 Dec 2021 07:43:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msgk7-00BDAx-2t
 for barebox@lists.infradead.org; Thu, 02 Dec 2021 07:43:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1msgk5-0002VD-Ne; Thu, 02 Dec 2021 08:42:57 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1msgk5-000qJK-6w; Thu, 02 Dec 2021 08:42:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Dec 2021 08:42:55 +0100
Message-Id: <20211202074256.200325-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211202074256.200325-1-a.fatoum@pengutronix.de>
References: <20211202074256.200325-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_234259_147582_8BC414EB 
X-CRM114-Status: UNSURE (   9.39  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: turn arm_mem_stack_top into a macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This makes it possible to use for static initialization, like done in a
follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index d70de6d5e6e6..0481d3391c26 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -97,14 +97,13 @@ static inline void arm_fixup_vectors(void)
 
 void *barebox_arm_boot_dtb(void);
 
-static inline unsigned long arm_mem_stack_top(unsigned long membase,
-					      unsigned long endmem)
-{
-	if (IS_ENABLED(CONFIG_BOOTM_OPTEE) || IS_ENABLED(CONFIG_PBL_OPTEE))
-		endmem -= OPTEE_SIZE;
+#define __arm_mem_stack_top(membase, endmem) ((endmem) - SZ_64K)
 
-	return endmem - SZ_64K;
-}
+#if defined(CONFIG_BOOTM_OPTEE) || defined(CONFIG_PBL_OPTEE)
+#define arm_mem_stack_top(membase, endmem) (__arm_mem_stack_top(membase, endmem) - OPTEE_SIZE)
+#else
+#define arm_mem_stack_top(membase, endmem) (__arm_mem_stack_top(membase, endmem) - OPTEE_SIZE)
+#endif
 
 static inline unsigned long arm_mem_stack(unsigned long membase,
 					  unsigned long endmem)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

