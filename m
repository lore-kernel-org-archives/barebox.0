Delivery-date: Mon, 07 Nov 2022 16:01:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os3dM-000W3s-NL
	for lore@lore.pengutronix.de; Mon, 07 Nov 2022 16:01:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os3dL-0007WH-AY
	for lore@pengutronix.de; Mon, 07 Nov 2022 16:01:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k3UEnSpTaqmtuMvwxndJpX4XnQaoyde9MHZSfwZTBcs=; b=O8SZmFdy+mlQxwUmBdobeTa+oJ
	Onqr7qOrRwgz3JFas9Z99tdAi5dWZpv3URPb8aI6LVGAVy5ydqtUZMZAElbqOdp5AIR8rbNooHnI8
	63LbVk785DsLxv+ef86FxspYm9ejJhaLFdxuBq4zliIy3D8ysblswY8Vb2+wSh6RD4T47ynVA+QFM
	D3QmTm+erD1IfDLot+cs79lFdm+YbC6gVVmU5EzqeTorcNhdfsKpTaWpSBxOARJmHsy4zDNoCpY7R
	BxV4IYTm9y3gav3A7ccnkXn5yiGiN4f7ggVwhWohqdr6LhbviZ+6QInFmtfkaxeSdudn2WIeReqh8
	vkfx+j9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3bd-00FT8T-IA; Mon, 07 Nov 2022 15:00:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3NT-00FKuD-N1
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 14:45:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NQ-00037w-35; Mon, 07 Nov 2022 15:45:28 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NO-002sID-Gr; Mon, 07 Nov 2022 15:45:27 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NO-0023fI-3C; Mon, 07 Nov 2022 15:45:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Nov 2022 15:45:22 +0100
Message-Id: <20221107144524.489471-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221107144524.489471-1-s.hauer@pengutronix.de>
References: <20221107144524.489471-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_064531_802480_57EE9D89 
X-CRM114-Status: GOOD (  10.77  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] bitops: include linux/types.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

linux/types.h includes asm/types.h. linux/types.h declares 'bool' we
need in the next patch, so include the former rather than the latter.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/bitops.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index 645fd2e6f6..84161e43a3 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -2,7 +2,7 @@
 
 #ifndef _LINUX_BITOPS_H
 #define _LINUX_BITOPS_H
-#include <asm/types.h>
+#include <linux/types.h>
 
 #ifdef	__KERNEL__
 #define BIT(nr)			(1UL << (nr))
-- 
2.30.2



