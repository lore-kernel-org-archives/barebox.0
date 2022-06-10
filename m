Delivery-date: Fri, 10 Jun 2022 09:52:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzZRb-009na4-LB
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 09:52:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzZRa-0000to-3N
	for lore@pengutronix.de; Fri, 10 Jun 2022 09:52:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ne2YTQaYIXlDI4/VFNN6lL46QJQLCSFjecbBVQ2R+O0=; b=Cx8ffllKiBko6Q6dzulEiCKYxE
	rrA5obELSj4W6Z/a+qvwO2yM/mL7btwh40T/p00gsThAWYDgt6mCnPhAV0EiA9PpkIfaJU64SnAqu
	8GTQTb2WN7mH0yxuOxaujOeIcvREP3Jw21ik3Dou7tXnbGXf1Kx35g4iCP6Q/wLuc2ttI8dETqZwn
	7HG9eUD0RnQIQ5zgZUAb/ftEUrrTT2sZd5TmgKKrk4CoXU/rsqC5bAWmj+NylHfmiybCwy+tN0tC2
	71Wt+XsfGLE8neWmp1C6tzt5bDekNKOOGDOj2jIgixdCChPCcCPuR2Mq8NfLUaI1A6wiN/YxWvRMc
	Ju01XnGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZQM-006ZQi-TR; Fri, 10 Jun 2022 07:51:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZQI-006ZP3-3t
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 07:51:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzZQF-0000bE-Q7; Fri, 10 Jun 2022 09:51:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzZQF-0007jq-Gs; Fri, 10 Jun 2022 09:51:11 +0200
Date: Fri, 10 Jun 2022 09:51:11 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org,
	=?iso-8859-15?Q?J=FCrgen?= Borleis <jbe@pengutronix.de>
Message-ID: <20220610075111.GE1615@pengutronix.de>
References: <20220610070557.2651943-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220610070557.2651943-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_005114_194947_71E2F9AA 
X-CRM114-Status: GOOD (  20.09  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX7/8M: Make sure the output parameter is always
 assigned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 10, 2022 at 09:05:57AM +0200, Uwe Kleine-K=F6nig wrote:
> Callers of *_get_boot_source (e.g. start_atf() of
> nxp-imx8mm-evk or protonic-imx8m) expect src to hold the bootsource
> after return. So assign a value reliably.
> =

> Fixes: ea55770308c0 ("ARM: i.MX: Add i.MX7 base architecture support")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-imx/boot.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> index 63afdf1ef4ed..652e2869f2d7 100644
> --- a/arch/arm/mach-imx/boot.c
> +++ b/arch/arm/mach-imx/boot.c
> @@ -526,6 +526,7 @@ static void __imx7_get_boot_source(enum bootsource *s=
rc, int *instance,
>  		*src =3D BOOTSOURCE_SERIAL;
>  		break;
>  	default:
> +		*src =3D BOOTSOURCE_UNKNOWN;
>  		break;
>  	}
>  }
> =

> base-commit: 6a3f9ed1f5c55957b2ed4f460955281539e8e785
> -- =

> 2.30.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

