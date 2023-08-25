Delivery-date: Fri, 25 Aug 2023 09:36:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZRMP-008DDy-8K
	for lore@lore.pengutronix.de; Fri, 25 Aug 2023 09:36:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZRMN-0000hb-3T
	for lore@pengutronix.de; Fri, 25 Aug 2023 09:35:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X74NfMEAj/+C8U+wu49e/3C4Iyt8vdYZUdqSprqNTA0=; b=PtDKZr0OI4tQxNkZC1Y56ViXaj
	9M/bl6kGCQBMmTg2Wbfm/5XkeqdBEORIzJRnJVZK3IXGW18Vdf8/ex/X1DnN83adZSoNfZMmN4ZrL
	y/tvl2XE68nFJn0Raa9Bx38dWTif21m1SyjBRaHbUZp84m1sp4ZWtKVBu5TJreZr2DoPdzWupjVEl
	qg8MMHfkoQQzEPESGJCCKrCvhaqYWgjaJOez50H7LiSKlxZEN58IwVHq64eoBbVfqPhDhtyCT3lok
	ll60CSgvwJu4NBjcsdlf8vxJLJE+Yj2n/ggmzutdgYAAjNVFYzAUHkvZZbMOxNVjyb31iYNS0y9xb
	HUi/UYSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZRKx-004XyQ-2f;
	Fri, 25 Aug 2023 07:34:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZRKt-004Xxj-15
	for barebox@lists.infradead.org;
	Fri, 25 Aug 2023 07:34:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qZRKm-0000Kj-5l; Fri, 25 Aug 2023 09:34:20 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qZRKl-00046o-QA; Fri, 25 Aug 2023 09:34:19 +0200
Date: Fri, 25 Aug 2023 09:34:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230825073419.nkvym64w3uou23gn@pengutronix.de>
References: <20230824135939.1614716-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230824135939.1614716-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_003427_429752_20CA1074 
X-CRM114-Status: GOOD (  10.66  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: sdhci: don't hang indefinitely waiting for DMA
 completion
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-08-24, Ahmad Fatoum wrote:
> barebox was observed to hang on an i.MX8MP while reading ext_csd from
> a broken eMMC that even bootROM refused to boot from. For PIO, we
> already have a maximum wait time of 10s. Do the same for DMA.
> 
> It's unlikely that in that state any further communication with the card
> will work, but at least, the system isn't stuck and the shell can be
> reached. The reset is done on the off-chance that the DMA would've completed
> after the 10s and corrupted memory if not disabled.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


