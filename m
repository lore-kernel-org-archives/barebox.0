Delivery-date: Fri, 11 Jun 2021 12:03:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lre0u-000469-S2
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 12:03:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lre0t-0005iR-TK
	for lore@pengutronix.de; Fri, 11 Jun 2021 12:03:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q8tmuvOA2YqyPxaO3gGrQQo2ZsawHttcwkmv8CXO2eg=; b=lx6J/KPOg3fVKq
	9mEwhuwCl1H2gbCNW1q7tz3wllpPpCjVRbBuCncBEttO5+DS6i6whXJql8vA+Wc3PCg/c6hjzrC5P
	nlz0WaD/QlRSGiAcU4PSl5xh47PZcs3rEtVpZyO0UD2NTLyL7hQQXHVM5eldMaqVI8YwuROeRkzZ/
	v51/dvRYx2nJDuLqp5fa+HeDSQocqg+wYXBWPlEQ8zUjquH1DLszSqgPKMgVi7w6YDQEk1uGBNM3U
	mfuLAtIaPBEKKUtrhFUYj/qJ6/tvBagHv7ZV94Uc2YotdGj50DbgMHU8oIhz7cV8fLnSVnd2nRMyg
	vaor1BV645WnCkhSRaqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrdzU-004dw7-7z; Fri, 11 Jun 2021 10:02:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrdzP-004dvj-3j
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 10:02:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrdzN-0005Um-7j; Fri, 11 Jun 2021 12:02:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrdzM-0000dx-U1; Fri, 11 Jun 2021 12:02:08 +0200
Date: Fri, 11 Jun 2021 12:02:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210611100208.GD22904@pengutronix.de>
References: <20210610131032.6645-1-s.hauer@pengutronix.de>
 <a08e527d-7557-a2fa-1bef-c3875a4c9072@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a08e527d-7557-a2fa-1bef-c3875a4c9072@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:58:46 up 113 days, 13:22, 122 users,  load average: 0.03, 0.06,
 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_030211_179753_CEE40B49 
X-CRM114-Status: GOOD (  23.68  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: dw_mmc: set dma mask to work correctly on 64bit
 platforms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 11, 2021 at 10:23:25AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 10.06.21 15:10, Sascha Hauer wrote:
> > The variant we support currently can only do 32bit DMA. Adjust dma mask
> > accordingly. Also use dma_map_single() rather than dma_sync_single() to
> > actually get errors when the mapping fails.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> On a StarFive JH7100 (64-bit CPU, 32-bit MMC controller, non-1:1 mapping for
> coherent DMA).
> 
> >  	host->idmac = dma_alloc_coherent(sizeof(*host->idmac) * DW_MMC_NUM_IDMACS,
> > -					 DMA_ADDRESS_BROKEN);
> > +					 &host->idmac_dma);
> > +	if (!host->idmac)
> 
> That works for Linux, but not for barebox: barebox dma_alloc_coherent doesn't have
> 
> a dev parameter, so it can't check for dma_mapping_error() internally.

Yeah, I know. I have that on my mental todo list and hoped nobody would
realize.
Adding a dev parameter to dma_alloc_coherent() is one thing. With that
we can check for errors. The next step of course would be to allocate
memory in the allowed area, not only to complain.

> 
> dma_alloc_coherent also never returns NULL in barebox, all implementations, except
> 
> for kvx, abort if no memory could be allocated.
> 
> > +		return PTR_ERR(-ENOMEM);
> 
> -ENOMEM is no pointer.

Yes, fixed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

