Delivery-date: Mon, 09 Oct 2023 13:53:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoph-001qYg-ML
	for lore@lore.pengutronix.de; Mon, 09 Oct 2023 13:53:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpopf-0002Gk-SU
	for lore@pengutronix.de; Mon, 09 Oct 2023 13:53:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FV7QmKKG3Uu2pRtNByHfP3YF0Mt3pQGQIH4IQrmU+fc=; b=r0nvrQWbARff6WhTpU1vNnJgL2
	iU0Y+CxQ8txsBmdJibdwAT1SV9MMQo6lV732V5iBZqW7ujAzTv0dDIpc+ZU7oqTiWYmNLRucsTlPP
	+pDrY5SHU+H5wUh76ZhElu1Ct4bMOzSyAvP6gcVT7KbFdjmfEHHEMEEOll3a58TtAsayIBzhMHjcp
	dbwc+S4UTRSRbr0HT/+1aI02T6bfkqR8EJ8JhFYXGoLPEJjnPGvSveg9gM0Q4FjlQkahzUoIeOum4
	LOnud47z1W8d/uAwDcQ43O7JoU8dTO0bmchG7MTKPvUlHi7B23Ttbv0NAZuZrtv6a/b2npPux0kJ9
	euFPnmww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpooX-00AWBg-27;
	Mon, 09 Oct 2023 11:52:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpooT-00AW9w-26
	for barebox@lists.infradead.org;
	Mon, 09 Oct 2023 11:52:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qpooS-0001fq-F4; Mon, 09 Oct 2023 13:52:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qpooS-000P3V-20; Mon, 09 Oct 2023 13:52:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qpooR-009nm9-3B;
	Mon, 09 Oct 2023 13:52:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Oct 2023 13:52:37 +0200
Message-Id: <20231009115239.2291016-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231009115239.2291016-1-a.fatoum@pengutronix.de>
References: <20231009115239.2291016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_045241_695982_0CE0F806 
X-CRM114-Status: UNSURE (   9.41  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] lib: stackprot: improve error message on missing HWRNG
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ERROR: no HWRNG available!
WARNING: stackprot: proceeding without randomized stack protector

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/stackprot.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/lib/stackprot.c b/lib/stackprot.c
index aa0e88603aae..c1cc19aadd09 100644
--- a/lib/stackprot.c
+++ b/lib/stackprot.c
@@ -1,5 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-#include <printk.h>
+
+#define pr_fmt(fmt) "stackprot: " fmt
+
+#include <linux/printk.h>
 #include <linux/kernel.h>
 #include <linux/export.h>
 #include <init.h>
@@ -27,6 +30,11 @@ EXPORT_SYMBOL(__stack_chk_fail);
 
 static __no_stack_protector int stackprot_randomize_guard(void)
 {
-	return get_crypto_bytes(&__stack_chk_guard, sizeof(__stack_chk_guard));
+	int ret;
+
+	ret = get_crypto_bytes(&__stack_chk_guard, sizeof(__stack_chk_guard));
+	if (ret)
+		pr_warn("proceeding without randomized stack protector\n");
+	return 0;
 }
 late_initcall(stackprot_randomize_guard);
-- 
2.39.2



