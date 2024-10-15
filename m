Delivery-date: Tue, 15 Oct 2024 09:41:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0cBf-004Zru-39
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 09:41:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0cBf-0004V6-Cq
	for lore@pengutronix.de; Tue, 15 Oct 2024 09:41:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P/6eyb5CDbGfvjWRUBl+8LtY1wf84WzV1h+/0Hx3xVI=; b=TSFtrMLTHbtR4JOyDBfKCVPzOX
	9dw8f2hWciVFSjlNH8UpzmXjq1499rjifE05385+gU6zpzliGxgnzCbdQ3VhJoDzUft/CuuJjVZMl
	Z9TLP0HcucTw9iNqP3ib9wOtSbgW3cEbJVS+m5GnRO/YH+TU6sZOEJ2gIjeQcZ392w99t6dmAivtD
	kKr6jtXu3G6QbZS7qfW60YTvE+pL9g6KcbBjSLUR0e+oUrrDOxe2W1X+y9NOOsOB2bVG5xbRpX3gK
	+F8B/n5EEFsjLRs7z1ppm8+4g6f2Yh1mprFqkD7o/YA/kDH0xhxXyqa7KvPH0Xlrenr+gNdqucCql
	DYYqOgGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0cB8-00000007MnV-21xL;
	Tue, 15 Oct 2024 07:41:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0cB5-00000007Mm2-02bv
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 07:41:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0cB3-0004RY-8Y; Tue, 15 Oct 2024 09:41:09 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0cB2-001ylb-NJ; Tue, 15 Oct 2024 09:41:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0cB2-009wPh-28;
	Tue, 15 Oct 2024 09:41:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Denis Orlov <denorl2009@gmail.com>
In-Reply-To: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
References: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
Message-Id: <172897806865.2368693.18152888665059519055.b4-ty@pengutronix.de>
Date: Tue, 15 Oct 2024 09:41:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_004111_074364_69126581 
X-CRM114-Status: UNSURE (   8.29  )
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
Subject: Re: [PATCH 0/6] dma: give dma_alloc_coherent a device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Oct 2024 14:58:37 +0200, Ahmad Fatoum wrote:
> Devices can be inherently DMA coherent and thus dma_alloc_coherent could
> be implemented as a normal allocation.
> 
> While using uncached memory in this case isn't wrong, it can lead
> to a a very stark performance degradation as identified in this patch[1]
> when barebox ran under KVM.
> 
> [...]

Applied, thanks!

[1/6] dma: make DMA_ADDRESS_BROKEN type-safe
      https://git.pengutronix.de/cgit/barebox/commit/?id=5f004115ac0f (link may not be stable)
[2/6] video: stm: use DMA_ADDRESS_BROKEN instead of NULL
      https://git.pengutronix.de/cgit/barebox/commit/?id=2ca7fca692c0 (link may not be stable)
[3/6] crypto: caam - pbl-init: use DMA_ADDRESS_BROKEN instead of NULL
      https://git.pengutronix.de/cgit/barebox/commit/?id=b3b20535573c (link may not be stable)
[4/6] net: designware: don't use dma_mapping_error for non-streaming DMA
      https://git.pengutronix.de/cgit/barebox/commit/?id=0b2bc567a82a (link may not be stable)
[5/6] net: macb: fix DMA_ADDRESS_BROKEN in the coherent ring allocations
      https://git.pengutronix.de/cgit/barebox/commit/?id=df13e1902a2c (link may not be stable)
[6/6] dma: give dma_alloc_coherent a device parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=a4c9398795be (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



