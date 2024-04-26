Delivery-date: Fri, 26 Apr 2024 12:42:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s0J2P-0016qW-0v
	for lore@lore.pengutronix.de;
	Fri, 26 Apr 2024 12:42:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s0J2O-0008HS-K1
	for lore@pengutronix.de; Fri, 26 Apr 2024 12:42:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=R3Gf1tZg83R1B/Zl9u6xzFN4pt2qIc7W6N3Ltg+N3zY=; b=Us3gkcHMRV0oQWKKgxMIdIfCoR
	iloYu5cSi0M167gGB7KxhIrbKfDXpdtj2BXDMrSwPqQAlF6z69XyA7br8dLWfGuWRRlN7JloqMOzI
	/GwukEgUiR0Hlb8U9LZRWcdRlD3kzF71uNUkDoeErckSP6T1PMmammsGJof8j/X2gajYVWeJMoFAx
	D20zJW7lv7nObH4dbuJ8YNb5gvIwDFcoYK6xRNVrmk3BfiPS6Z4mo/TKquZPY060NCXn0/9GcWuVg
	5UwtKuAn3OIvzGjkFiOwShHLKOckoKW7OgdxGYu+P0UBcmpkh7hE0SAa3EGU17n7UdxhxAHar46CP
	3jrKkAPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0J1i-0000000CBOo-45kq;
	Fri, 26 Apr 2024 10:41:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0J1c-0000000CBLI-3PN8
	for barebox@lists.infradead.org;
	Fri, 26 Apr 2024 10:41:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s0J1Z-0007gy-1S; Fri, 26 Apr 2024 12:41:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s0J1Y-00EQcg-LI; Fri, 26 Apr 2024 12:41:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s0J1Y-00Ev4O-1q;
	Fri, 26 Apr 2024 12:41:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 Apr 2024 12:41:47 +0200
Message-Id: <20240426104147.3555933-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_034152_934389_021089EE 
X-CRM114-Status: UNSURE (   7.68  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] sandbox: dma: fix recursive dependency between headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If <dma.h> includes <linux/kernel.h> via <asm/dma.h>, it will end up
including <linux/slab.h>, which in turn includes <dma.h>.

This leads to use of symbols before definition, so remove the
<linux/kernel.h> definition.

Fixes: 9b12861830e0 ("include: linux/slab: use dma_alloc for kmalloc")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/include/asm/dma.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/include/asm/dma.h b/arch/sandbox/include/asm/dma.h
index ab84166846a2..2dbce1ad6c9a 100644
--- a/arch/sandbox/include/asm/dma.h
+++ b/arch/sandbox/include/asm/dma.h
@@ -8,7 +8,8 @@
 #ifndef __ASM_DMA_H
 #define __ASM_DMA_H
 
-#include <linux/kernel.h>
+#include <xfuncs.h>
+#include <linux/types.h>
 #include <linux/string.h>
 
 #define DMA_ALIGNMENT	64
-- 
2.39.2



