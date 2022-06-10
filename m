Delivery-date: Fri, 10 Jun 2022 10:50:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzaLu-009q8o-JN
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 10:50:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzaLt-0003sl-C1
	for lore@pengutronix.de; Fri, 10 Jun 2022 10:50:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uXUEbr6OKSvFKQZah1zYQF1Q/zWE4JiHagLFY6QhivM=; b=shL68KrI51uD5QhbMZhFFweYtz
	0ItrWOM9LNBZMwh84+tPJ98bIj1f9BtYtTuRkCP80Uehj5HZdl9l6Upcv67TlMJ+7fLuY8b51XigC
	H9ECDKLjD7ni9MXKwH93ss7qUceOJ6DwzwQnj9wbXZjzStDGJxSp+uJynFrAMynMqg/QmzpodBN6q
	362SBhQNUti/9b2pH8+PDuDzEta02TXUCRy6locL7bnza3rR7SWdkqwkGHckZKl+QT2bfqeDfvv9m
	5UehB26wcq6iTv9jvZPnyg9zkY7L5M2axK3SINMNFWUWebLw1thPGfKc+WN0Z45rlZAOWcpDPmT8B
	W7f78cJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzaKQ-006v58-4n; Fri, 10 Jun 2022 08:49:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzaKH-006uy0-Sb
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 08:49:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzaKE-0002wT-Dy; Fri, 10 Jun 2022 10:49:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzaKE-0002Fl-3h; Fri, 10 Jun 2022 10:49:02 +0200
Date: Fri, 10 Jun 2022 10:49:02 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: =?iso-8859-15?Q?J=FCrgen?= Borleis <jbe@pengutronix.de>,
	barebox@lists.infradead.org
Message-ID: <20220610084902.GK1615@pengutronix.de>
References: <20220610070557.2651943-1-u.kleine-koenig@pengutronix.de>
 <11992981.O9o76ZdvQC@circona>
 <20220610084209.5aq3vtx3u3vyjimt@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220610084209.5aq3vtx3u3vyjimt@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_014905_945881_5A81AA2D 
X-CRM114-Status: GOOD (  27.73  )
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

On Fri, Jun 10, 2022 at 10:42:09AM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> On Fri, Jun 10, 2022 at 09:28:54AM +0200, J=FCrgen Borleis wrote:
> > Am Freitag, 10. Juni 2022, 09:05:57 CEST schrieb Uwe Kleine-K=F6nig:
> > > Callers of *_get_boot_source (e.g. start_atf() of
> > > nxp-imx8mm-evk or protonic-imx8m) expect src to hold the bootsource
> > > after return. So assign a value reliably.
> > > =

> > > Fixes: ea55770308c0 ("ARM: i.MX: Add i.MX7 base architecture support")
> > > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > > ---
> > >  arch/arm/mach-imx/boot.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > > =

> > > diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> > > index 63afdf1ef4ed..652e2869f2d7 100644
> > > --- a/arch/arm/mach-imx/boot.c
> > > +++ b/arch/arm/mach-imx/boot.c
> > > @@ -526,6 +526,7 @@ static void __imx7_get_boot_source(enum bootsourc=
e *src,
> > > int *instance, *src =3D BOOTSOURCE_SERIAL;
> > >  		break;
> > >  	default:
> > > +		*src =3D BOOTSOURCE_UNKNOWN;
> > >  		break;
> > >  	}
> > >  }
> > =

> > This changes the API
> =

> I agree to sha here. Callers seem to expect *src to be initialised
> always.
> =

> > and - if really required - should be done for all SoC =

> > specific *_get_boot_sources and not for the imx7 only (IMHO).
> =

> Agreed, that would be
> =

> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> index 63afdf1ef4ed..c0608c6a8e1b 100644
> --- a/arch/arm/mach-imx/boot.c
> +++ b/arch/arm/mach-imx/boot.c
> @@ -285,6 +285,8 @@ void imx53_get_boot_source(enum bootsource *src, int =
*instance)
>  	default:
>  		if (imx53_bootsource_nand(cfg1))
>  			*src =3D BOOTSOURCE_NAND;
> +		else
> +			*src =3D BOOTSOURCE_UNKNOWN;
>  		break;
>  	}
>  =

> @@ -464,6 +466,8 @@ void imx6_get_boot_source(enum bootsource *src, int *=
instance)
>  	default:
>  		if (imx53_bootsource_nand(bootmode))
>  			*src =3D BOOTSOURCE_NAND;
> +		else
> +			*src =3D BOOTSOURCE_UNKNOWN;
>  		break;
>  	}
>  }
> @@ -526,6 +530,7 @@ static void __imx7_get_boot_source(enum bootsource *s=
rc, int *instance,
>  		*src =3D BOOTSOURCE_SERIAL;
>  		break;
>  	default:
> +		*src =3D BOOTSOURCE_UNKNOWN;
>  		break;
>  	}
>  }
> =

> then.
> =

> @sha: If wrote to have already applied my patch. If you drop it, I
> resend with the above diff and an adapted commit log.

Go ahead

Sascha


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

