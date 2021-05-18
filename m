Delivery-date: Tue, 18 May 2021 14:23:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liykW-0004Pu-A5
	for lore@lore.pengutronix.de; Tue, 18 May 2021 14:23:00 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liykV-0007LJ-Dr
	for lore@pengutronix.de; Tue, 18 May 2021 14:23:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AezwMRPCGP3plwv2T46yd3oTFy3x56B4iaN2PyGOZUA=; b=DOPy8zkLXtnaEvovcIF30GJlR
	d1eZjTtoQARUjdufIoFBCcxfvdCH9Chk6GmqMxF6Nd+uS1FUefbo/pt4MYzj9oelbIvS5H2LhP/6r
	QKJv5sITJkk6NprbQ4JgqOqzRq6EHtcrHGx5ga2gTGuzjVtYZx/LUyMpjgJXBBw/iIbuMqPvv0Bce
	pcoF65l3/ZAWxWcnT3oOzcP/dw9kkevjHg2Jx/N61BCNAOxZnSj5+ZxwISBhUU8vc8QGkO/MGP0ay
	3dHLA/Aq9o78nBKLoehAc1nZdSzQUTha2fFq5zEh+P+S9xoqFWt8TvCl2rm1vaGo/k1fHlPp4Appw
	a8Ra6DTtQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyjd-000ka9-Ou; Tue, 18 May 2021 12:22:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyjY-000kZl-JY
 for barebox@desiato.infradead.org; Tue, 18 May 2021 12:22:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=EsYxEpnF5H2IkCMWonl+BHgQuZvMeEt/x+4e6HQXl6c=; b=CaDpd0i0k3wqKxcgY8FECZFm4J
 HyfNf2lZSPCcjFriloAvbusN7iKNd+ZnnzBMpRl54zGd1PqNzMvtxznmyp9mhB1I3BLpTL9AnROof
 EL831/0K0oiULQUHVpGZmzooJgMA1S+wjyZyXOiBxQ7CaGD71rH213s3gk78KSHbImqhyGOnlYIO4
 dJNGSmfSGdURTcJdHWYxPcV+A37hYiFxrsCc0eLdbeTkexA1sKCwVsvxaDkivtCumPtMmIrzKrzVq
 Ng+gt/J0OldhY+WK7OXOFtuOzwGM0J7HGu/iKvQ8MfY70pKOIUwrrcpYpat5YknLl7VqDkx4H7wlR
 bsrvLbzQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyjV-00Ee2M-Vi
 for barebox@lists.infradead.org; Tue, 18 May 2021 12:21:59 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1liyjU-00075G-Oq; Tue, 18 May 2021 14:21:56 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
 <20210518114929.12964-6-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c936d8f9-a794-af10-bbc7-5366fa02bc2b@pengutronix.de>
Date: Tue, 18 May 2021 14:21:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210518114929.12964-6-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_052158_049636_525610F1 
X-CRM114-Status: GOOD (  22.08  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 05/14] clk: divider: Add ro ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 18.05.21 13:49, Sascha Hauer wrote:
> The Linux version of the clk divider exports a clk_divider_ro_ops. Do
> the same for barebox.

Is it much hassle to make these const from the get-go?

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/clk/clk-divider.c | 4 ++++
>  include/linux/clk.h       | 1 +
>  2 files changed, 5 insertions(+)
> 
> diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
> index edbba941b7..080aaa58a2 100644
> --- a/drivers/clk/clk-divider.c
> +++ b/drivers/clk/clk-divider.c
> @@ -302,6 +302,10 @@ struct clk_ops clk_divider_ops = {
>  	.round_rate = clk_divider_round_rate,
>  };
>  
> +struct clk_ops clk_divider_ro_ops = {
> +	.recalc_rate = clk_divider_recalc_rate,
> +};
> +
>  struct clk *clk_divider_alloc(const char *name, const char *parent,
>  			      unsigned clk_flags, void __iomem *reg, u8 shift,
>  			      u8 width, unsigned div_flags)
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index 654845023a..d0bcdd7ac3 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -451,6 +451,7 @@ struct clk_divider {
>  #define CLK_MUX_READ_ONLY		(1 << 3) /* mux can't be changed */
>  
>  extern struct clk_ops clk_divider_ops;
> +extern struct clk_ops clk_divider_ro_ops;
>  
>  unsigned long divider_recalc_rate(struct clk *clk, unsigned long parent_rate,
>  		unsigned int val,
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

