Delivery-date: Mon, 21 Jun 2021 09:58:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvEp3-0007j1-Qb
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 09:58:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvEp2-0004Yk-Rw
	for lore@pengutronix.de; Mon, 21 Jun 2021 09:58:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cWc2M/jLYaGobhFtISE7g2HhvLdGKaXm7voFQT3N1Pk=; b=TOXsGzFlPOvYrRrrIRFBRxamgS
	lAWgsrTDKnigoGUUzwJbIz2ne5BXsgr+WMYLdaw0edU2+0IY/FudXJGfSdd3ShQCv/PRhSZAcyNCB
	lNJ6wOPOJHJBijjon6gVmemEqt8hqPT5e6lVNf8dyUE2jubPsM50YhMKI+nmsnBn7Bb7ehKShjsPT
	56eEWS4bkHiSC7HGF20XXWKtfiKaBtXBACFcibVuqWVcvN1I+nsh3S8yzVOLhhacj3YLz+31HUaIY
	xxhMf77T4qzeIttGDCsyG66H+ahqus9briNsidx5fS+xzYFPYUgVSeH6c23qQLEpJp07JwAoWxD0T
	B5ghn/1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvEnw-002cIx-FW; Mon, 21 Jun 2021 07:57:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvEnr-002cIT-4e
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 07:57:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvEnp-0004QG-Tc; Mon, 21 Jun 2021 09:57:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvEnp-0002RP-Jp; Mon, 21 Jun 2021 09:57:05 +0200
Date: Mon, 21 Jun 2021 09:57:05 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210621075705.GO9782@pengutronix.de>
References: <20210621064719.19246-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210621064719.19246-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:56:56 up 123 days, 11:20, 120 users,  load average: 0.21, 0.19,
 0.23
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_005707_231842_41F54764 
X-CRM114-Status: GOOD (  24.45  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] watchdog: dw_wdt: fix resource reservation error
 check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 21, 2021 at 08:47:19AM +0200, Ahmad Fatoum wrote:
> dev_request_mem_resource returns a possible error pointer. If it
> succeeds mem->start will always be valid. Rectify the confusion.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/watchdog/dw_wdt.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
> index 70d6f0cced72..774d211a5f90 100644
> --- a/drivers/watchdog/dw_wdt.c
> +++ b/drivers/watchdog/dw_wdt.c
> @@ -143,9 +143,10 @@ static int dw_wdt_drv_probe(struct device_d *dev)
>  	dw_wdt = xzalloc(sizeof(*dw_wdt));
>  
>  	mem = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(mem))
> +		return PTR_ERR(mem);
> +
>  	dw_wdt->regs = IOMEM(mem->start);
> -	if (IS_ERR(dw_wdt->regs))
> -		return PTR_ERR(dw_wdt->regs);
>  
>  	clk = clk_get(dev, NULL);
>  	if (IS_ERR(clk))
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

