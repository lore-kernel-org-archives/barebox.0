Delivery-date: Tue, 06 Jan 2026 09:04:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd23l-001ovr-0S
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 09:04:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd23k-0000Hl-K6
	for lore@pengutronix.de; Tue, 06 Jan 2026 09:04:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8PcZIXWeibKiOdprgLVD93mEVKwrQ8S72tF9bsnbg/A=; b=N8xZGxcl6Dx5zsJXq4ahQJYzOT
	hw98dCAf+tmkSsrY8fwxK2cCobKIcd1PUpJnXCetFRa2EqIecA25v+7fJn3FXSp8293bzRHvUPTJ+
	a+YqiRVxWg519Ojc+twcSdtVTSKK4fOINCHT6F/ozkrR5+KlSrN19MuozqTpMKVDsoVK7u4SdLRsW
	2RlL1OsbR9ls6BCfBLd4eCEwv0wcRJ10QkrF/cvSKEMspdNYz9Z50g7oEdZ6aMCiIn9ZW9FJ8Pbfi
	lCEXolYn4fO7uCaSUK/BM/DNkhx11IgDsFP4dYYPnZkdjKmWZY42X14bFnEixygPRYzH2ZAeO2ckj
	1op2XKrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd236-0000000CaUM-1hxS;
	Tue, 06 Jan 2026 08:04:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd233-0000000CaTq-2GjA
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 08:04:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd231-0000Bl-EV; Tue, 06 Jan 2026 09:04:11 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd231-009JMQ-0q;
	Tue, 06 Jan 2026 09:04:11 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd231-000000089xt-0qCT;
	Tue, 06 Jan 2026 09:04:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260105151921.224540-1-a.fatoum@pengutronix.de>
References: <20260105151921.224540-1-a.fatoum@pengutronix.de>
Message-Id: <176768665119.1944916.14075351993086749801.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 09:04:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_000413_584639_A06CB33F 
X-CRM114-Status: UNSURE (   8.01  )
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
Subject: Re: [PATCH] ARM64: dts: Layerscape: workaround v6.19-rc1 DT sync
 DWC3 breakage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Jan 2026 16:19:19 +0100, Ahmad Fatoum wrote:
> Upstream Linux commit 7b204755ebc2 ("arm64: dts: layerscape: add
> dma-coherent for usb node") has dropped the snps,dwc3 compatible in
> favor of a driver matching against fsl,ls1028a-dwc3.
> 
> Reinstate the old compatible temporarily to avoid breakage in the
> next release until the new driver is added regularly.
> 
> [...]

Applied, thanks!

[1/1] ARM64: dts: Layerscape: workaround v6.19-rc1 DT sync DWC3 breakage
      https://git.pengutronix.de/cgit/barebox/commit/?id=9a6987da10b7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



