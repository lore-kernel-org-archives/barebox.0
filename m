Delivery-date: Thu, 11 Dec 2025 21:35:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnNj-00AQFY-0S
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:35:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnNi-0007dw-Km
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:35:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GXH/P4Pwk8qD6OHkRa9yPlpqBq0KEXZjH/RAa56m9ms=; b=QI13tHMAZKRN4k1WrUbRP6nMlL
	GbChku2UStzZeUHfYv+HY4aOXPE+Iy3RAHa12dqXpnj3kpCiGIIbYaezUccyADNNoYa+JqmdeBwv7
	HFiT5f05qE3bhij5867QMewTun+yJhf5ubeiPuDbCqam18jyC0MNCx7okZZwmuqeXhjrJ12+IBVVH
	uo6PYps/ZlJmHzDi8geiqsTxP8NlvH7DSI+otQq2X0H8rU0pSj3dlVWpYUXTemBEFvZl7vPLOIh26
	LYHS59b05nKI6slGn+9vqVyPCVPLkPDiqtRYb3Wj8WlRxUHW1FzX6VFon+cYs7rzeXevyUlwKgPOL
	cPSh7sVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnNM-0000000HF5D-1R7R;
	Thu, 11 Dec 2025 20:35:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnNL-0000000HF4p-03tp
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:34:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=GXH/P4Pwk8qD6OHkRa9yPlpqBq0KEXZjH/RAa56m9ms=; b=du7pVq9nCfrzXvhYMp1LI69M6x
	fj/JtdZwErP4nXKcexQddHjIUocQBegv/3RIbNnuW/lvV0xUitMwLjWKIhN9/88Yv2AhbmLKcvCFP
	0w6txgLQn+21aon5j4SaVixHjd/g8euXmc4vWA4yynKqhSniQrqrvmSstjBB8FmHK/r3DNnoEu94W
	ow2+RlLINCriCIN7wbZLsqOCfDDWvJO0D38lv4UEiSM21UYFb86o+N8SgiiDy8MDIocOo7cGU9zSp
	Za5U8KZNfUNed/H1c9hQQlgqauwwLA96NR6md7kkwwgmMig94HBEa4/Zx4jkVZORBcYHM+7gusKxB
	QsIRwH2Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmVn-0000000FZSM-18uQ
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:39:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnNH-0007WW-RC; Thu, 11 Dec 2025 21:34:55 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnNH-005BWF-28;
	Thu, 11 Dec 2025 21:34:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnNH-00000009ese-2LlU;
	Thu, 11 Dec 2025 21:34:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:34:54 +0100
Message-ID: <20251211203455.2300589-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_193939_496855_24610837 
X-CRM114-Status: UNSURE (   6.81  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: mmu: include <asm/io.h> from <mmu.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make sure virt_to_phys() is always defined, include the relevant
header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mmu.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/mmu.h b/include/mmu.h
index 29992ae1d6c6..f79619808829 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -27,6 +27,7 @@
 #define MAP_DEFAULT	MAP_ARCH_DEFAULT
 
 #include <asm/mmu.h>
+#include <asm/io.h>
 
 static inline bool maptype_is_compatible(maptype_t active, maptype_t check)
 {
-- 
2.47.3



