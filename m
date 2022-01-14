Delivery-date: Fri, 14 Jan 2022 09:43:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IBi-001siN-FR
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 09:43:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IBh-0001jS-94
	for lore@pengutronix.de; Fri, 14 Jan 2022 09:43:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xU5C6XgTjTmwcioyM3Gp8QgH0C+AdWSJJQdiPT2VDAo=; b=sWCmTLxG06CVPw
	4nf42Xb59T1oaJmz19+8tD/EeLOpqXZY/lwdGgQCUNUSB34GRjoQYahVdaFLOeBH8/uVf0i/HJJ7F
	ctFvpu64Chepb/hDy/5I8DJhvBZdFsBSb5DxViYPz6Act3EOxP4pq98v/JZHi4373xsF6IUhvfESK
	+Rf4QFIE7oXvjYKRkTFWjYdE95yG77o1M5qL3mOhdU6x704zlkVZkwWzZVRU6BhKT+rSp3YU/vKe5
	OOjlmudLaTTA33KBHH4Vu8WWnmfEdNL4hVg8rWKbK1XyVD5RZRl/gN2JogVB+d4ynL5t8mZRFlbbX
	kkhyspu+r+eFCe6GBu8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8IAW-008Jxv-Gq; Fri, 14 Jan 2022 08:42:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8IAQ-008JwX-3e
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 08:42:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n8IAG-0001Po-Tz; Fri, 14 Jan 2022 09:42:28 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n8IAG-001IML-FM; Fri, 14 Jan 2022 09:42:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Jan 2022 09:42:26 +0100
Message-Id: <20220114084227.308804-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220114084227.308804-1-a.fatoum@pengutronix.de>
References: <20220114084227.308804-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_004238_184261_1D3C286A 
X-CRM114-Status: UNSURE (   9.60  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] ARM: turn arm_mem_stack_top into a macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This makes it possible to use for static initialization, like done in a
follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - drop OPTEE_SIZE on non OPTEE builds
---
 arch/arm/include/asm/barebox-arm.h | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 5018b3e2f57a..1c8cdfd16e62 100644
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
+#define arm_mem_stack_top(membase, endmem)  __arm_mem_stack_top(membase, endmem)
+#endif
 
 static inline unsigned long arm_mem_stack(unsigned long membase,
 					  unsigned long endmem)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

