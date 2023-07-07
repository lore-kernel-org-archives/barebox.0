Delivery-date: Fri, 07 Jul 2023 08:26:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHeva-001CGH-4W
	for lore@lore.pengutronix.de; Fri, 07 Jul 2023 08:26:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHevX-0004bS-GO
	for lore@pengutronix.de; Fri, 07 Jul 2023 08:26:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7yn6fXZrDjQ5hdNtPZ7lTBWOyaeXEcz8WHubEr+AO8s=; b=OCdB5uHF6wGkQFHZm9mNcpAawR
	CEtI7+2WWSVZQGmam3Bts89wg0L77d6J2CP5NFbVERJO2LpL/JipN2Kk18O+7At4RUU9DkNd0xHjJ
	0CFnKyAiFAKFJtoBbOJjugDMB/tVw5GC5HceWU++YmWiZHJkZdvY93W/dlRUHgpxQE+WQ+r7TmZJw
	qs4DTHpOfitMsO7ZpSwYwwGpaH6gCICOXKNQ0ggLqcCIJWbxCyzt+UtWTvpS4Ihb4wyLZcnpfffQe
	5yVuILXp8ERa0O82s9OD4c3keXNJa1lNp9bljQ1ClC0D1BOtLcABA8JthksLDdGWeir5/u5I+3E7+
	Pk1/iHFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHeu4-003kBm-1z;
	Fri, 07 Jul 2023 06:25:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHeu1-003kAZ-21
	for barebox@lists.infradead.org;
	Fri, 07 Jul 2023 06:25:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qHetu-0004Ei-PO; Fri, 07 Jul 2023 08:25:06 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qHetu-0006Qj-JD; Fri, 07 Jul 2023 08:25:06 +0200
Date: Fri, 7 Jul 2023 08:25:06 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230707062506.k2f6ectsrhfh7vgc@pengutronix.de>
References: <20230706161640.843682-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230706161640.843682-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_232513_663402_2287F144 
X-CRM114-Status: GOOD (  17.76  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ddr: imx8m: add comment and print out prior to first
 DDRC read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-07-06, Ahmad Fatoum wrote:
> If board code low level entry forgets to call imx8m*_early_clock_init
> before DRAM setup, write access to DRAM controller will seem to work,
> but the first read access will hang the system.
> 
> Make debugging this board bring up mistake easier by adding a debug
> print along with a comment.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/ddr/imx8m/ddr_init.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
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


