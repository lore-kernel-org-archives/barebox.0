Delivery-date: Mon, 25 Mar 2024 10:59:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roh7L-003gVJ-0L
	for lore@lore.pengutronix.de;
	Mon, 25 Mar 2024 10:59:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roh7K-0001HM-Iu
	for lore@pengutronix.de; Mon, 25 Mar 2024 10:59:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+qkndgj9tEXawe/lW9Hb0epU46UzC4Jfj1Z/GYMUM0Y=; b=10IpGreM3yFOVxNjSotcmeaimH
	aWIAseY+3e6l14X/8qpP0x7PR7bzKcAtYb2WLKOzctftaJ/CsOZZYqD/NcwyjHmqN+aaFOF5RnzeH
	Nms6rVCCzLU568+PgrOtGL16nDJKsQpNX2ovhhqnhNg7dOv0YZxcdPsJ2VvrJ62n30BbjL4RFbvPk
	DnomLkTq+EiME67DAWaEtSx8h+I/PxeI1MPMqH880apBJZZkgc0KTWwM4CQk8x4uodUT5kyqfIucg
	nZhRisiSn7BZ6eCMbCU02CNnsosJqJ01hfrNSsGh0dFf9c41cCH7+Uew2GS+z5Sl0WPTcGinRupr1
	yVvZAKiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roh6v-0000000Gaxs-1bHG;
	Mon, 25 Mar 2024 09:59:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roh6r-0000000GawO-3x81
	for barebox@lists.infradead.org;
	Mon, 25 Mar 2024 09:59:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roh6q-0001BL-C7; Mon, 25 Mar 2024 10:59:16 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roh6p-008OSa-Vy; Mon, 25 Mar 2024 10:59:16 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roh6p-00CMNh-2z;
	Mon, 25 Mar 2024 10:59:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240322142424.981863-1-a.fatoum@pengutronix.de>
References: <20240322142424.981863-1-a.fatoum@pengutronix.de>
Message-Id: <171136075592.2945932.16454702745552684976.b4-ty@pengutronix.de>
Date: Mon, 25 Mar 2024 10:59:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_025918_068334_0E768645 
X-CRM114-Status: UNSURE (   9.17  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] dma: correctly honour dma-noncoherent device
 tree property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 22 Mar 2024 15:24:24 +0100, Ahmad Fatoum wrote:
> Most barebox platforms are either completely cache-coherent with respect to
> DMA or completely non-coherent. To avoid having to walk the device tree for
> non-existent dma-coherent and dma-noncohrent properties, barebox thus
> only does this when CONFIG_OF_DMA_COHERENCY is selected.
> 
> CONFIG_OF_DMA_COHERENCY is to be selected by platforms that have mixed
> coherency for DMA masters. Forgetting to select this option can be
> annoying to debug, which is why devinfo will inform the user of default
> DMA coherency assignments:
> 
> [...]

Applied, thanks!

[1/1] dma: correctly honour dma-noncoherent device tree property
      https://git.pengutronix.de/cgit/barebox/commit/?id=9caee28f7130 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



