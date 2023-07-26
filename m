Delivery-date: Wed, 26 Jul 2023 15:39:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOejo-00AuNZ-IT
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 15:39:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOejl-00051l-VR
	for lore@pengutronix.de; Wed, 26 Jul 2023 15:39:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7jWBrhnZeGM6i6p3s7i6jkARdbX7lr7izi9pu/djJ/k=; b=2NvGzqXejcfbbzaahtlxatort1
	uHpBxSnUVaKtA+c1fwhogkCittVOkznAgsuosCDOvBnlg58mFJZFb+byQDzcji178cvzsXc6Y9H90
	2q/d6kPuPTOwFb9HpXV0B3jQsY+h+TUowepyJr/BNH4qJz3OFiJGyPjwKTyfLr+dR7BYg7GN9NFAK
	l4FNOUmBCOAd+aKGpp76ycj81Ku3x4cRFUmPgMKnwWSX0v5E1ipJhLV+wRezz8MugC+r2XAIkBWx8
	iUWByTDEBCVEvRNbF8nZlFrs2fwhfW5AG33axhBeG0YeBbACjBsSVdai/nxVKlUtBnZyVqBhUpjax
	5UZuaRKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOeik-00AZGl-0X;
	Wed, 26 Jul 2023 13:38:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOeig-00AZFO-2R
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 13:38:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOeie-0004lj-Ro; Wed, 26 Jul 2023 15:38:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOeie-0000ze-L2; Wed, 26 Jul 2023 15:38:24 +0200
Date: Wed, 26 Jul 2023 15:38:24 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230726133824.GW18491@pengutronix.de>
References: <20230706161640.843682-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230706161640.843682-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_063826_790366_05129F94 
X-CRM114-Status: GOOD (  23.29  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ddr: imx8m: add comment and print out prior to first
 DDRC read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jul 06, 2023 at 06:16:40PM +0200, Ahmad Fatoum wrote:
> If board code low level entry forgets to call imx8m*_early_clock_init
> before DRAM setup, write access to DRAM controller will seem to work,
> but the first read access will hang the system.
> 
> Make debugging this board bring up mistake easier by adding a debug
> print along with a comment.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/ddr/imx8m/ddr_init.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
> index 944cc3873e0c..9a86280d9c73 100644
> --- a/drivers/ddr/imx8m/ddr_init.c
> +++ b/drivers/ddr/imx8m/ddr_init.c
> @@ -106,7 +106,11 @@ int imx8m_ddr_init(struct dram_timing_info *dram_timing,
>  	reg32_write(DDRC_RFSHCTL3(0), 0x0000001);
>  	reg32_write(DDRC_PWRCTL(0), 0xa0);
>  
> -	/* if ddr type is LPDDR4, do it */
> +	pr_debug("checking ddr type\n");
> +	/*
> +	 * below is first read, so if boot hangs here, imx8m*_early_clock_init()
> +	 * might not have been called
> +	 */
>  	tmp = reg32_read(DDRC_MSTR(0));
>  	if (tmp & (0x1 << 5) && ddrc_type != DDRC_TYPE_MN)
>  		reg32_write(DDRC_DDR_SS_GPR0, 0x01); /* LPDDR4 mode */
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


