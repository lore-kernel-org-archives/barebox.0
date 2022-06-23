Delivery-date: Thu, 23 Jun 2022 12:38:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4KEK-00Bqtz-HC
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 12:38:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4KEK-0006NQ-8w
	for lore@pengutronix.de; Thu, 23 Jun 2022 12:38:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ijgx3vWK1cSkkoUVswY0tyiLVMZJC8ddHxTO3z1R0vM=; b=gRyeG+N0C95vDfFVESlVFEBchx
	c0iqeI+RLwE4BziyVb6GBTaWM9/3yNNqNYxxMBYvrlOUh5RtS6r8rS/DadZZ/xKU7JW9TpkZysfpC
	osi/ZxW2FLQ4CDhpXLDHUW4voHmTBqzm0JB3PoQOLjb1PmQmxj9iwXAF0VQztgN64D85iNom2F9re
	4AXkrhsPBhJHfKIOAI3EzYhHiCuHHliKBdrFLqYK/6ds41Z9sNq6O2yqhT5g8lo+ywgxjM6O8LvAP
	dyzu6a1LNRv4qSxe+KgKcb+vT8s58JN3Q3mB6mdXZc5qI31/tR5YFNVWEUXoQRQF0NczFgKQTW4gv
	mTyIO1UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4KD7-00EZ2Z-Vm; Thu, 23 Jun 2022 10:37:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4KD2-00EZ1k-QI
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 10:37:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o4KD0-0006K2-PY; Thu, 23 Jun 2022 12:37:10 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4KCy-002DU3-MI; Thu, 23 Jun 2022 12:37:10 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4KCy-002qYV-Qz; Thu, 23 Jun 2022 12:37:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Jun 2022 12:37:08 +0200
Message-Id: <20220623103708.678094-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623103051.572885-5-a.fatoum@pengutronix.de>
References: <20220623103051.572885-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_033712_890671_36C6B25A 
X-CRM114-Status: GOOD (  10.34  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! ARM: i.MX8M: imx8mn-evk: disable DDRC memory detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Masked by patch not destined for master, that will change it
to board driver... Please squash.
---
 arch/arm/boards/nxp-imx8mn-evk/board.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/nxp-imx8mn-evk/board.c b/arch/arm/boards/nxp-imx8mn-evk/board.c
index 07e197ccedd2..cd58a5a397e3 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/board.c
@@ -9,6 +9,7 @@
 #include <linux/phy.h>
 #include <linux/sizes.h>
 #include <mach/bbu.h>
+#include <mach/esdctl.h>
 #include <envfs.h>
 
 #define PHY_ID_AR8031	0x004dd074
@@ -62,7 +63,7 @@ static int nxp_imx8mn_evk_init(void)
 	 * setup.  Until that's resolved, disable dynamic detection and
 	 * use only memory size specified in DT
 	 */
-	imx_esdctl_disable(1);
+	imx_esdctl_disable();
 
 	return 0;
 }
-- 
2.30.2



