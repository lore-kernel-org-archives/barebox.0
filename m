Delivery-date: Mon, 16 May 2022 11:08:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqWih-00FPDC-Pz
	for lore@lore.pengutronix.de; Mon, 16 May 2022 11:08:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqWig-0000I6-Fn
	for lore@pengutronix.de; Mon, 16 May 2022 11:08:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EK8msxwlBvOBbA2qMwYZIpo7/uiVg9Znw5doeInImnQ=; b=fdHGZhr/cfZJdl
	PUbhHv/C0TuPNZdanD+gVWgFbvIFIHFLFgqZSKM/Klgdl5gVuZF4TFYW8iAFRwWC+kYQGJ9sWqcaV
	ly72ZdNiPb3JlZ++mlGOepe9n7PKn4NWYPFhYwwfK/q4Q2ZsDHlnADge6PPj9EQEF5THOh7dqZiBq
	yoTzljOfcXO43gOFnVDwXHHid1Ty6pSzkrGoqZpCMj7TfuSTWm+Hb4CTsUR7clJY9iaePzYHZx0Zg
	sRvNw6hnjla7GJZTAxUUPaxmVTgbQeu3rJPDawVl+6YYsK7h1x6NDIPAsq8elHvE2jsiAJpj6fV2U
	L1/NLDwA99ciVPBaNFPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqWhM-006pVU-Gs; Mon, 16 May 2022 09:07:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqWhH-006pUh-95
 for barebox@lists.infradead.org; Mon, 16 May 2022 09:07:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nqWhF-00005b-NE; Mon, 16 May 2022 11:07:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nqWhF-0006UR-6h; Mon, 16 May 2022 11:07:21 +0200
Date: Mon, 16 May 2022 11:07:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220516090721.GN25578@pengutronix.de>
References: <20220516070049.11963-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220516070049.11963-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:57:18 up 46 days, 21:26, 78 users,  load average: 0.02, 0.04, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_020723_378630_72B3BB1C 
X-CRM114-Status: GOOD (  28.31  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clk: fix clk_round_rate() behaviour
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Denis,

On Mon, May 16, 2022 at 10:00:49AM +0300, Denis Orlov wrote:
> Right now this function returns the current rate of the clock in the
> case when the round_rate() is not given in the clock's ops. This breaks
> clk_set_rate(), which calls clk_round_rate() to check if the resulting
> frequency would be the same as the one that is already set.
> Make it so that clk_round_rate() returns the frequency that was given as
> argument in this case.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  drivers/clk/clk.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 52e309e877..7492717d3c 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -139,16 +139,16 @@ long clk_round_rate(struct clk *clk, unsigned long rate)
>  	if (IS_ERR(clk))
>  		return 0;
>  
> +	if (!clk->ops->round_rate)
> +		return rate;
> +
>  	parent = clk_get_parent(clk);
>  	if (parent)
>  		parent_rate = clk_get_rate(parent);
>  
>  	hw = clk_to_clk_hw(clk);
>  
> -	if (clk->ops->round_rate)
> -		return clk->ops->round_rate(hw, rate, &parent_rate);
> -
> -	return clk_get_rate(clk);
> +	return clk->ops->round_rate(hw, rate, &parent_rate);
>  }

I smell problems with this patch. Which clocks do you have that do not
have a round_rate hook but still allow to set its rate?

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

