Delivery-date: Fri, 12 May 2023 13:11:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgf-00F2Rt-JG
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:11:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgd-0004z6-Cq
	for lore@pengutronix.de; Fri, 12 May 2023 13:11:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OEC5IuOOjJLZg8kgYTWtzESJLk7fadLfCENWEvodZd4=; b=gEcrwaRNkUW2S4XH+j4z4fmi4C
	AksOyLvklK8KXFNZB+n1z0sJ2aLT/RwG3aTHL02BPW40VXVE/VblKOth4hJ51gc4fwDkUJu4aTLDU
	lNP6Vx9ztkuliYEzg2piz/M3QQxzZpUFsWl63czVGKJrzfKwrcmSDRklD8O7hosLP6dDEeAGg15LQ
	cQSdu/3LPdc7mSCbnybBhXIp0asN8s/5Y3SZ2wyGI901jbSfsCKKHiwrrLcwlGLAAO+eHj1AIUrkk
	u8A9hUkv7BaEk7thvhkJtDNQ6eWSf7PpvO0lWv0M9PDDLW9TFRhAXOMgumodKHae96plv3pByB7Y0
	zVxwxReQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfP-00Bk53-2m;
	Fri, 12 May 2023 11:10:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfE-00BjtG-2o
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf6-0003b3-VF; Fri, 12 May 2023 13:10:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf6-002wj0-35; Fri, 12 May 2023 13:10:12 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055De-2Q; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:09:45 +0200
Message-Id: <20230512111008.1120833-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_041020_950834_ABBC3522 
X-CRM114-Status: UNSURE (   9.52  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/27] ARM: cpu.c: remove unused include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

cpu.c doesn't use anything from mmu.h, so drop its incusion.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 5b79dd2a8f..cacd442b28 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -18,8 +18,6 @@
 #include <asm/cache.h>
 #include <asm/ptrace.h>
 
-#include "mmu.h"
-
 /**
  * Enable processor's instruction cache
  */
-- 
2.39.2



