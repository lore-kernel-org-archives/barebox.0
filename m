Delivery-date: Mon, 19 Jan 2026 11:21:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhmNn-002zoj-30
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 11:21:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhmNm-0004ZU-Uv
	for lore@pengutronix.de; Mon, 19 Jan 2026 11:21:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3oFvu/jU4fGdDUTjoelhjxstAWt1We7dMAJM7L963Eo=; b=L3QTBSh8S38ScbVvduCPSR1wMD
	sI2bg7r0knphMm3j5Ce/12qGy0u5q6Ik0vvNVOzKfx09ewKrS/NfoSy98sYbO/O1H3Xcq9LfeSHum
	3Uocv2fdgocSYsc4JXE1C0tjRSdOnwCnJDgdqIGn6slpQkp9eyzUwtrVjFu5KwB8Qk3LOcJqxlinD
	iOd5i6PKoTmTJaIApFtdv5enKEdiHVxTHtkxLg7ZXoN27pzd8TseNMWLONlfv3vd9kE/7a3Fn2BE4
	VqxnGl5OMYSt0Gs/FQ3EWoAQpM18RN1Mc72oD2WFuMg1ebK3MtDzDxYzHRLlbqFXEJQsShZH4ep7Y
	W2eVLQLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhmN7-00000001kl6-2pV2;
	Mon, 19 Jan 2026 10:20:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhmN1-00000001kjm-1agN
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 10:20:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhmMz-0004M3-KE; Mon, 19 Jan 2026 11:20:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhmN0-001OaD-0K;
	Mon, 19 Jan 2026 11:20:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhmMz-00000003loa-1Ymz;
	Mon, 19 Jan 2026 11:20:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260115120557.3433211-1-a.fatoum@barebox.org>
References: <20260115120557.3433211-1-a.fatoum@barebox.org>
Message-Id: <176881802536.898747.8623378884331876882.b4-ty@pengutronix.de>
Date: Mon, 19 Jan 2026 11:20:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_022027_421235_1F8E7B19 
X-CRM114-Status: UNSURE (   8.92  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: mmu: optimize dma_alloc_coherent for
 cache-coherent DMA masters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 15 Jan 2026 13:05:52 +0100, Ahmad Fatoum wrote:
> If a device is DMA-capable and cache-coherent, it can be considerably
> faster to keep shared memory cached, instead of mapping it uncached
> unconditionally like we currently do.
> 
> This was very noticeable when using Virt I/O with KVM acceleration as
> described in commit 3ebd05809a49 ("virtio: don't use DMA API unless
> required").
> 
> [...]

Applied, thanks!

[1/2] ARM: mmu: optimize dma_alloc_coherent for cache-coherent DMA masters
      https://git.pengutronix.de/cgit/barebox/commit/?id=aefa14324910 (link may not be stable)
[2/2] virtio: use DMA coherent APIs
      https://git.pengutronix.de/cgit/barebox/commit/?id=c56e7af5fa98 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



