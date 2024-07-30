Delivery-date: Tue, 30 Jul 2024 10:10:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYhwf-004OwH-0o
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 10:10:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYhwe-000498-MK
	for lore@pengutronix.de; Tue, 30 Jul 2024 10:10:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gXthlA8XFXs+YKDkhpXCo+7VQ7ieg3ls82+oQzSrWuI=; b=R0X2kIST7Qn4Itrc/XUPtxQvdF
	1j09Pq0B7vxtHD59kfI16mukEpRYi86/o+3JTlKQzI2uA4gWWS69cYkxBmSk8nccUh0tzSTJ9kt+k
	U3qUavGeNFgQ2azL4IFQm0zLzeKB2pBl4e9mNDFLCueJqDkfJDSt0M5OeUADBmXTpXrWL+QtQptWy
	LLN0qWpu7gtK2ndurOlk5c90jWYaVm7QGI/TNGdok7H51jNe4reXJf1ZbrldtaLza9+fDC6zwoBRD
	vMV+Y7oVtBZWHuq6+Rr/Q+S2a1JYxQDYWEjPGjDLz/TiIp2lkHzfAeCA2fXg8vY4P0aL1aPFXq+Cn
	4mwGvg4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhwD-0000000EB3P-05ga;
	Tue, 30 Jul 2024 08:10:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhwA-0000000EB34-3AZn
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 08:10:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhw9-00046A-7w; Tue, 30 Jul 2024 10:10:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhw8-003Emh-Qe; Tue, 30 Jul 2024 10:10:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhw8-004YBT-2Q;
	Tue, 30 Jul 2024 10:10:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240724152327.3328745-1-a.fatoum@pengutronix.de>
References: <20240724152327.3328745-1-a.fatoum@pengutronix.de>
Message-Id: <172232702475.1084652.5007689214174275778.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 10:10:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_011026_820816_7369E6A4 
X-CRM114-Status: UNSURE (   7.28  )
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
Subject: Re: [PATCH] net: designware: dma_sync_single_for_device buffer
 before passing to HW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 24 Jul 2024 17:23:27 +0200, Ahmad Fatoum wrote:
> For cache-incoherent DMA, dma_sync_single_for_cpu with DMA_FROM_DEVICE
> invalidates the cache, so no stale lines in the cache hide what the
> hardware had written to RAM.
> 
> On the same systems, dma_sync_single_for_device with DMA_FROM_DEVICE also
> invalidates the cache, so no dirty lines from the CPU are evicted
> clobbering what the hardware had written to RAM.
> 
> [...]

Applied, thanks!

[1/1] net: designware: dma_sync_single_for_device buffer before passing to HW
      https://git.pengutronix.de/cgit/barebox/commit/?id=dcd743414b15 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



