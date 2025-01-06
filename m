Delivery-date: Mon, 06 Jan 2025 10:14:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjBk-00HQVx-1z
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:14:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjBk-0002Q5-KM
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:14:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EJu8kiNkGxTSD9e6XjNaQgk6ig5UOhqIOcEYomhrgZg=; b=KTTZMxryJsczFX5tjg4A3LbS6H
	i9ZqUUPWQDwPsVoqcajNNLDfa2nRakfnHclSRiFOCbF0eRyGtYs86HYSVeUfEd6G+TCtYEQ/usNdA
	ZkbRZStm1YqEJgjIWu3PeTS8Huxw4SjcZOdDDSheJIUicF0sMQPwBXtdEgDQmz8r1AtrljKcd82k/
	o7z8YcObBznfgruwnDj8Q8n8tIYRuCFSyjwFLUEl+QwUSxdepzchLfJhlMwBvI3J4o+Zw8zs60vAS
	ZF3x98mL/jruzJhO8dr/n52HkCzdCi1e5bDmwYuCulfN0hTBHnonz5J0fXsrOs8rdGNPzccJlkQne
	/58MX5Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjBM-00000000d18-0V0N;
	Mon, 06 Jan 2025 09:13:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjBI-00000000czS-31HW
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:13:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUjBH-0002HJ-KX; Mon, 06 Jan 2025 10:13:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUjBG-0078mb-2A;
	Mon, 06 Jan 2025 10:13:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUjBH-008mz7-1F;
	Mon, 06 Jan 2025 10:13:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20241227071502.18967-1-eagle.alexander923@gmail.com>
References: <20241227071502.18967-1-eagle.alexander923@gmail.com>
Message-Id: <173615483138.2094866.6025376650923290042.b4-ty@pengutronix.de>
Date: Mon, 06 Jan 2025 10:13:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011352_760444_0BBA18DB 
X-CRM114-Status: UNSURE (   6.98  )
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
Subject: Re: [PATCH] ARM: at91: Remove AT91SAM9_SMC dependency for SAMA5D2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 27 Dec 2024 10:15:02 +0300, Alexander Shiyan wrote:
> AT91SAM9_SMC driver is not used for the Atmel/Microchip SAMA5D2 SOC family.
> 
> 

Applied, thanks!

[1/1] ARM: at91: Remove AT91SAM9_SMC dependency for SAMA5D2
      https://git.pengutronix.de/cgit/barebox/commit/?id=feabc41e7861 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



