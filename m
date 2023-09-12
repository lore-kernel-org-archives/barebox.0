Delivery-date: Tue, 12 Sep 2023 11:20:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfzZW-00CTvj-8x
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 11:20:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfzZU-0004Nr-9f
	for lore@pengutronix.de; Tue, 12 Sep 2023 11:20:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jsglhbuRWvcakZAn5gNgCeCKNNemoTkeegOLBCOAP2o=; b=zaG3KIiDEDoel4i/uKTJZzB2k+
	aE8VyQsKxds/eFeEW5NO370PkAFez9YCIXHc0CViV28o/drr71bLPNo+0pnuajclX+r2zeMvv9v/H
	smpF+7OVk5MA80gQSaoiWYjnxys5xBZHlTnlZCbFUdNxPSiOzujj9h8IvcAOpfvFtg9Zs4wwnfvIb
	+J/dTFstg2SkXLQT72xa1dw2K62VClf8k7gKnnuAcW2qeYVCuAaEMdFyz3XiwwgiqM2mZkdf5y30c
	PCUUlzd3QMOSZf5BqT95THXTRds260j5akCdHdGENu+Gsolz9amXmTRCSXkm5noYTgYgn4Ayt7vrG
	Lpf3r4Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfzYD-002i4I-3B;
	Tue, 12 Sep 2023 09:19:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfzYB-002i32-16
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 09:19:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qfzY9-00040x-Ub; Tue, 12 Sep 2023 11:19:13 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qfzY9-005kJc-HO; Tue, 12 Sep 2023 11:19:13 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qfzY9-005ZlH-45; Tue, 12 Sep 2023 11:19:13 +0200
Date: Tue, 12 Sep 2023 11:19:13 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, jmaselbas@zdiv.net, ore@pengutronix.de
Message-ID: <20230912091913.GT637806@pengutronix.de>
References: <20230911121156.2632668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911121156.2632668-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_021915_375826_5949FB86 
X-CRM114-Status: GOOD (  18.31  )
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
Subject: Re: [PATCH master 0/2] mci: sdhci: fix memory corruption on DMA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 11, 2023 at 02:11:54PM +0200, Ahmad Fatoum wrote:
> Recent changes to teach SDHCI 64-bit support inadvertently changed
> the address used for cache maintenance away from the DMA buffer address
> with the result that unrelated cache lines were dropped and memory
> corruption. This series fixes this. I must admit I don't understand
> how the SDMA boundary mechanism works, so I did not change too much
> about it.
> 
> Ahmad Fatoum (2):
>   mci: sdhci: unmap the DMA buffers actually used
>   mci: sdhci: hardcode SDMA boundary for DMA

Applied, thanks

Sascha

> 
>  drivers/mci/sdhci.c | 9 ++-------
>  drivers/mci/sdhci.h | 3 +++
>  2 files changed, 5 insertions(+), 7 deletions(-)
> 
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


