Delivery-date: Thu, 26 Sep 2024 13:24:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmbU-002yvE-1M
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 13:24:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmbR-0003Ee-Dq
	for lore@pengutronix.de; Thu, 26 Sep 2024 13:24:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JpRILQIgcMy8n1W4XMiLryP+ZKFydZMK5Deyw8zandI=; b=ygvuf7PYkLZTMeSFQkJ846x7eG
	3WkBqcksSV1VOMTbM/TnCtPfwABKIvk8PF6fjNknzAgoKNq4F05i5hqLdkmLIXQpd5LVsH8SU9CqV
	IF2KFOHsyHs7Gjv02EGhj+l3P2iCBXt9LzUeZQAbTQvSO+oktAzLpK9dMmzyQ2FZf+Tk2aNyMO3hF
	WeyPqVfjDDY0B/FSWGioP33im+lv+0TieMYRp4xazXX+ybJ1cDZtU692AMve9p3ONMVnkA9sE/CAO
	cRQ2GrzManPy273k/Tf8DbdfQcFiL851A4TK5clCPycTAXBn9MWQ7Vxevkp43nQ+NwobBYWlrLsAI
	+wqeeMTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stmap-00000008DsO-241k;
	Thu, 26 Sep 2024 11:23:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stmZ9-00000008DM1-0kRU
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 11:21:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmZ0-00019E-0u; Thu, 26 Sep 2024 13:21:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmYz-001fko-HS; Thu, 26 Sep 2024 13:21:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmYz-00Fi9J-2z;
	Thu, 26 Sep 2024 13:21:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 13:21:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240926-spi-gpio-v2-1-3bf7b511c8c0@pengutronix.de>
References: <20240926-spi-gpio-v2-0-3bf7b511c8c0@pengutronix.de>
In-Reply-To: <20240926-spi-gpio-v2-0-3bf7b511c8c0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727349697; l=741;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=tKczvVzmWRiLpfhssNJMY8oipOoSvXEHk1Sc2+cYohA=;
 b=jITRsq8r+RRTUGoiPc7BCwgW3uWaYffWd6x+ecOzNxdonIwQVbJ6k1R444GLuhfwMatpcFfRc
 HXo3+RVmx+QAhyth1rtZdTgeg9oEqTUhVf3cqX1eipd+UVIjscoxxyw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_042147_256616_FA89D9C7 
X-CRM114-Status: UNSURE (   9.95  )
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
Subject: [PATCH v2 1/5] spi: spi-gpio: actually delay in spidelay()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

spidelay() currently only is a no-op dummy function. Actually delay in
this function to avoid spi-gpio being faster than specified.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/gpio_spi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
index e5664df3fe..dc9f46ca45 100644
--- a/drivers/spi/gpio_spi.c
+++ b/drivers/spi/gpio_spi.c
@@ -48,7 +48,10 @@ static inline int getmiso(const struct spi_device *spi)
 	return !!gpio_get_value(priv->data->miso);
 }
 
-#define spidelay(nsecs) do { } while (0)
+static inline void spidelay(unsigned int nsecs)
+{
+	ndelay(nsecs);
+}
 
 #include "spi-bitbang-txrx.h"
 

-- 
2.39.5



