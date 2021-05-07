Delivery-date: Fri, 07 May 2021 12:29:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lexjx-0004FP-My
	for lore@lore.pengutronix.de; Fri, 07 May 2021 12:29:49 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lexjw-0001ju-Uu
	for lore@pengutronix.de; Fri, 07 May 2021 12:29:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hfgDQbKBZ/iIwy+xMwiw2rReRtpBBCQvYzBwyffRryA=; b=Mp29ceGwIM4XYtDcGTMubkDTyq
	VMh/DaYCjvjmwLGwzRhkFDGQsdI2NRQwtToIB5vE0os6Ox8nIO8eE3wZ4VYMly+N8TKYGwUPdwkfK
	M+yadWnH/1OJT3Zik3uhmDIpFaTUKVp/d3Qf1wLiyafGKAjWsHHTzfzBfVkHRYGoOQZx5RhGqYhbw
	ooVYQh8aOH589nqR5XjIFoZsXJBXmAii/flRlzEH4nNJs4io9nveQNwumOGfsipQ3bgPz54s+iKhB
	KHdH61Zz9F5X4GshcD2FeQcyRPywNMA2UhVtINNRnIth6ULBFDtsLh+oQJzSXA7nMuOheqX16kxhG
	VSnwsj+w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lexiz-006pYQ-5f; Fri, 07 May 2021 10:28:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lexhj-006p5d-Na
 for barebox@desiato.infradead.org; Fri, 07 May 2021 10:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=KhX89SApH/FNgCrU24FZo0T1b7mgFc1taay/bTqWMHc=; b=ZrVK3wuUqCVcOl04q88Z2W9EDu
 YxiYTadq47xBcN6jvFjOz2uz+S4covfDaMF6CqJi5NDsYjAZzJ+lWhrlUHI9HcdgL7YGgBAC/YCu4
 KjI58uhMk3qIuRGzXXque2HcbNzXz8bTKcvdN/Yc/uzW1syJKjhTA1Ccc/H4k3ZZ3PWpxQrfjqiFb
 CuAYLXMTJI5Urc2etip6BprMjatUDDIoj2yZ/iiwTTFmgtmp8mmkXDZIcnfM0GjuQny3nbPyk1BNZ
 B/zqVp1UgqlnsPalQF0M4w4jq7ScWatr925JYG1AyMMKJErSpfjjRCVoXGXslJLPHVgPkPlA9ACoS
 4A+pleQg==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lexhf-006mSU-57
 for barebox@lists.infradead.org; Fri, 07 May 2021 10:27:30 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id A8889100006;
 Fri,  7 May 2021 10:27:20 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Fri,  7 May 2021 12:27:15 +0200
Message-Id: <20210507102715.490841-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_032727_347349_34CDF442 
X-CRM114-Status: UNSURE (   8.32  )
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
Cc: Ahmad Fatoum <ahmad@a3f.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! RISC-V: erizo: drop mach-erizo directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Erizo can't be built without DEBUG_LL at the moment, because
debug_ll_ns16550_init is not defined when DEBUG_LL is off.

Add new debug_ll_init() which expands to nought when CONFIG_DEBUG_LL=n.
---
 arch/riscv/boards/erizo/lowlevel.c        | 2 +-
 arch/riscv/include/asm/debug_ll.h         | 4 ++++
 arch/riscv/include/asm/debug_ll_ns16550.h | 2 ++
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo/lowlevel.c
index d9edb530b746..6acf15931cdf 100644
--- a/arch/riscv/boards/erizo/lowlevel.c
+++ b/arch/riscv/boards/erizo/lowlevel.c
@@ -8,7 +8,7 @@ ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
 {
 	extern char __dtb_z_erizo_generic_start[];
 
-	debug_ll_ns16550_init();
+	debug_ll_init();
 	putc_ll('>');
 
 	/* On POR, we are running from read-only memory here. */
diff --git a/arch/riscv/include/asm/debug_ll.h b/arch/riscv/include/asm/debug_ll.h
index 6ef26280d14e..6904460af98f 100644
--- a/arch/riscv/include/asm/debug_ll.h
+++ b/arch/riscv/include/asm/debug_ll.h
@@ -40,4 +40,8 @@ static inline void PUTC_LL(char ch)
 
 #endif
 
+#ifndef debug_ll_init
+#define debug_ll_init() (void)0
+#endif
+
 #endif /* __ASM_DEBUG_LL__ */
diff --git a/arch/riscv/include/asm/debug_ll_ns16550.h b/arch/riscv/include/asm/debug_ll_ns16550.h
index b09882ddad14..e208ef4fb1e1 100644
--- a/arch/riscv/include/asm/debug_ll_ns16550.h
+++ b/arch/riscv/include/asm/debug_ll_ns16550.h
@@ -168,4 +168,6 @@ static inline void debug_ll_ns16550_init(void)
 .endm
 #endif /* __ASSEMBLY__ */
 
+#define debug_ll_init debug_ll_ns16550_init
+
 #endif /* __INCLUDE_RISCV_ASM_DEBUG_LL_NS16550_H__ */
-- 
2.31.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

