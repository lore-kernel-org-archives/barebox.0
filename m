Delivery-date: Fri, 12 Aug 2022 09:24:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oMP1y-002ZKP-Si
	for lore@lore.pengutronix.de; Fri, 12 Aug 2022 09:24:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oMP1z-0005Ba-JC
	for lore@pengutronix.de; Fri, 12 Aug 2022 09:24:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UA+UGtGVZO8Z1X/j//gu7CcG/rp/w+ic5Y+1drZLP4w=; b=h8MbDREgiYm8ntNDiny3yxekBg
	CFrWNO7zNKjAwkPAZO53biREEIIo7HPE9tKZymKfwI9R4C7ExAR1vmwDrWfJ/gD/Ue1XFB6Fik8iN
	Eq/jrm4RVxVUYlUULbFMnYaFwB3QbisfYCdHioV6wNV097oV0DJ0DbP8vOp4oGCnetTTNyBPE8DNM
	1qzX1O0H/dP25USwUluaqp7ZF6a+pRXIdq6OUfCvSeaRRYceTlEIMOxNzDnWz5pLuBv/RmegkRG7V
	PB/1l9eB31GeLnzlveyaoacSKmUXAzgpxEXJPIdWu+HgGLRP/pfcRCLxVbactI8s9Sfr2ibf+EDqc
	5W4WPH+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMP0d-001BIz-N0; Fri, 12 Aug 2022 07:23:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMP0W-001ArK-Cy
	for barebox@lists.infradead.org; Fri, 12 Aug 2022 07:23:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oMP0U-00052l-MY; Fri, 12 Aug 2022 09:22:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oMP0U-0003ik-5C; Fri, 12 Aug 2022 09:22:58 +0200
Date: Fri, 12 Aug 2022 09:22:58 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220812072258.GC31528@pengutronix.de>
References: <20220811192612.3021687-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220811192612.3021687-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_002300_493009_837F17E4 
X-CRM114-Status: GOOD (  18.81  )
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
Subject: Re: [PATCH master] ARM: dts: imx6: marsboard: fix flash node after
 upstream rename
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 11, 2022 at 09:26:12PM +0200, Ahmad Fatoum wrote:
> Node name was renamed upstream, so have barebox follow suit.
> 
> Fixes: e54923b76e34 ("dts: update to v5.19-rc1")
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/arm/dts/imx6q-marsboard.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6q-marsboard.dts b/arch/arm/dts/imx6q-marsboard.dts
> index cc5edfff66f9..4dfb17489c72 100644
> --- a/arch/arm/dts/imx6q-marsboard.dts
> +++ b/arch/arm/dts/imx6q-marsboard.dts
> @@ -18,7 +18,7 @@ barebox,environment
>  };
>  
>  &ecspi1 {
> -	m25p80@0 {
> +	flash@0 {
>  		#address-cells = <1>;
>  		#size-cells = <1>;
>  
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


