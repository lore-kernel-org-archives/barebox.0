Delivery-date: Tue, 29 Apr 2025 17:25:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mpj-000XBF-0c
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 17:25:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mpi-00037f-BY
	for lore@pengutronix.de; Tue, 29 Apr 2025 17:25:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1xLeZAzaUZEGecEoUwyzxB8ZeORahuP/N9ouciQlM6M=; b=XrpiefWj2lAVLBzCu9Vka2vMNN
	uK7hXNmgdUguuMoOw+lL0ym0x4Z91RdeWxVnYMNaeo5iChM7iHC3GqW+CK4ns2XafnQwbsIz0WRQu
	+drBySZyG9U9etrC0G4Xoi+KpIdJBChUt4ZTtkwznc7HUS3nEGgTwTOl30qFaXBaoNTpiUjuf6zrf
	p0anbM4CCIdk97dmEz78AEw6It6fxXyCsB/cL7l2tyLWBgo02JAULNq5JjLtifoLC/9dWVkljiF0P
	m2TYnBFwhwoEwj4jaYQI0cj1KhFSdCwZRxPciqzviyQ4NBBy2ZQdOtJpkzITIYZSU696guR5kp8dY
	Uus30p2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mpI-0000000A742-1Npv;
	Tue, 29 Apr 2025 15:24:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mO3-0000000A25f-1gjM
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 14:56:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=1xLeZAzaUZEGecEoUwyzxB8ZeORahuP/N9ouciQlM6M=; b=GkWq2egsH5j0UkR0JsQbw3LeHm
	KfVMCHss11jPkQjqx+yvx8t8Kvgad5yea0K+J/en2bB0ny9skrLtcxx99iw6WlPn0THwh0jd0JGQm
	MUMbNPtVqCJBN/xVLYq3/+m+crg/li7CTJLvdUFANIw71C06YedkaHdIUuAVcl36wlH6KlsWCuEtJ
	dFAd+shVqntk/U43qGFAcFWcTMI5L6vGiRg7vXwmOX6Ltqm1vk+jj7SQB8DOrHYfjkyrdZ/prZCWL
	DnaycmBueMKl3hTA1nZn6Wdx6eMblK7vgPg2DGv6eXQqjRv3Hl/TDTlTa1t6KtBc62twlOAX3AGi2
	41EmBD0w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9mNz-0000000DQ4t-3QNo
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 14:56:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mNz-0001h6-7J; Tue, 29 Apr 2025 16:56:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mNz-000HMs-08;
	Tue, 29 Apr 2025 16:56:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mNy-00D4Yg-3A;
	Tue, 29 Apr 2025 16:56:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250429135032.3818240-1-a.fatoum@pengutronix.de>
References: <20250429135032.3818240-1-a.fatoum@pengutronix.de>
Message-Id: <174593859897.3115709.8243825722330223136.b4-ty@pengutronix.de>
Date: Tue, 29 Apr 2025 16:56:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_155639_966391_B1120299 
X-CRM114-Status: UNSURE (   9.53  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: v7r: fix TLSF memory pool mix-up
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 29 Apr 2025 15:50:32 +0200, Ahmad Fatoum wrote:
> dma_alloc_coherent allocates memory from a special memory region backing
> the dma_coherent_pool. When freeing said memory, this needs to be done
> with the same pool as argument, but free uses the normal pool used for
> all other allocations instead. Failure to do so will trigger memory
> corruption during free block merging.
> 
> This likely went unnoticed so far, because most drivers allocate
> coherent memory only once in the probe path and only disable DMA.
> The coherent memory is then only leaked for the short time between
> barebox shutdown and Linux reclaiming all memory anyway.
> 
> [...]

Applied, thanks!

[1/1] ARM: v7r: fix TLSF memory pool mix-up
      https://git.pengutronix.de/cgit/barebox/commit/?id=25889c25d600 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



