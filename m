Delivery-date: Fri, 18 Jul 2025 15:45:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uclPA-001Dpg-2C
	for lore@lore.pengutronix.de;
	Fri, 18 Jul 2025 15:45:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uclPA-0003QR-5R
	for lore@pengutronix.de; Fri, 18 Jul 2025 15:45:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zDXk4bZqNPrd3PcdWkMwLPGj6YE9PtkGMb7Q1X1PKwM=; b=Wo5PqBID4rVQAfwZVImV65p/if
	mooibj7ZwsgEeZlwYaZ6bSA9fi5iPwfdAeg8LA75LWiyyXhit6nnIYcIY+VexVcyGKv5H8BN+bWeR
	MjkP9sAa8idUj0FVy2IDiQuWVM3xkEzV0UIXoizi8PHpw8sqYbcEhl04iHga9ayd5f41noN8onkG5
	sYA+GouX4iSICxSHkdSQFpJUQNNQPVDkbNvBcj1huw2rX750Z7JeClpVhufXvh86b2E1q0pqjfTG+
	5C7Xf3XMhEO3umRm9r5baJFHGD2IpU0dnMpS5tFuoPwR/IsJ6e8JGamz22v/+BTPgrMCYSUlCcDcJ
	UMzJT5sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uclOT-0000000Ciu9-20SX;
	Fri, 18 Jul 2025 13:44:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uclH9-0000000Chx0-0MIK
	for barebox@lists.infradead.org;
	Fri, 18 Jul 2025 13:37:24 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1uclH5-0005zt-Gj; Fri, 18 Jul 2025 15:37:19 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 18 Jul 2025 15:37:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250718-clk_register-v1-1-009e23a7da84@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAA1OemgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDc0Nz3eSc7Pii1PTM4pLUIl3jtDRLizRzYxNTw1QloJaCotS0zAqwcdG
 xtbUAqQtX/V4AAAA=
X-Change-ID: 20250717-clk_register-3ff98f73451e
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-19c33
X-Developer-Signature: v=1; a=openpgp-sha256; l=1238; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=nMX7giP/lLh1lMZb4PD4cVjaElH72VpMCbo9euNGWfQ=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYsio8uPTuXPEtMRmyu8d04yCNNLXdD78eLFhTspi8bLNx
 2QM/z5W6ihlYRDjYJAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAExEYhojw07F2/Vftli9njz/
 RsISg+n7lopp1xWfD/fo9t/cNMPqw0mGfyZX/s2tZ3mW9yZ5usOM4/acr27r901l2qHcn2/16Yf
 YZm4A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_063723_137140_DA964E42 
X-CRM114-Status: UNSURE (   7.97  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clk: clk-gpio: Use clk_register instead of bclk_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

GPIO-gated clocks wrongfully used barebox clock interface which leads to
bugs due to clk not being initialized from init->ops.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 drivers/clk/clk-gpio.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/clk/clk-gpio.c b/drivers/clk/clk-gpio.c
index dc61c88b9f..3f9760c921 100644
--- a/drivers/clk/clk-gpio.c
+++ b/drivers/clk/clk-gpio.c
@@ -96,7 +96,6 @@ static struct clk_hw *clk_register_gpio(struct device *dev, u8 num_parents,
 	struct clk_hw *hw;
 	struct clk_init_data init = {};
 	const char *parent_names[2];
-	int err;
 
 	clk_gpio = xzalloc(sizeof(*clk_gpio));
 	if (!clk_gpio)
@@ -116,11 +115,7 @@ static struct clk_hw *clk_register_gpio(struct device *dev, u8 num_parents,
 	clk_gpio->hw.init = &init;
 
 	hw = &clk_gpio->hw;
-	err =  bclk_register(&clk_gpio->hw.clk);
-	if (err)
-		return ERR_PTR(err);
-
-	return hw;
+	return clk_to_clk_hw(clk_register(dev, hw));
 }
 
 static struct clk_hw *clk_hw_register_gpio_gate(struct device *dev,

---
base-commit: 89bf1fcc998fc5fea0ce613d9930dd9ee39c0fb2
change-id: 20250717-clk_register-3ff98f73451e

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



