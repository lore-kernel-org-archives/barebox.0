Delivery-date: Fri, 18 Oct 2024 10:48:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1ieR-005osU-2q
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 10:48:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1ieR-0001S2-9E
	for lore@pengutronix.de; Fri, 18 Oct 2024 10:48:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xwTswIXNLCep4Rej1JwTU+EWwSIQnxcpj41zBpxOY14=; b=eNED81v++6zWSwesFWdFfxrLB5
	hclIx2A4voUzgpH2fzn2hQBy73YI8d6hdK9iU8hVLnNXS93IvTeEnO3N+1DQbs2W6bjMK0sIZNGhT
	zSR95U4J2VDaYcGL20ak2A4yt0bkLHQPE3nzvoyHsw/no3xDJ/0ZeMLK/gUKa74TbEFCpnjdXpAnI
	7bzbCltiJD/rj0mnftsPM0BueoAlJ7RbLg98xF8plH5E5E/w61Oo4LR4QvoJ52dH73mOlC8j4ZXr6
	ak190Tw0+ut6rdUTSiO0zSWguSILVGTJeiUNBeSLvI/BBrEtm/TQJ7qDfZ0kQ99gusFxTCZk/3ttI
	EK7CsiVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1idz-000000002M2-05wK;
	Fri, 18 Oct 2024 08:47:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1iW8-0000000Hadu-2Cf7
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 08:39:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1iW5-0000fj-S0; Fri, 18 Oct 2024 10:39:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1iW5-000BJv-1h;
	Fri, 18 Oct 2024 10:39:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1iW5-00CH20-1W;
	Fri, 18 Oct 2024 10:39:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Denis Orlov <denorl2009@gmail.com>
In-Reply-To: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
References: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
Message-Id: <172924076546.2925225.5925292444750492033.b4-ty@pengutronix.de>
Date: Fri, 18 Oct 2024 10:39:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_013928_618114_68FF0451 
X-CRM114-Status: UNSURE (   8.18  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
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
      https://git.pengutronix.de/cgit/barebox/commit/?id=0960c40b252c (link may not be stable)
[2/6] video: stm: use DMA_ADDRESS_BROKEN instead of NULL
      https://git.pengutronix.de/cgit/barebox/commit/?id=6757e58a5613 (link may not be stable)
[3/6] crypto: caam - pbl-init: use DMA_ADDRESS_BROKEN instead of NULL
      https://git.pengutronix.de/cgit/barebox/commit/?id=a02105b5050e (link may not be stable)
[4/6] net: designware: don't use dma_mapping_error for non-streaming DMA
      https://git.pengutronix.de/cgit/barebox/commit/?id=4e8ec055e5e4 (link may not be stable)
[5/6] net: macb: fix DMA_ADDRESS_BROKEN in the coherent ring allocations
      https://git.pengutronix.de/cgit/barebox/commit/?id=50da8ab7050d (link may not be stable)
[6/6] dma: give dma_alloc_coherent a device parameter
      (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



