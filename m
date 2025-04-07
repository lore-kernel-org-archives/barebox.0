Delivery-date: Mon, 07 Apr 2025 09:58:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hNI-009Srv-0I
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 09:58:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hNH-0004DN-GT
	for lore@pengutronix.de; Mon, 07 Apr 2025 09:58:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MGGsTNhzLopzy7T94UcpUxE6zgApzq56H+PbjDer/kw=; b=pDQBbe5PjTlMjAdoQ3SE/HVx7x
	M/2Kz1zhVBdpGGL9gADiC4e3Au0sUDXXYDUmoIvZX2zGoc2n+w3u1YFrhZn9NdR1Q6qubpbNlWOlF
	jgjoUI6MBzvepLEO6w+hOQRUlsnXTm40UOauUb4dKR5AWdcTaJ1x71XbxThWpkiTD+kZ7GYumLDmO
	8FB8K6xbsKk4XZLciDVJxHJDkfPnfbN5smcKwGlTrocWo56Hk36qfItZBjNtOlbSSJg2jpyZcIL0q
	JudD1PaPBM+uTK8BeYYpfHCtaRUpFVv1YYDwPuKENBSDCkIz5AgZDRL3CTzDerM13noTf+A0565Mq
	dDDXT/7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1hMt-0000000Gtpd-3e1X;
	Mon, 07 Apr 2025 07:58:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1h49-0000000GoPN-2SRU
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 07:38:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1h3u-0000yL-Pi; Mon, 07 Apr 2025 09:38:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1h3u-003ir1-1j;
	Mon, 07 Apr 2025 09:38:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1h3u-004fly-1V;
	Mon, 07 Apr 2025 09:38:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 David Dgien via B4 Relay <devnull+dgienda125.gmail.com@kernel.org>
Cc: David Dgien <dgienda125@gmail.com>, Tyler Reece <mtreece@acm.org>
In-Reply-To: <20250406-tlsf-addpool-v2-1-880c64d19d59@gmail.com>
References: <20250406-tlsf-addpool-v2-1-880c64d19d59@gmail.com>
Message-Id: <174401151046.1113855.8515418841350564185.b4-ty@pengutronix.de>
Date: Mon, 07 Apr 2025 09:38:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_003845_630473_9BDFB142 
X-CRM114-Status: UNSURE (   8.56  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] tlsf: Add tracking of added tlsf memory pools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 06 Apr 2025 22:24:40 -0400, David Dgien via B4 Relay wrote:
> When configured to use the TLSF allocator, the malloc_stats function
> only walks the initial memory pool, as that is the only pool it is aware
> of, and TLSF doesn't link pools together in a way that the walker can
> follow.
> 
> Add a wrapper function around tlsf_add_pool to add additional tracking
> of added pools, so that they can be walked by the malloc_stats function
> and meminfo can report accurate heap utilization.
> 
> [...]

Applied, thanks!

[1/1] tlsf: Add tracking of added tlsf memory pools
      https://git.pengutronix.de/cgit/barebox/commit/?id=a17c188826cf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



