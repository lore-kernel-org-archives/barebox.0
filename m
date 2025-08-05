Delivery-date: Tue, 05 Aug 2025 07:01:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uj9nT-007B6R-1S
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 07:01:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uj9nS-00011X-Ur
	for lore@pengutronix.de; Tue, 05 Aug 2025 07:01:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1/rCCbMebm27MYZxaH0Cwn1hS5AHof++THrwed63rNU=; b=k0H0ZFq3KJhWPJNOoXYItFWcmz
	NrXi4vZM6H5wlUCQXeTXL7ExrOp1kSkbqQ3Y9w90CSqrRWSdSswovrZs4ASoehf1kqJaIUIeho6uV
	vHnfKGiElZodsZtjuInlCMbvQC0lCVo0shfXIIJDUUmBfy6aFRh0V2oAe4Skl6FoWyET5+wu0YSxP
	Jz8cvE7sZwHWjwJ0/ge4s/9dRhmxL0v7/yu4DyAddqTYyzkhFWSlYTl438jZA2MiuH19IbqAWUarZ
	oVkse9xgNHXaAbyuet7FHXVmxkxwWZ7b3WSoKr/QrT5ijcDOwlkGwGjj1jvrr3RVeXBwyIekSuVjs
	YYVs4a5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uj9mm-0000000BmoE-2XhW;
	Tue, 05 Aug 2025 05:00:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uj9mj-0000000BmnQ-08OQ
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 05:00:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uj9mf-0008Ni-VW; Tue, 05 Aug 2025 07:00:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uj9mf-00Bz6K-1j;
	Tue, 05 Aug 2025 07:00:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uj9mf-00DnAe-1X;
	Tue, 05 Aug 2025 07:00:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Alexander Kurz <akurz@blala.de>
In-Reply-To: <20250803055449.16318-1-akurz@blala.de>
References: <20250803055449.16318-1-akurz@blala.de>
Message-Id: <175437002146.3287269.14486886128591435405.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 07:00:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_220025_094282_CF4D3C9F 
X-CRM114-Status: UNSURE (   6.56  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: imx-esdhc-pbl: fix iMX50 prediv setting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 03 Aug 2025 05:54:49 +0000, Alexander Kurz wrote:
> The ESDHC3 instance is common between iMX50 and iMX53.
> Extend the required quirk also to iMX50 fixing a problem that data could
> not be written to an eMMC.
> 
> 

Applied, thanks!

[1/1] mci: imx-esdhc-pbl: fix iMX50 prediv setting
      https://git.pengutronix.de/cgit/barebox/commit/?id=08c388d2aa11 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



