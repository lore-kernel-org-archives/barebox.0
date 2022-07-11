Delivery-date: Mon, 11 Jul 2022 12:45:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAqum-002Re9-Qg
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 12:45:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAquk-0005AV-NC
	for lore@pengutronix.de; Mon, 11 Jul 2022 12:45:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EcgPQdYFlQ3cuR7E8e8LK2jG4oWE9A8tGnMvlCLSjT4=; b=W5p78OwECM4vHkeD/wMcjidGtR
	tYNefNiPouZtE3mXRPPstlLNh++qGuT3i+7igO75lqsl+vvvaOd2jBl5qaVRGYujYk4FFNoBUDkeA
	ec8qBDkCfJF0yx43GyIGOwfxNZPBBWJO503Ui9N71xuLiqDOT+/Mn63fSFAiSvQYMuKP9KF9mDg6M
	Xq8VkYtF0D/TywIu2L2N3nXWUqWj6ISvc7gsjMWFJ5+AxWPcN6UMiBm8POxax27aTd4+fvXVdxV1g
	r1Dsj3Wgp7pOmnRUL25K58Ze3St8K3guYBxdENaAfoS0H3nBRZXT35R4vHIHQlycV4clQBh+8vPZ8
	YGAZl9oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAqtR-000lFY-Lt; Mon, 11 Jul 2022 10:43:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAqtM-000lCd-29
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 10:43:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oAqtK-0004w0-M6; Mon, 11 Jul 2022 12:43:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oAqtJ-0008GB-GF; Mon, 11 Jul 2022 12:43:49 +0200
Date: Mon, 11 Jul 2022 12:43:49 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org,
	Yannick FERTRE <yannick.fertre@foss.st.com>
Message-ID: <20220711104349.GD29790@pengutronix.de>
References: <20220708055250.1175444-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220708055250.1175444-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_034352_119146_C6F6088D 
X-CRM114-Status: GOOD (  18.94  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] video: stm32: stm32_ltdc: fix data enable polarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jul 08, 2022 at 07:52:48AM +0200, Ahmad Fatoum wrote:
> From: Yannick FERTRE <yannick.fertre@foss.st.com>
> 
> Wrong DISPLAY_FLAGS used to set the data enable polarity.
> 
> Signed-off-by: Yannick FERTRE <yannick.fertre@foss.st.com>
> Origin: https://st-md-mailman.stormreply.com/pipermail/uboot-stm32/2022-April/005122.html
> [afa: cherry-picked from U-Boot driver]
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/video/stm32_ltdc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/stm32_ltdc.c b/drivers/video/stm32_ltdc.c
> index 645c20b5545f..9dc35ade6124 100644
> --- a/drivers/video/stm32_ltdc.c
> +++ b/drivers/video/stm32_ltdc.c
> @@ -98,7 +98,7 @@ static void ltdc_set_mode(struct ltdc_fb *priv,
>  		val |= GCR_HSPOL;
>  	if (mode->sync & FB_SYNC_VERT_HIGH_ACT)
>  		val |= GCR_VSPOL;
> -	if (mode->display_flags & DISPLAY_FLAGS_DE_HIGH)
> +	if (mode->display_flags & DISPLAY_FLAGS_DE_LOW)
>  		val |= GCR_DEPOL;
>  	if (mode->display_flags & DISPLAY_FLAGS_PIXDATA_NEGEDGE)
>  		val |= GCR_PCPOL;
> -- 
> 2.34.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


