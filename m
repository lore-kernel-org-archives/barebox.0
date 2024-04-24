Delivery-date: Wed, 24 Apr 2024 08:41:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKL-00EOO4-0m
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 08:41:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKJ-0000ZS-AI
	for lore@pengutronix.de; Wed, 24 Apr 2024 08:41:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=05WFhnHCsynzKw4Q3p8yAcm+sY4wWSp5X0gVKMJSdjo=; b=2sshD2TaoUbOIIbCkWihukgxVm
	l9inZgAEfLCfWcPgTqaaFruvmXf6nKj5t59r9RRTWQPeVHI4/3oiQimNBEClJgGmr7wYqvYMNLZUE
	VLWhBazR3qMA4INmgDEsTrUvrM3r4zLTmgbMbKfuMcg4q0z1fqjN5XIiOpKCwCv/GWc5rxE1eh1iZ
	9H7XPsIp0Get1GikWhFmI8+OTSSO21sQrRJg7W/MCxR79DWQBzcYdebi7I8fYFT37SkrLky0hmrra
	2n2PwWmYBnQS4rNvSdf9tuo6hfIAc6C4WqNT6YZMeiymTJTTDsLJWLlLFV6eSLV3Bmx4JtmkE79JK
	u8B4oUpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJm-00000002vCN-07O0;
	Wed, 24 Apr 2024 06:41:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJc-00000002v6P-3fFC
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 06:41:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-0008BV-Ka; Wed, 24 Apr 2024 08:41:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00E1yV-2Y; Wed, 24 Apr 2024 08:41:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJS-00F8kt-3C;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:36 +0200
Message-Id: <20240424064058.3608016-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_234113_032742_73D8D58A 
X-CRM114-Status: GOOD (  11.11  )
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
Subject: [PATCH master 01/23] habv4: use DMA-capable memory for getting event from BootROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We pass the buffer to the BootROM and we aren't sure yet whether this
requires us to do cache maintenance[1].

Anyhow, it's a tiny bit better to at least have cache line alignment for
data exchanged with TF-A and the BootROM, so do that.

[1]: https://lists.trustedfirmware.org/archives/list/tf-a@lists.trustedfirmware.org/message/D3PIAW7G2B3JQIH5BGMUZZKHPGNMXUUT/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hab/habv4.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index a1d823ed2512..0f5618116e22 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -12,6 +12,7 @@
 #include <init.h>
 #include <types.h>
 #include <mmu.h>
+#include <dma.h>
 #include <zero_page.h>
 #include <linux/sizes.h>
 #include <linux/arm-smccc.h>
@@ -581,7 +582,7 @@ static uint8_t *hab_get_event(const struct habv4_rvt *rvt, int index, size_t *le
 	if (err != HAB_STATUS_SUCCESS)
 		return NULL;
 
-	buf = malloc(*len);
+	buf = dma_alloc(*len);
 	if (!buf)
 		return NULL;
 
-- 
2.39.2



