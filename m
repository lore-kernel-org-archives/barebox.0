Delivery-date: Wed, 07 Dec 2022 07:57:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2oNN-00DLGG-Bm
	for lore@lore.pengutronix.de; Wed, 07 Dec 2022 07:57:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2oNM-0007hM-Ru
	for lore@pengutronix.de; Wed, 07 Dec 2022 07:57:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x3II+Ns8MbmKGB78yGZkccKbWNELzS1qswDj0Ct6Cxc=; b=sUpJCIsHT7C1OFwJU3u8P4Yn3U
	pzVjsFIGR8HqpcsKIUeRM6SsN12Ips0G6CaJMCfvRvmfgQtLqJ+Qh0VOjVLuMXuQV9RFlHCMPdsso
	reMmJSw1sxoORGJv5mU2Y7wfWQPRBza3De94fARHkEL+YouJgz5BH4L1iSzdlkij/YBW9B866q2ca
	26rqJwh5ReZ70iG0L8opZ+Xoha+GVQlBckIIOnSea0edk6wXnVVdZWYu3FEYThrafezJDJpJIeg1c
	t67wbEhq5x10QFYUJ8ss/1jjPDlzyq5SYFgmm5pHzwtLoblh5AncTjnhdkYX4Of7auSs+Mn1nY91B
	ANh22MOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oLh-00DW0v-UX; Wed, 07 Dec 2022 06:56:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oLd-00DVrg-8W
	for barebox@lists.infradead.org; Wed, 07 Dec 2022 06:56:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oLb-0007X0-Ub; Wed, 07 Dec 2022 07:56:03 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oLb-0000Pr-N4; Wed, 07 Dec 2022 07:56:03 +0100
Date: Wed, 7 Dec 2022 07:56:03 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221207065603.GX29728@pengutronix.de>
References: <20221205132835.3002605-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221205132835.3002605-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_225605_318024_15D82149 
X-CRM114-Status: GOOD (  20.11  )
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
Subject: Re: [PATCH 1/2] ddr: imx8m: warn about unsupported frequencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Dec 05, 2022 at 02:28:34PM +0100, Ahmad Fatoum wrote:
> When adding a new board with a yet unsupported DDR frequency, PLL
> configuration is silently skipped, leading to a later hang during DDRC
> configuration. Improve the bring up user experience by printing a
> warning in that case. The user is then expected to extend
> imx8mm_fracpll_table, so PBL knows how PLLs should be configured for
> this new frequency.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/ddr/imx8m/ddrphy_utils.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx8m/ddrphy_utils.c
> index c5d94e305086..3e03d4b75c9e 100644
> --- a/drivers/ddr/imx8m/ddrphy_utils.c
> +++ b/drivers/ddr/imx8m/ddrphy_utils.c
> @@ -344,6 +344,7 @@ void ddrphy_init_set_dfi_clk(unsigned int drate_mhz, enum ddrc_type type)
>  	case 400: drate = DDR_400; break;
>  	case 100: drate = DDR_100; break;
>  	default:
> +		pr_warn("Unsupported frequency %u\n", drate_mhz);
>  		return;
>  	}
>  
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


