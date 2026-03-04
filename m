Delivery-date: Wed, 04 Mar 2026 12:01:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyp-007xQ5-24
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 12:01:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyo-0005p9-Je
	for lore@pengutronix.de; Wed, 04 Mar 2026 12:01:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gGBLg23BXQGm1D3qqxoJeND4198S0d1/lKf4hJcEzs=; b=LeEuQ1sWHbuD4p
	MzgCTJsLLu/Zp/Y0h/2mEdFtSI3dTD032bMV6BAALlCTCq4vj+Xovpu38+vCgymjRutK7lNijB7Cz
	IkV4+0b4HGVQwEFu2eamkR97oc1gLKe6HW7Cbz34dE44F6X6F1blvZrxC9kxbT3ABUI6fPNKBVGMf
	kxSed5N/LI2O7L+C1U58EBf8u6NYnTwE4L4nku3VLtWDOSjTHF8O7htl5waaY+hx6+EkCYvg9+TN3
	riW8bu5/hyjylA8i+jpNk7d2UIHNlKe80NeWbE6ForTxO7lm+xey6zYkkG1hrWAjBAcYTc3TQqJLb
	XWPdNC7e1OUMQoR7G6xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyK-0000000H23J-3g94;
	Wed, 04 Mar 2026 11:00:56 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyH-0000000H1zy-3mGt
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 11:00:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=0gGBLg23BXQGm1D3qqxoJeND4198S0d1/lKf4hJcEzs=;
	b=SCeBWZkujidSTk8cy/rbxULQkQMFV9SYA6RJ0sjRPOfeGc5deb6kpY1MdKk2Ouha7ZGcfYah6NRH0
	 nLMS5uqG1NqyoT1kLT3f945CBejJGA7yvusVEJqM2A4Y6Ug0gB7AfNqbbCssJQHmlrMPyn1gayHkX5
	 1WVVTcsvq/iR1Ko+6rCBDp/nPywAIxkbLlG9IEnixMjjPpr+i5QtBnY0uOQii5TfUXlHnlxjlCEhMd
	 Rr9AW3sgX4XDtuAjnwqy6o2LKva0QSaUZBFNJZA+2U8ycifWUvvkrtGAZbxarFQVtJ6MlBEpEUWxVQ
	 xftHG2PjrMWuHHZK0kzrGl/Byry2gtA==
X-MSG-ID: 65066c59-17b9-11f1-bcce-00505681446f
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  4 Mar 2026 12:00:06 +0100
Message-ID: <20260304110013.495725-3-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
References: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_030054_074511_C30FC0EC 
X-CRM114-Status: UNSURE (   6.76  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] ARM: boards: protonic-rk356x: Remove VIN measurement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The VIN measurement is inaccurate and requires storing channel and
multiplier information in the board code. This becomes cumbersome
when more boards are added.

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 arch/arm/boards/protonic-rk356x/board.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/boards/protonic-rk356x/board.c b/arch/arm/boards/protonic-rk356x/board.c
index 51d08b6705..c01438847a 100644
--- a/arch/arm/boards/protonic-rk356x/board.c
+++ b/arch/arm/boards/protonic-rk356x/board.c
@@ -38,11 +38,6 @@ static int saradc_get_value(const char *chan)
 	return voltage;
 }
 
-static int prt_rk356x_get_vin_mv(void)
-{
-	return saradc_get_value("aiodev0.in_value2_mV") * 22;
-}
-
 static bool prt_rk356x_get_usb_boot(void)
 {
 	return saradc_get_value("aiodev0.in_value0_mV") < 74;
@@ -87,7 +82,6 @@ static void prt_rk356x_process_adc(struct device *dev)
 	}
 
 	pr_info("Board id: %d, revision %d\n", prt_priv.hw_id, prt_priv.hw_rev);
-	pr_info("VIN = %d V\n", prt_rk356x_get_vin_mv() / 1000);
 }
 
 static int mecsbc_sd_of_fixup(struct device_node *root, void *context)
-- 
2.43.0



