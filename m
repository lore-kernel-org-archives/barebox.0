Delivery-date: Wed, 24 Apr 2024 08:41:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKL-00EOO5-0p
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 08:41:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKJ-0000ZU-Cp
	for lore@pengutronix.de; Wed, 24 Apr 2024 08:41:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=COncbXMgRApHyhi4HSD81BSJkUt5cqrVJxf+h37fEbA=; b=p5AiJWx/NIGi5sPfUHyfhBW761
	R2SrRb/FQrBy8tDHWsxxtlgKA+xZc6KfXpzdaPdOXItq9hLoW4LaZPJvBBYexWd2QFh+JGXA1kVs4
	LFN9BgMq+34Ul8a6oWDcRhD2BAfzXXafn1zCjrEbnNicOxm81f8ga9uXeGs2rwNlrjQR3g5yaSHHn
	kOSvsAYKnv8eOml/n/WrANNlbJNlPgHXE/YaEt3cKKUW1PVZqWJBQKJ4f5CChKRljnFtl7v6FD3gM
	VQJFxtjmdvaXTHhp4c25afopm0DPp0NRPpYLhzQtHEs3rOr1fMvMUtpk3ee1SmtIo9Cv9gaEC3Pig
	A52bxuVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJf-00000002v86-2Yko;
	Wed, 24 Apr 2024 06:41:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJW-00000002uze-2PNc
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 06:41:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-0008Bf-PS; Wed, 24 Apr 2024 08:41:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00E1yn-BJ; Wed, 24 Apr 2024 08:41:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-0s;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:42 +0200
Message-Id: <20240424064058.3608016-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_234106_785215_3D6F6A36 
X-CRM114-Status: GOOD (  10.13  )
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
Subject: [PATCH master 07/23] RISC-V: dma: fix dma.h inclusion
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dma.h include <asm/dma.h> first thing, so including <dma.h> from
<asm/dma.h> is pointless and using <asm/dma.h> directly is wrong.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/cpu/dma.c              | 2 +-
 arch/riscv/include/asm/dma.h      | 2 --
 drivers/soc/starfive/jh7100_dma.c | 2 +-
 3 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/cpu/dma.c b/arch/riscv/cpu/dma.c
index 511170aaa4e2..f3a1a8ec9ac5 100644
--- a/arch/riscv/cpu/dma.c
+++ b/arch/riscv/cpu/dma.c
@@ -2,7 +2,7 @@
 
 #include <common.h>
 #include <xfuncs.h>
-#include <asm/dma.h>
+#include <dma.h>
 #include <malloc.h>
 
 static void __dma_flush_range(dma_addr_t start, dma_addr_t end)
diff --git a/arch/riscv/include/asm/dma.h b/arch/riscv/include/asm/dma.h
index 56bcf06cc4af..e1829d8c9613 100644
--- a/arch/riscv/include/asm/dma.h
+++ b/arch/riscv/include/asm/dma.h
@@ -17,6 +17,4 @@ void dma_set_ops(const struct dma_ops *ops);
 
 #define DMA_ALIGNMENT 64
 
-#include <dma.h>
-
 #endif /* _ASM_DMA_MAPPING_H */
diff --git a/drivers/soc/starfive/jh7100_dma.c b/drivers/soc/starfive/jh7100_dma.c
index e3cfc8cf6534..5f6e78fc3632 100644
--- a/drivers/soc/starfive/jh7100_dma.c
+++ b/drivers/soc/starfive/jh7100_dma.c
@@ -4,7 +4,7 @@
  */
 
 #include <common.h>
-#include <asm/dma.h>
+#include <dma.h>
 #include <soc/sifive/l2_cache.h>
 
 #define SDRAM_CACHED_BASE	0x80000000
-- 
2.39.2



