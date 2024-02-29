Delivery-date: Thu, 29 Feb 2024 09:10:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfbUt-00F3Cz-0E
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 09:10:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfbUs-0004vV-Hz
	for lore@pengutronix.de; Thu, 29 Feb 2024 09:10:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DnIPqLElOYN3TKhrJa144WKmYDxfwcP9CsAdZyKPBsY=; b=Cz4pHUSSPxNG/wlkZnKE8u2tZC
	1iPX9KolpPKxMrHKotdnFUCDO1fD3VrCITjskj9CqPXWuIpUgEq4xXCjyhpFgvBpdPNYbhtcU4D6N
	5P8qND+TUOpmEHiJ0dsaOZWBKslysEZ4EMdwzk2B1kNS+BP4PfrWIlnMQRfog1oIl7dLV0z+AezG3
	uHcQXYdhTMU2soH1A39GqnEZ0aC8a1cIT7GYDO7hbWGwx9FCaEiPexODbbbUP9zYl5fNMdUYty43a
	n/ugx8rP4CN8XbAUlD1Z2FRkzmFIjBs8sBICst8faGZ+KsN97DEnV0u5JgYP/ZLfs0I3s3mRHvYqc
	9oPF640w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfbUK-0000000CalE-3jrz;
	Thu, 29 Feb 2024 08:09:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfbUI-0000000CakI-10uR
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 08:09:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfbUG-0004na-V7; Thu, 29 Feb 2024 09:09:52 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfbUF-003YEh-L5; Thu, 29 Feb 2024 09:09:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfbUF-006ysK-1u;
	Thu, 29 Feb 2024 09:09:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240228102141.2724018-1-s.hauer@pengutronix.de>
References: <20240228102141.2724018-1-s.hauer@pengutronix.de>
Message-Id: <170919419159.1663961.5872312440250409419.b4-ty@pengutronix.de>
Date: Thu, 29 Feb 2024 09:09:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_000954_309336_9CA77EBE 
X-CRM114-Status: UNSURE (   7.20  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] serial: lpuart32: fix rx stall on FIFO overflow
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 Feb 2024 11:21:41 +0100, Sascha Hauer wrote:
> When the rx FIFO overruns then no new characters are received, even
> when the FIFO is read from and space becomes available again.
> Acknowledge the overrun in this case to let the UART continue to work.
> 
> 

Applied, thanks!

[1/1] serial: lpuart32: fix rx stall on FIFO overflow
      https://git.pengutronix.de/cgit/barebox/commit/?id=4d6e5b641ceb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



