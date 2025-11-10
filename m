Delivery-date: Mon, 10 Nov 2025 21:35:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYcA-00HVPo-0e
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc5-0002K6-UD
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oLAOo7d4iHqYOlb/3pNVTBF0crnGum3VlMI9gX/OntA=; b=XHZ93iEmwbSwZbm5Zre0gLijBA
	KYELWfBpx1oYPa8kSxbbIwC1lNYINVilL6K8NTB8aSm7niheh1hoSWygxaAr570rTPIrntThQlm8C
	Yci5HKlI6+xHfalF5ezoOnPomo1nZCO3tpibK9wpHLpk9gfb0QPHBmPiHjPIQdz5PQHbnOKT3qFlp
	jh8nIgZiQWu+lHAmVWs+b51dK5LUF6Oo33fJDst1bDho26RrB5cWuhMwKIe/dF6nOut/tFQsUQJrj
	K5sqj+y8vJFPypqY0B4GGinB0+gj3bJhv47eqLobTX2rZAsmbfqQL9ExYo/hF7RePsUhY+sxCOOCB
	sVkqCmzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbF-000000065Xi-3WqZ;
	Mon, 10 Nov 2025 20:34:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbB-000000065S9-1kwX
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 20:34:51 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-FN; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-1-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_123449_462035_29B91FF0 
X-CRM114-Status: UNSURE (   7.35  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/23] pbl: compressed-dtb: add missing includes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add missing includes else compressed-dtb.h depends on the include order.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/compressed-dtb.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/compressed-dtb.h b/include/compressed-dtb.h
index cc5fbb2769847c0338a6e462e2d4bdd0d77f0174..ff7c932f5b01145cdad39e9d59f222b724b9f9d1 100644
--- a/include/compressed-dtb.h
+++ b/include/compressed-dtb.h
@@ -2,9 +2,11 @@
 #ifndef COMPRESSED_DTB_H_
 #define COMPRESSED_DTB_H_
 
+#include <linux/align.h>
 #include <linux/types.h>
 #include <linux/sizes.h>
 #include <asm/unaligned.h>
+#include <fdt.h>
 
 struct barebox_boarddata_compressed_dtb {
 #define BAREBOX_BOARDDATA_COMPRESSED_DTB_MAGIC 0x7b66bcbd

-- 
2.47.3



