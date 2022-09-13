Delivery-date: Tue, 13 Sep 2022 14:52:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY5OS-003gPN-Le
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 14:52:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY5OR-0007uL-5E
	for lore@pengutronix.de; Tue, 13 Sep 2022 14:51:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=opFxiqZf4/MSD6xXpHqUhHQf+0Fd5DPLEhgypg0CbdI=; b=JdAlvGvTqxFriT16i3sOxAURRx
	5Ff85VdW6eAab820mjDDSsVzfkzkB8cY7irwrindfIBp4BCG7GgmXNeoPymV2jSp2v1U9BCzwyyoK
	cG7EPWsdWsBQUCRWMUlm9FajT5Z/0KPJ8J9fjTrmjMg4LTRnDwYNxS0UznZgtZ7RUo0PU2+nzX58j
	1eXFKywPnLqdXataFJYio7Tc2rp5vcXDr6a5VpaPvAc0J0UKU4bEf8RRiobwgHfwHDqn+H0cNiQ0i
	wqrkHZd5K5QZUsBkGvWZxhTYe/ClQ7T6toIB1en7z41yJ61Yaytbfq5TFtZ63Nm634W5JB3nyYr/9
	IZCkI9NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5Mr-00ADLd-4J; Tue, 13 Sep 2022 12:50:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5MX-00ADAQ-0s
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 12:50:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MT-0007Km-8U
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:57 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MT-000VCc-W1
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:56 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MR-005fmk-J4
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:55 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 13 Sep 2022 14:49:49 +0200
Message-Id: <20220913124954.1346533-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220913124954.1346533-1-m.felsch@pengutronix.de>
References: <20220913124954.1346533-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_055001_116776_08FF9210 
X-CRM114-Status: GOOD (  10.79  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] RISC-V: cache: fix local_flush_icache_all enabling
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



