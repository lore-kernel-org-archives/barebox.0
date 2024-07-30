Delivery-date: Tue, 30 Jul 2024 10:13:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYhzM-004P0y-2K
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 10:13:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYhzM-0004P8-5w
	for lore@pengutronix.de; Tue, 30 Jul 2024 10:13:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PiToGiX3CsCTMUoih0gqPziPPozu7FkGAW0XiUVm7Vk=; b=Fku0Am6DGlQMW9aPJQE2fNrmOq
	SaZqHGHux4rwxeLu27FOtoQlNZLx16GvK+nnldsrMKfI4b555qXa+1Ynrhi4xyjt3HT1h7cLai7A+
	0ggTg5Y/98qTOtQs7yByGzU/aX6U2g3QF7Tg9+amAKgvcjYL4saauONmY8UcxpaFd3g4cbzNQSfUf
	BqBkWsAdDEg6jV17pi9sDT+dlBl9Qz320az2OvkqLs1U43l1AnjZJBM58nT/30GNOWJQeBQdqO/v+
	A0xOH/Sj9RHwyRKMli9hit9MfM93Gsfd5+FPFOQkD0TTYcVLcfBwvT9SJQtjbaadZ/jYoLIZ/v/TY
	eP7H4Khg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhyv-0000000EC4P-1XRb;
	Tue, 30 Jul 2024 08:13:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhyr-0000000EC2Y-15RW
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 08:13:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhyp-0004Jd-HV; Tue, 30 Jul 2024 10:13:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhyp-003ExF-4W; Tue, 30 Jul 2024 10:13:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhyp-004eVJ-0D;
	Tue, 30 Jul 2024 10:13:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: ske@pengutronix.de
In-Reply-To: <20240724094732.886245-1-a.fatoum@pengutronix.de>
References: <20240724094732.886245-1-a.fatoum@pengutronix.de>
Message-Id: <172232719106.1108942.14570426677596811258.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 10:13:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_011313_329389_6ADA6C07 
X-CRM114-Status: UNSURE (   7.72  )
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
Subject: Re: [PATCH master 1/2] dma: debug: fix compiler warning about
 pointer u64 cast
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 24 Jul 2024 11:47:31 +0200, Ahmad Fatoum wrote:
> All other prints in the file use the DMA address except for this single
> print inside debug_dma_map(). Let's use the DMA address there as well to
> fix the warning about casting a 32-bit pointer to a 64 bit integer and
> to align error messages in case of non-1:1 mapped DMA addresses.
> 
> 

Applied, thanks!

[1/2] dma: debug: fix compiler warning about pointer u64 cast
      https://git.pengutronix.de/cgit/barebox/commit/?id=4cd2dbea7bda (link may not be stable)
[2/2] usb: gadget: fsl_udc: dma_map buffers instead of using dma_sync
      https://git.pengutronix.de/cgit/barebox/commit/?id=c825a35f0f35 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



