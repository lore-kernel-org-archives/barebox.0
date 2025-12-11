Delivery-date: Thu, 11 Dec 2025 21:25:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnDv-00AQ2V-05
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:25:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnDu-0005c6-GZ
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:25:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jI3zEQ8GBF+2jQz2Yb+Wqxf0rvkC8twtOO/ZKaIxaIE=; b=pPYk1kEZOOnfXDOr3sO7ArC4nU
	ViJRnMPC6hZT42EcNswIdGHUUQjhPfHjGthHJQ2zpPHSGGcdDJiLkqB6TBf/KHWlZT+y6dym/BC1B
	5GKXweqtbuH/5d6xtp3Zx1zGSHG2FFAyvtilBnNTiX4wC03btoujCiIQkoXvr/b0P/mc0ooACxpzp
	vqp0/owntlB3tO5FgyGwvfCZEDeAdGWXbEFHFodnIYSmwZR2/I1GY9yhSSMPR8tC+7cV5S3vBR5fQ
	UH7u+RvpPjZzibAMMQFcA+2pK0EUneY8AgrMISXNbV4pXnQ1xkmwKjOuZp0uBU++OA5D+wNTMkMzE
	ZJHgXqmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnDN-0000000HDXC-3fmZ;
	Thu, 11 Dec 2025 20:24:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnDK-0000000HDW2-3F0q
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:24:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnDI-0005RN-Hx; Thu, 11 Dec 2025 21:24:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnDI-005BQF-1B;
	Thu, 11 Dec 2025 21:24:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnDI-00000006rPs-18sB;
	Thu, 11 Dec 2025 21:24:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:24:28 +0100
Message-ID: <20251211202435.1626910-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211202435.1626910-1-a.fatoum@pengutronix.de>
References: <20251211202435.1626910-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_122438_808539_E9509F74 
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] malloc: define malloc_add_pool outside of TLSF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function is currently being used by the EFI payload init ode.
Define a stub to allow allyesconfig to build it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new change
---
 include/malloc.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/malloc.h b/include/malloc.h
index 31a2ff1b3d8e..bee998cd9079 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -26,6 +26,9 @@ void *malloc_add_pool(void *mem, size_t bytes);
 void malloc_register_store(void (*cb)(size_t bytes));
 bool malloc_store_is_registered(void);
 #else
+#include <linux/bug.h>
+static inline void *malloc_add_pool(void *mem, size_t bytes) { BUG(); }
+static inline void malloc_register_store(void (*cb)(size_t bytes)) { BUG(); }
 static inline bool malloc_store_is_registered(void) { return false; }
 #endif
 
-- 
2.47.3



