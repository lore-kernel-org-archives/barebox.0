Delivery-date: Mon, 10 Nov 2025 21:35:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc6-00HVMr-0E
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc3-0002HT-P0
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9GSckm++zndjKw2Sb/LoTQGhh7e+j66OTSAr3Kk/tH0=; b=ng5XnBTQFDAGGHu0xsv0nCxw2Q
	Y8RLx/XAIcEKmKjuON6rk/QD0Pdfs1EZfHE0ti8bHtSs1UdHAHdEP3Og5eXg+p3Z9Joft4py854wm
	xzBj4z1fCLBaUpC+aHgx4Yh7rtPvKKl5aSlKm1KIfkM0aMmWlOi7E7Et4XCiC3q0e03AWtg2AXBmS
	XhVO8WDgfXleZZCVcGdjnpV31PI7B9EjfZx3eqGbrN499nrZ84Alm56vZNllOwtrjZoojYoA8hbKm
	O3TtAVsJIquxKP3gd4GOZUS23et4Ta6GUNkcMmVz+h+6UoCUnNUwZrVI+6OJS1xCrqwokG4siFbhH
	7ABGu+1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbD-000000065WS-4BGQ;
	Mon, 10 Nov 2025 20:34:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbB-000000065SB-1bp0
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 20:34:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-H6; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:43 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-3-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_123449_423015_B0545FEF 
X-CRM114-Status: UNSURE (   7.06  )
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
Subject: [PATCH 03/23] ARM: atf: add missing includes in atf_common.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add missing includes else atf_common.h depends on the include order.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/include/asm/atf_common.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/include/asm/atf_common.h b/arch/arm/include/asm/atf_common.h
index ab99cd3ac1428c0dda0b9d6841a721119d45e301..11d3801da1cc171cf1601163712203b3c7089c6f 100644
--- a/arch/arm/include/asm/atf_common.h
+++ b/arch/arm/include/asm/atf_common.h
@@ -11,6 +11,9 @@
 #ifndef __BL_COMMON_H__
 #define __BL_COMMON_H__
 
+#include <linux/sizes.h>
+#include <linux/types.h>
+
 #define ATF_PARAM_EP		0x01
 #define ATF_PARAM_IMAGE_BINARY	0x02
 #define ATF_PARAM_BL31		0x03

-- 
2.47.3



