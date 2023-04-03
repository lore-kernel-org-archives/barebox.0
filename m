Delivery-date: Mon, 03 Apr 2023 09:13:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjENK-008Gt2-3A
	for lore@lore.pengutronix.de; Mon, 03 Apr 2023 09:13:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjENK-0003Lr-0T
	for lore@pengutronix.de; Mon, 03 Apr 2023 09:13:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lCmjlCLblhoa0OjpstSyOPBaXexQNqCHi+8BCoXBe40=; b=Pvc5mgAMZzm7qVPDunOzSAtoil
	9pxeSdoo9fljyjYHZOWHXuIRHWunYROZkU+q9ARk7Jxkey3luWGW/fKGhqPGtoT6AM5MphV2SXyQ4
	l9u+z2PCjE6qzw3nhXWrtND1CooWcgHNye/QOAUZy0/csD2bhGm2vTv4AvKok37y5Qifpe4YJEhjQ
	8yQWgc+Var9LCvQE1n0DdbdpY2ghqkl6H+PpRrSZPJoIBplNqd6GdvQ85phnvfm8X0LR2lyZuejjn
	eC3mCRiS5WRvhxC885gtgucQX1rCyGALTIX5CPIqC+6V0u5pq5cFLL30edWvHl7se/zH57HxRQSz1
	QC49sLOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjEMJ-00ELCt-1r;
	Mon, 03 Apr 2023 07:12:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjEMF-00ELBs-0c
	for barebox@lists.infradead.org;
	Mon, 03 Apr 2023 07:12:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjEMD-000372-TP; Mon, 03 Apr 2023 09:12:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjEMD-0008Dn-LV; Mon, 03 Apr 2023 09:12:01 +0200
Date: Mon, 3 Apr 2023 09:12:01 +0200
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230403071201.GR19113@pengutronix.de>
References: <20230330103359.2751080-1-p.zabel@pengutronix.de>
 <20230330103359.2751080-2-p.zabel@pengutronix.de>
 <20230330145309.GA7856@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230330145309.GA7856@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_001203_229915_ABE44DA9 
X-CRM114-Status: GOOD (  21.05  )
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
Subject: Re: [PATCH 2/4] spi: stm32: support per-transfer bits per word
 switching
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 30, 2023 at 04:53:09PM +0200, Philipp Zabel wrote:
> On Thu, Mar 30, 2023 at 12:33:57PM +0200, Philipp Zabel wrote:
> > Allow dynamically switching data size between transfers.
> > 
> > Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> > ---
> >  drivers/spi/stm32_spi.c | 50 ++++++++++++++++++++++++++++++++---------
> >  1 file changed, 39 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
> > index 0d7407c279a2..1ac86fbe11e6 100644
> > --- a/drivers/spi/stm32_spi.c
> > +++ b/drivers/spi/stm32_spi.c
> [...]
> > @@ -543,6 +570,7 @@ static int stm32_spi_probe(struct device *dev)
> >  	master->transfer = stm32_spi_transfer;
> >  	master->mem_ops = &stm32_spi_mem_ops;
> >  
> > +	master->bits_per_word_mask = stm32_spi_get_bpw_mask(priv);
> 
> This has to be moved down a few lines, after the clock is enabled and
> the device is reset. I'll fix this in v2.

Please do so. Otherwise the series looks good to me.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


