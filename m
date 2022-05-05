Delivery-date: Thu, 05 May 2022 09:55:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWKs-002Taa-4l
	for lore@lore.pengutronix.de; Thu, 05 May 2022 09:55:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWKq-0005x8-Qo
	for lore@pengutronix.de; Thu, 05 May 2022 09:55:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VIDXMpVFcAjvnCY7Hp7czKitZFKVANZ/jLRqksdKJ8Y=; b=sJ2RQssR3w52utO7P0C2+Xhmiy
	FQKbOhWlRH6mZwuqgtRUnHbXsFK/SRyx+XtXUb7i7UwAAbb8GvJ2rIn5h/178Ah2fPIzEbGQKTxVz
	VlipJUJ0Yec59Gr8r+sXdjMjmaAcqLag/8kjBPpf3PSKUak+w0TaFXSFFNVWtx8afoP8I7JfOC5Wo
	PorBo1i4PAAGj2tZQ9oIsC3RIOgD4vyxDvyKMD0cQxa+cmylkxPlhe5VQPH5eV4HMEolWzXbdBt0Z
	wNLykj/nIYpKt4es+R2u+RNWutvfV3wc93jt1VGLYnlUGQdW+kxCfALsT8VULALh4vySct6JWcALL
	J37SkHbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWJ3-00EVHF-CG; Thu, 05 May 2022 07:53:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWIy-00EVGM-Bu
 for barebox@lists.infradead.org; Thu, 05 May 2022 07:53:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmWIw-0005pq-8o; Thu, 05 May 2022 09:53:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmWIv-0001Av-O3; Thu, 05 May 2022 09:53:41 +0200
Date: Thu, 5 May 2022 09:53:41 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220505075341.GK4012@pengutronix.de>
References: <20220505065206.10816-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220505065206.10816-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:53:31 up 35 days, 20:23, 84 users,  load average: 0.67, 0.31, 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_005344_442062_239CC0EF 
X-CRM114-Status: GOOD (  23.43  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: omap: Cleanup omap4_revision
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 05, 2022 at 09:52:06AM +0300, Alexander Shiyan wrote:
> Clean up the omap4 revision function by removing exceeding break statements.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/mach-omap/omap4_generic.c | 17 ++++-------------
>  1 file changed, 4 insertions(+), 13 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
> index c9a89c57b7..406b686318 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -433,38 +433,29 @@ unsigned int omap4_revision(void)
>  		return OMAP4430_ES1_0;
>  	case MIDR_CORTEX_A9_R1P2:
>  		switch (readl(CONTROL_ID_CODE)) {
> -		case OMAP4_CONTROL_ID_CODE_ES2_0:
> -			return OMAP4430_ES2_0;
> -			break;
>  		case OMAP4_CONTROL_ID_CODE_ES2_1:
>  			return OMAP4430_ES2_1;
> -			break;
>  		case OMAP4_CONTROL_ID_CODE_ES2_2:
>  			return OMAP4430_ES2_2;
> -			break;
>  		default:
> -			return OMAP4430_ES2_0;
>  			break;
>  		}
> -		break;
> +		return OMAP4430_ES2_0;
>  	case MIDR_CORTEX_A9_R1P3:
>  		return OMAP4430_ES2_3;
> -		break;
>  	case MIDR_CORTEX_A9_R2P10:
>  		switch (readl(CONTROL_ID_CODE)) {
>  		case OMAP4460_CONTROL_ID_CODE_ES1_1:
>  			return OMAP4460_ES1_1;
> -			break;
> -		case OMAP4460_CONTROL_ID_CODE_ES1_0:
>  		default:
> -			return OMAP4460_ES1_0;
>  			break;
>  		}
> -		break;
> +		return OMAP4460_ES1_0;
>  	default:
> -		return OMAP4430_SILICON_ID_INVALID;
>  		break;
>  	}
> +
> +	return OMAP4430_SILICON_ID_INVALID;
>  }
>  
>  /*
> -- 
> 2.32.0
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

