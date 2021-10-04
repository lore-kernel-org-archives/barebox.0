Delivery-date: Mon, 04 Oct 2021 14:15:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMsp-0007d0-Qf
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 14:15:51 +0200
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMso-0000Dm-Th
	for lore@pengutronix.de; Mon, 04 Oct 2021 14:15:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OX4em/AkBLtaybjm6iVEf9QnuxM0msmRtthgdcw2sfk=; b=i/P4s4ejFzmM72rrroIyOgSVVv
	fgJSPsFT0IHoPrtBDVS83snMgcEPQw0/hI3ZjWTyGA8OkbwDVcM77Q3CViw12yDK1djbKg1llFuwo
	7uY+wU5paCUejhWLTD1pFUh/oQbR2Dt/sTZkcQ66ZTuAdvBqFXZ+s98C3X5T8EUSD4PkPA3/QDQTb
	xis/zTiQwh6j1XUf0ssUUwR7KHMcnBfOPeRe5GMIrvCkm7m27VHZXaR9Dwld9GeN67Nqmc/m1uuGC
	HnYCSkNnl5gXlsday8ZFfuCDD/w+iiLAV/m7ci6Se6hfJ4NKMtBOKhtvSjeH7A3gq8F3awG+4RRYi
	/K4jh8wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXMrJ-006PFz-59; Mon, 04 Oct 2021 12:14:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXMr4-006P9q-Dv
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 12:14:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXMr2-0008Gg-Vn; Mon, 04 Oct 2021 14:14:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXMr2-0007Bv-LH; Mon, 04 Oct 2021 14:14:00 +0200
Date: Mon, 4 Oct 2021 14:14:00 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211004121400.GJ28453@pengutronix.de>
References: <20210830115325.24905-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210830115325.24905-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:13:50 up 228 days, 15:37, 143 users,  load average: 0.27, 0.28,
 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_051402_501940_46213F2C 
X-CRM114-Status: GOOD (  23.47  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP: move SCTR enabling into
 imx8mp_cpu_lowlevel_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 30, 2021 at 01:53:25PM +0200, Ahmad Fatoum wrote:
> We already do this SCTR poking in imx8mm_cpu_lowlevel_init. If the EVK
> needs it, other boards should as well, thus move it to a more generic
> place.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mp-evk/lowlevel.c | 5 -----
>  arch/arm/mach-imx/cpu_init.c              | 4 +---
>  2 files changed, 1 insertion(+), 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> index 3298ded5866d..6cb109ae1675 100644
> --- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> @@ -179,11 +179,6 @@ static __noreturn noinline void nxp_imx8mp_evk_start(void)
>  
>  ENTRY_FUNCTION(start_nxp_imx8mp_evk, r0, r1, r2)
>  {
> -	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
> -
> -	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
> -	       ccm + IMX8M_CCM_CCGRn_SET(IMX8M_CCM_CCGR_SCTR));
> -
>  	imx8mp_cpu_lowlevel_init();
>  
>  	relocate_to_current_adr();
> diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
> index a034b5a9a500..ea1c67469122 100644
> --- a/arch/arm/mach-imx/cpu_init.c
> +++ b/arch/arm/mach-imx/cpu_init.c
> @@ -76,9 +76,7 @@ void imx8mm_cpu_lowlevel_init(void)
>  }
>  
>  void imx8mp_cpu_lowlevel_init(void)
> -{
> -	imx8m_cpu_lowlevel_init();
> -}
> +	__alias(imx8mm_cpu_lowlevel_init);
>  
>  void imx8mq_cpu_lowlevel_init(void)
>  {
> -- 
> 2.30.2
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

