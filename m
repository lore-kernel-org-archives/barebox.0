Delivery-date: Mon, 11 Aug 2025 08:44:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGf-009Ff2-2l
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 08:44:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGe-0002Tc-PF
	for lore@pengutronix.de; Mon, 11 Aug 2025 08:44:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUCN2Fiz5wLznaBCmMQA9RFyUpvrspe05XxTlIuJQAA=; b=miCiblEVqWFmrE
	lK9RJsWmXSJ0RQ70Uax4iTdnGscFrUkiEMI9OqOLCwUrXMafswbbz6PmM7G8jisIvibNtvYbrSC9g
	sx9RZlUdFcJi1R8Nnkhg7k3Y7U7Mb8wXI4UCSwDeB1uDgl5UwSAs8a77Hn8zuN+SRdwbuckhq9q2M
	QJ1ZRR9sDPYi+Rwn2gVu6sBZVS0JLFNx9v0RMs/aC0Y7QcVBTaL4xW1mCvqCq6YaDSnFeDZXTyLMt
	ZsuuwKiTawudl2NLp32wTI7YeC75SLJNSKSE12arrjjiuF6iQHyRSb2gbkQEqsq46PUIF99KJ+7Id
	1cENvL5dHPxMM3EvJ3lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMG4-00000006cmR-3WOh;
	Mon, 11 Aug 2025 06:43:48 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMD9-00000006cTF-3aBW
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 06:40:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=jUCN2Fiz5wLznaBCmMQA9RFyUpvrspe05XxTlIuJQAA=;
	b=ptMp1Qn1lyLRFkAsTv80oBzWecY6jAZQAsE4XcceI3XTdUcJE9OZ69EmSRwZEWAgKT+fbPSnTm3h1
	 2wCJ8sFo3LF3A/B681AosekFYJt9jNv37ifnBn+1fF5c8FgAIAgi3uxzvL/whviYqETCJYYMq0UXug
	 WUbKUe4AEyDaTTrYPvc4ZolMz9vFbNuorrZFQ51HilDtt27KDfgdfw2pRnV7acDjHriIoQBQGvLL3z
	 p1CEOFlxvEXdcrCcvB9B4Joox516CDOxmHywGlt+HnxIgdYEOcLyLGp5ywRlzFKQhXUM+XUzsmY0ly
	 y8Be7IVND0AMGDuBgJiaz01lV4NSuYg==
X-MSG-ID: 19bfd99d-767e-11f0-8663-0050568164d1
From: David Jander <david@protonic.nl>
To: barebox@lists.infradead.org
Date: Mon, 11 Aug 2025 08:40:24 +0200
Message-ID: <20250811064026.753776-7-david@protonic.nl>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250811064026.753776-1-david@protonic.nl>
References: <20250811064026.753776-1-david@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234048_061562_554DD777 
X-CRM114-Status: GOOD (  10.30  )
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
Cc: David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/8] gpio: gpio-rockchip.c: Add support for GPIO_TYPE_V2_2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is the version found in the RK3576.

Signed-off-by: David Jander <david@protonic.nl>
---
 drivers/gpio/gpio-rockchip.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 2c13e97b97..db8a045e8b 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -13,6 +13,7 @@
 #define GPIO_TYPE_V1		(0)           /* GPIO Version ID reserved */
 #define GPIO_TYPE_V2		(0x01000C2B)  /* GPIO Version ID 0x01000C2B */
 #define GPIO_TYPE_V2_1		(0x0101157C)  /* GPIO Version ID 0x0101157C */
+#define GPIO_TYPE_V2_2		(0x010219C8)  /* GPIO Version ID 0x010219C8 */
 
 struct rockchip_gpiochip {
 	struct device			*dev;
@@ -159,7 +160,7 @@ static int rockchip_gpio_probe(struct device *dev)
 	reg_base = rgc->reg_base;
 
 	id = readl(reg_base + 0x78);
-	if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1)
+	if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1 || id == GPIO_TYPE_V2_2)
 		gpio_type = GPIO_TYPE_V2;
 	else
 		gpio_type = GPIO_TYPE_V1;
-- 
2.47.2



