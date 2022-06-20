Delivery-date: Mon, 20 Jun 2022 14:07:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3GBO-0083pj-E8
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 14:07:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3GBM-0002oF-FH
	for lore@pengutronix.de; Mon, 20 Jun 2022 14:07:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nOIs4VQO8nf938SAh8HNavLWihkvLt7b4NpFrrie5zI=; b=F5xZ/YiYCupG+W7yC4RT9EGJo6
	zj2I/kDz2LfxGy10UfL+4B5ZgXxz9lXpkOV+HtW2/AozBrYckDjyRJ0GhVtgRsvs6lfQRXvJWduRr
	4+b9nxb3ApcmtirD15ANyYRu4qHb/gOW8x/gGD49I9qI6lwM8e8GHaF2CQC6v7EXIVAP4LLJP9ZnO
	2uoX+1V5JGpdc5On5dz9P0r6YZCj0jes24q6ng0BeKnmOuTsWPIKmq8wxtnkDC3h3csoMhcds48l7
	SCOMWPwBCptvkvZ/62JJ1R1ddlAKv//Wns3c5d2mT1QmdcQITJNeFhO1i9TgFzj8yb3m+bLxIfpWY
	qSeTha5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3G9a-000FNg-HM; Mon, 20 Jun 2022 12:05:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3G70-000E8F-IO
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 12:02:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o3G6w-0001EL-A6; Mon, 20 Jun 2022 14:02:30 +0200
Message-ID: <134ee58e-b58e-4551-d834-c4d115f91d99@pengutronix.de>
Date: Mon, 20 Jun 2022 14:02:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Teresa Remmet <t.remmet@phytec.de>, barebox@lists.infradead.org,
 Lucas Stach <lst@pengutronix.de>
Cc: upstream@phytec.de
References: <20220520142337.993417-1-t.remmet@phytec.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220520142337.993417-1-t.remmet@phytec.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_050234_712420_9C4F3BFB 
X-CRM114-Status: GOOD (  21.91  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] arm: imx: mmdc_size: Increase row_max for imx8m
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 20.05.22 16:23, Teresa Remmet wrote:
> As DDRC_ADDRMAP7_ROW_B16 and DDRC_ADDRMAP7_ROW_B17 are used
> now for the row size calculation we need to increase row_max to 18.
> 
> For LPDDR4 this only works in combination with ram timings
> created with recent configuration spreadsheet versions.
> With older versions the register DDRC_ADDRMAP7 may not be set and
> calculation will lead to wrong results even with this patch.
> 
> Fixes: dad2b5636bd8 ("ARM: imx: Add imx8 support for 18 bit SDRAM row size handle")
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>

I have an out-of-tree i.MX8MM board with LPDDR4 that reported a correct size of 1G
prior to this patch and now it reports 4G. DDRC_ADDRMAP7 is not explicitly initialized,
but it's being read as zero, so the calculation seems to still be broken..

> ---
>  arch/arm/mach-imx/esdctl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 8dd0ddbbc965..b070ebc62a45 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -488,7 +488,7 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
>  
>  	return imx_ddrc_sdram_size(ddrc, addrmap,
>  				   12, ARRAY_AND_SIZE(col_b),
> -				   16, ARRAY_AND_SIZE(row_b),
> +				   18, ARRAY_AND_SIZE(row_b),
>  				   reduced_adress_space, true);
>  }
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


