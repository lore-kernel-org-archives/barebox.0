Delivery-date: Mon, 09 Jan 2023 17:00:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEuZL-006oBz-M1
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 17:00:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEuZG-0002uE-TD
	for lore@pengutronix.de; Mon, 09 Jan 2023 17:00:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D7bM7OuCWQaBjDywBAJdILChzcRPlnEyR0NgYb/2IDc=; b=antMFYvu6k5KoWTGBEM4CKkSn4
	waUaJCDUfbg3mYF/y0Hs/8TU9l/kV1FgHzR1GYUOpIUci7408B0rxQRd1pE10+MQSGvCawPK80X7L
	vFhtbb6u8RpX7vuMqNy6lNLJEFvpDDj20dLPYPa7ynWozBxEvj1KOzD7mBwOyk30Xz6fL+mIfaRgo
	u3vUQriOXIVxu0fmx+5fhFYyMWVCaMlHRh0Va76JhUBnRae6nQ+R2TND8LbjPjHzDHPQgIN4QtTjg
	llmdKcDAThU7AfJiLdt1BrRjTXBUr5XcrrU9ze0GWfQrmkbV3iYiJ/Z8D7NydVOr1lNVwa2Fpu+aE
	KxodWIUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEuXz-002Rom-Hn; Mon, 09 Jan 2023 15:58:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEuXr-002Riu-Cc
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 15:58:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEuXp-0002WS-Ue; Mon, 09 Jan 2023 16:58:41 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEuXp-004sj7-AA; Mon, 09 Jan 2023 16:58:41 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEuXo-009Jbn-Et; Mon, 09 Jan 2023 16:58:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 16:58:33 +0100
Message-Id: <20230109155836.2220277-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_075843_573061_671D6F8A 
X-CRM114-Status: UNSURE (   8.15  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] of: gpio: include <of.h> in <of_gpio.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This header can't be used without types and functions declared in of.h,
so include that first.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/of_gpio.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/of_gpio.h b/include/of_gpio.h
index 9076c81e5462..30ff204baf9e 100644
--- a/include/of_gpio.h
+++ b/include/of_gpio.h
@@ -8,6 +8,8 @@
 #ifndef __OF_GPIO_H
 #define __OF_GPIO_H
 
+#include <of.h>
+
 /*
  * This is Linux-specific flags. By default controllers' and Linux' mapping
  * match, but GPIO controllers are free to translate their own flags to
-- 
2.30.2



