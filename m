Delivery-date: Wed, 04 Jan 2023 08:30:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pCyEI-001Ds5-QG
	for lore@lore.pengutronix.de; Wed, 04 Jan 2023 08:30:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pCyEH-0006oW-0m
	for lore@pengutronix.de; Wed, 04 Jan 2023 08:30:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+Y8OOQB0a5Hhhit1nUv03+Jp+FvIMM9QZsUH9xwyjh8=; b=mvBni6G+MMaXCsTld57PBMZaVk
	CKIljRUNRdxI480ooBCblRA7Tq3fQE9XLx+bSnMMreVeoMdCEek9fIs7jtBQ1SGXPaPZ7m0DjfO5I
	mylFYVY4he18VJMRlVElrhQv50svu3CHdzzBoeMf4g67LozxvpBp7OjpRFw+HtPXXmYrE7Ldmz4RR
	wdeCX/rccPe/VNQF3ebyy7XitHGsyG1QyzpafgnbufO4cbCcp/0NqERj2xGZmvCPnXdWzoOyOQtJm
	kmoaPeqASti9VQXkXFaHXbXzhzsMhVVCbedrtbqP0ja+/yVYfd3I7BSI4NWi3QcsvwyXItKM+1pOJ
	lRPGDDrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCyCz-007NCh-Cy; Wed, 04 Jan 2023 07:29:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCyCl-007NBM-Tq
	for barebox@lists.infradead.org; Wed, 04 Jan 2023 07:29:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pCyCj-0006U6-Kd; Wed, 04 Jan 2023 08:28:53 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pCyCj-003jQe-0V; Wed, 04 Jan 2023 08:28:53 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pCyCi-00FUtB-7T; Wed, 04 Jan 2023 08:28:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  4 Jan 2023 08:28:48 +0100
Message-Id: <20230104072848.3693607-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_232901_386258_8B7BC475 
X-CRM114-Status: UNSURE (   9.37  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: asm: simplify arm_mem_stack_top
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

<asm-generic/memory_layout.h> always defines OPTEE_SIZE and sets it
to zero when CONFIG_OPTEE_SIZE is undefined. As CONFIG_OPTEE_SIZE
definition is dependent on BOOTM_OPTEE || PBL_OPTEE, we can replace
the #ifdeffery and directly use OPTEE_SIZE in the macro.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 2dcd4153200f..515525e49d31 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -80,13 +80,7 @@ static inline const void *arm_mem_scratch_get(void)
 	return (const void *)__arm_mem_scratch(arm_mem_endmem_get());
 }
 
-#define __arm_mem_stack_top(membase, endmem) ((endmem) - SZ_64K)
-
-#if defined(CONFIG_BOOTM_OPTEE) || defined(CONFIG_PBL_OPTEE)
-#define arm_mem_stack_top(membase, endmem) (__arm_mem_stack_top(membase, endmem) - OPTEE_SIZE)
-#else
-#define arm_mem_stack_top(membase, endmem)  __arm_mem_stack_top(membase, endmem)
-#endif
+#define arm_mem_stack_top(membase, endmem) ((endmem) - SZ_64K - OPTEE_SIZE)
 
 static inline unsigned long arm_mem_stack(unsigned long membase,
 					  unsigned long endmem)
-- 
2.30.2



