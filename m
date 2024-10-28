Delivery-date: Mon, 28 Oct 2024 13:16:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5OfC-001qpU-1f
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 13:16:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5OfD-0007FV-6a
	for lore@pengutronix.de; Mon, 28 Oct 2024 13:16:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bZ8kmP08vOIFNt4V5k8TPegTV2gSzGpdo24Kjipvjvs=; b=XTKs+q4OV1TnRksdo+ipwGmwDZ
	VULAu4+vTwF8WpIeolc8kY+EEYsXLDAZUfSqti4Bjfj9rHdjjaoqnqY4hhXFKImZmFLAU04aPX7pL
	iag4wQZRVJVP1ttAUqGtqpoYJ9taIVVvUS9d43H0wVeu+X/qHazupG8wcBoM+5Celhmrg4ZNWH8Mq
	3pU4kHjfAI2ZrmXARNy/2WLc9/gKUby3R9aROgeLLLajokTPuhw0RLXs91FpJnu2VPuMfbTJDqAHP
	ADq7CdOnR+WMcxye3N8mfqj+Zh6SIovHUw+GHlwIobItnXU44x3qAq8E6tx16UQ/WWo/hJdj8CB6N
	GjYgLEZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Oeb-0000000Ahzj-1grP;
	Mon, 28 Oct 2024 12:15:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Obn-0000000Ahdz-2W7T
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 12:12:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5ObW-0006l7-EJ; Mon, 28 Oct 2024 13:12:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5ObW-000qNb-0m;
	Mon, 28 Oct 2024 13:12:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5ObW-001L3c-0d;
	Mon, 28 Oct 2024 13:12:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241025-phy-class-v1-0-24bf51365a08@pengutronix.de>
References: <20241025-phy-class-v1-0-24bf51365a08@pengutronix.de>
Message-Id: <173011753419.319237.5098825794285168507.b4-ty@pengutronix.de>
Date: Mon, 28 Oct 2024 13:12:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_051231_672968_248184DA 
X-CRM114-Status: UNSURE (   5.68  )
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
Subject: Re: [PATCH 0/3] phy: some updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 25 Oct 2024 10:48:58 +0200, Sascha Hauer wrote:
> Collect all phy devices in their own class and implement
> of_phy_simple_xlate().
> 
> 

Applied, thanks!

[1/3] phy: make of_phandle_args constant
      https://git.pengutronix.de/cgit/barebox/commit/?id=b3d258e440d5 (link may not be stable)
[2/3] phy: put phy devices in class
      https://git.pengutronix.de/cgit/barebox/commit/?id=a55e60429963 (link may not be stable)
[3/3] phy: add of_phy_simple_xlate()
      https://git.pengutronix.de/cgit/barebox/commit/?id=1c393f5556a3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



