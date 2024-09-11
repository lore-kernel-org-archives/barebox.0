Delivery-date: Wed, 11 Sep 2024 13:16:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soLLG-003ShF-2j
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 13:16:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soLLE-0007Cm-Sx
	for lore@pengutronix.de; Wed, 11 Sep 2024 13:16:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0qs9HJ97QkF+aMxgQNugUBYuh918/H5F3awykGy7Uhs=; b=25j885ubumh+sqegsCGKjc6pfQ
	enIDvXbIeDlLczE+ucpN2YIk2obhN+95/Yr8E0CMpXyOrLtnraZUp46uyfouFvwczH5FIGSF1j6IN
	PM/knfahOxvHk0gCCMDAja6CUcTYwQ1e+35lp1yHeaUXPPl7qSHYq2Io9FdpMOP3LkbLb0xLENvCa
	m6flwMthv+vzppoAGNpik3oDOfm2hQKlac/zJZk2VtYM9EonJ+XUf2O7QYgO+5Wd9L0rxewdtWT9F
	TLRHhRcAMFxqkmO8NwKfGtsG3xhV57oBt0Eiv3oZGiv9gW9cXqZJkdm+WjX/pntkSbWNe7WoTkaXd
	zm7wTPyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLKg-00000009G4c-1DN0;
	Wed, 11 Sep 2024 11:16:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLHm-00000009FVm-2hiS
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 11:13:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soLHl-0005HS-4X; Wed, 11 Sep 2024 13:13:21 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soLHk-0077eJ-O5; Wed, 11 Sep 2024 13:13:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soLHk-00CR22-0d;
	Wed, 11 Sep 2024 13:13:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Sep 2024 13:13:18 +0200
Message-Id: <20240911111318.2963525-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240911111318.2963525-1-a.fatoum@pengutronix.de>
References: <20240911111318.2963525-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_041322_704144_1D536E79 
X-CRM114-Status: UNSURE (   7.94  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] include: stdlib.h: define prototypes for malloc/free
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

malloc(), free() and friends are declared in <stdlib.h> for hosted
implementations. Given that we have the header in barebox too, we should
define malloc(), free() as users porting userspace code may expect it
there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/stdlib.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/stdlib.h b/include/stdlib.h
index 0305970557df..c427cbc87f6e 100644
--- a/include/stdlib.h
+++ b/include/stdlib.h
@@ -3,6 +3,7 @@
 #define __STDLIB_H
 
 #include <types.h>
+#include <malloc.h>
 
 #define RAND_MAX 32767
 
-- 
2.39.2



