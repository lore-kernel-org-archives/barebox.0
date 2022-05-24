Delivery-date: Tue, 24 May 2022 09:11:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntOhu-007Ilq-5i
	for lore@lore.pengutronix.de; Tue, 24 May 2022 09:11:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntOhs-0002hb-J2
	for lore@pengutronix.de; Tue, 24 May 2022 09:11:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vllmpF3Khovp7csOERlIf4ziRUoulf3RegqPmY1SMNw=; b=K2OWy4xHX9t8faN111riKlpWZ1
	csG3IYtDpbWJ8JqbEXDNPjp5PEjg21Fl/6QeAG87ExnP8plKmemmwbFBaJonCeLWl1uvxNo4D7i4s
	iSbT9Od0rkjBiPVgUfkqvh5vio12k7D+6ApziJ9V13XveZrwuLlBhMR0yCBv1pLKJeEv8adXgzMMH
	JOuBWCLo1Ev3TGKxyDzx0kHqVxOsZpqXVanB8lTsxEkwOr/8tFeRvSraVQORSbQSLZjMt2dpnrTNZ
	bZ/4YQ77fpRxdCBuos++/wEVbedxPtY6Ak8/v6U1ToTMb/j6lQy1SioSDfZF2d7B77E3S0OVbJtnZ
	8KbcSR/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntOgS-0071fW-Kw; Tue, 24 May 2022 07:10:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntOgN-0071f6-VQ
 for barebox@lists.infradead.org; Tue, 24 May 2022 07:10:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ntOgL-00027C-Vu; Tue, 24 May 2022 09:10:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ntOgL-00084d-Ls; Tue, 24 May 2022 09:10:17 +0200
Date: Tue, 24 May 2022 09:10:17 +0200
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org, upstream@phytec.de
Message-ID: <20220524071017.GT25578@pengutronix.de>
References: <20220520142337.993417-1-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220520142337.993417-1-t.remmet@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:08:41 up 54 days, 19:38, 61 users,  load average: 0.05, 0.18, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_001020_031139_AC7F0F3E 
X-CRM114-Status: GOOD (  25.78  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: imx: mmdc_size: Increase row_max for imx8m
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 20, 2022 at 04:23:37PM +0200, Teresa Remmet wrote:
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
> ---
>  arch/arm/mach-imx/esdctl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

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
> -- 
> 2.25.1
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

