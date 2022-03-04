Delivery-date: Fri, 04 Mar 2022 15:30:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQ8xL-00031d-8A
	for lore@lore.pengutronix.de; Fri, 04 Mar 2022 15:30:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQ8xJ-00084m-UC
	for lore@pengutronix.de; Fri, 04 Mar 2022 15:30:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lyd4bHrIHfYEajrg/3G21NgjnXHETdptVX9XnVcEH5A=; b=gm/C3y90hOrmAfXxIwCHkGQOKr
	vkKsnieXVu+sVbWBDF2IvbR0lJhDu8pcWEkLnkeQQFPeh/ZAlUvHPhNxxJ7dh8jB/5zDBBMWIe/+y
	yJImUWiZganh5lQ9ryC+5fEgU7cTJvnFSa7ya5tYzMDabXvpIiZzkSRZa/Rww7uVcUH6boqRIMO78
	V4Cz4wqjC/Wq2lowmCUnTyBOtD52/PHOBm9mAqZpcwVTKCkdNpqcBrCket9EymP6KbBNIXOaxLPn/
	zbo7kkxppgJd3Y8tDyaAOkTiOA9zMcSw4htMe9DuLlO8DtxywKs3O6ZW8Ir3xBYFIbH2Q7ulc8xzd
	VVh4xDJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ8vy-00ATmg-Hk; Fri, 04 Mar 2022 14:29:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ8vZ-00ATcR-KE
 for barebox@lists.infradead.org; Fri, 04 Mar 2022 14:29:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nQ8vY-0007f1-Al; Fri, 04 Mar 2022 15:29:04 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nQ8vX-00080S-Tm; Fri, 04 Mar 2022 15:29:03 +0100
Date: Fri, 4 Mar 2022 15:29:03 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Christian Melki <christian.melki@t2data.com>
Message-ID: <20220304142903.GA405@pengutronix.de>
References: <20220303144246.3603311-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220303144246.3603311-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:28:55 up 83 days, 23:14, 83 users,  load average: 0.13, 0.18, 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_062905_698351_0501A019 
X-CRM114-Status: GOOD (  28.07  )
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
Subject: Re: [PATCH 1/2] ARM: i.MX: factor out AIPS configuration into helper
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 03, 2022 at 03:42:45PM +0100, Ahmad Fatoum wrote:
> We have the exact same sequence twice for each AIPS and i.MX6ULL/SX add
> another AIPS, so it's time to factor this out into a dedicated helper
> function and comment it a bit more.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx6.c | 44 +++++++++++++++++++++-------------------
>  1 file changed, 23 insertions(+), 21 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index 3ee42fd966dd..256288b25a88 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -31,10 +31,29 @@
>  #define MX6_OCOTP_CFG0			0x410
>  #define MX6_OCOTP_CFG1			0x420
>  
> +static void imx6_configure_aips(void __iomem *aips)
> +{
> +	/*
> +	 * Set all MPROTx to be non-bufferable, trusted for R/W,
> +	 * not forced to user-mode.
> +	 */
> +	writel(0x77777777, aips);
> +	writel(0x77777777, aips + 0x4);
> +
> +	/*
> +	 * Set all OPACRx to be non-bufferable, not require
> +	 * supervisor privilege level for access,allow for
> +	 * write access and untrusted master access.
> +	 */
> +	writel(0, aips + 0x40);
> +	writel(0, aips + 0x44);
> +	writel(0, aips + 0x48);
> +	writel(0, aips + 0x4c);
> +	writel(0, aips + 0x50);
> +}
> +
>  static void imx6_init_lowlevel(void)
>  {
> -	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
> -	void __iomem *aips2 = (void *)MX6_AIPS2_ON_BASE_ADDR;
>  	bool is_imx6q = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6Q;
>  	bool is_imx6d = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6D;
>  	uint32_t val_480;
> @@ -51,25 +70,8 @@ static void imx6_init_lowlevel(void)
>  	if ((readl(MXC_CCM_CCGR6) & 0x3))
>  		imx_reset_otg_controller(IOMEM(MX6_OTG_BASE_ADDR));
>  
> -	/*
> -	 * Set all MPROTx to be non-bufferable, trusted for R/W,
> -	 * not forced to user-mode.
> -	 */
> -	writel(0x77777777, aips1);
> -	writel(0x77777777, aips1 + 0x4);
> -	writel(0, aips1 + 0x40);
> -	writel(0, aips1 + 0x44);
> -	writel(0, aips1 + 0x48);
> -	writel(0, aips1 + 0x4c);
> -	writel(0, aips1 + 0x50);
> -
> -	writel(0x77777777, aips2);
> -	writel(0x77777777, aips2 + 0x4);
> -	writel(0, aips2 + 0x40);
> -	writel(0, aips2 + 0x44);
> -	writel(0, aips2 + 0x48);
> -	writel(0, aips2 + 0x4c);
> -	writel(0, aips2 + 0x50);
> +	imx6_configure_aips(IOMEM(MX6_AIPS1_ON_BASE_ADDR));
> +	imx6_configure_aips(IOMEM(MX6_AIPS2_ON_BASE_ADDR));
>  
>  	/* Due to hardware limitation, on MX6Q we need to gate/ungate all PFDs
>  	 * to make sure PFD is working right, otherwise, PFDs may
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

