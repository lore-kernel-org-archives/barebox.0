Delivery-date: Mon, 16 May 2022 10:11:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqVpb-00FMIp-D2
	for lore@lore.pengutronix.de; Mon, 16 May 2022 10:11:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqVpX-0001bk-7D
	for lore@pengutronix.de; Mon, 16 May 2022 10:11:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UOWQj4VVetGofMwFqkldFAHLa/rZihe9z4WqWS00iVI=; b=pqg+jzRxLg69TfQMsudwFhX3ld
	k9czIm2Z5VXkJuR4g4Hjf6Xc3/7rU4DFsSYxa1R+9LXI46vLarC4wS7YJfW5kXu9czvSLPYufpKKH
	wubReP7N7wvp2VggSOr3mHn0m/O0j4EK1NGKCLJgpp06ZzGljNGxYqHwXx9KhhnLKtDN88nEgG3BS
	DyOmOUNGyU55nMFkbyBCQKq5Kpbvq7yXLlK51zSrlgGde9tB8N9lN+aT/CrYFubdpWdUJOl6PeXKB
	hzD8TBkwvMjm7qNNXrc6LyTQkCvEZ1s3AwuQ5y6zrOlCUUAGfO0juoTU/TOzAM1sZ0EGixEZL7Ek5
	JHksh/8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqVoF-006baK-HA; Mon, 16 May 2022 08:10:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqVoA-006bYs-91
 for barebox@lists.infradead.org; Mon, 16 May 2022 08:10:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nqVo9-00019P-2h; Mon, 16 May 2022 10:10:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nqVo8-0002GM-Ob; Mon, 16 May 2022 10:10:24 +0200
Date: Mon, 16 May 2022 10:10:24 +0200
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220516081024.GI25578@pengutronix.de>
References: <20220513141625.1411217-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220513141625.1411217-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:10:07 up 46 days, 20:39, 76 users,  load average: 0.30, 0.38, 0.39
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_011026_354425_2F555477 
X-CRM114-Status: GOOD (  26.19  )
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
Subject: Re: [PATCH] ARM: imx: esdctl: fix LPDDR4 size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 13, 2022 at 04:16:25PM +0200, Lucas Stach wrote:
> The DDRC only uses the DEVICE_CONFIG field for memory types other than
> LPDDR4. While LPDDR4 always has a bus width of x32, the script aid
> generates the value for a x16 bus, as this was apparently used for the
> controller validation. This resulted in the calculated DRAM size to be
> halved on boards with LPDDR4 memory.
> 
> Fixes: d8d5778ee8c2 ("ARM: imx: Correct mem size calculation for 4/8/16/32 bit bus width")
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/mach-imx/esdctl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index d3dbfff423da..4c8765c193d0 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -392,7 +392,7 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
>  	}
>  
>  	/* Bus width in bytes, 0 means half byte or 4-bit mode */
> -	if (is_imx8)
> +	if (is_imx8 && !(mstr & DDRC_MSTR_LPDDR4))
>  		width = (1 << FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr)) >> 1;
>  	else
>  		width = 4;
> -- 
> 2.35.3
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

