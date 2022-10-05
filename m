Delivery-date: Wed, 05 Oct 2022 13:14:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1og2MB-006etK-Ex
	for lore@lore.pengutronix.de; Wed, 05 Oct 2022 13:14:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1og2MA-0004E4-6s
	for lore@pengutronix.de; Wed, 05 Oct 2022 13:14:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=opFxiqZf4/MSD6xXpHqUhHQf+0Fd5DPLEhgypg0CbdI=; b=wyBXINrM47Nb6h2OUudRe5inDK
	C6Rz1CKPW2+h2rquYC4fPzfYLYA8wxwQwjA1k7QwrWJhHM8JO535fb/3+YlIgo6mTK3z3UNewuGBr
	0RkfhjeqMeXkUGFfaG8nE2ng4t2fy4G7HO0dm5kLEKfAFJ9ml+Wx8rHNJ7lqJiBKFKHapD4P0nAQM
	PEkewOpAbNRqV22heZTR2/+A/BNGtHrIXXz83qxYm9lu8AwKwW4VszOiI9FXPtDknGzEUjQdUxKuE
	hG4k2o3RLHuyr8eqJYUwMWwqYw4X0XXmyVLtHv8BuyLxOD0x9l3xSk3aU3c4dK6+n0RgHntYEoVmb
	9rUH0ZCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og2K7-00DjOF-JA; Wed, 05 Oct 2022 11:12:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og2K3-00DjKc-6a
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 11:12:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K1-0003lJ-WA
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K2-004kI3-Mf
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:17 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K0-000crd-9R
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:16 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  5 Oct 2022 13:12:08 +0200
Message-Id: <20221005111214.148844-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_041219_260745_D72E9A14 
X-CRM114-Status: GOOD (  10.39  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/7] RISC-V: cache: fix local_flush_icache_all enabling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Commit fe181ffda9 ("RISC-V: support incoherent I-Cache") added the
support to handle non-coherent caches and introduced the HAS_CACHE
Kconfig symbol. The symbol must be used with CONFIG_ prefixed since this
is the final Kconfig symbol which can be used within the code.

Fixes: fe181ffda9 ("RISC-V: support incoherent I-Cache")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/riscv/include/asm/cache.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/cache.h b/arch/riscv/include/asm/cache.h
index 9a0b9326b2..6d69ed49bd 100644
--- a/arch/riscv/include/asm/cache.h
+++ b/arch/riscv/include/asm/cache.h
@@ -8,7 +8,7 @@
 
 static inline void local_flush_icache_all(void)
 {
-#ifdef HAS_CACHE
+#ifdef CONFIG_HAS_CACHE
 	asm volatile ("fence.i" ::: "memory");
 #endif
 }
-- 
2.30.2



