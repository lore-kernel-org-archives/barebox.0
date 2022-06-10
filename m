Delivery-date: Fri, 10 Jun 2022 09:45:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzZKx-009nLN-HZ
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 09:45:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzZKw-0008Io-7N
	for lore@pengutronix.de; Fri, 10 Jun 2022 09:45:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LQqQ10aZ8FOF3qSD0O2olqA1RvqToL9hNvrMv6RkEcU=; b=GlScGau+igQqVyOAHox4S3sG4c
	4fydzEHnPvzJ2QEXK4QTQ8vT54Ewp5WHX705hPS2zstGcwwwefFbWifQ72wsGdYcCbK2Oa9/ldInT
	k8/D8zZshXpHR21rtUtKUtJ32X+3BVHVxnwmzMZ4jLLCvy8mT7Z+503Y6ybyRDGEr/n5EBykwO7tV
	0E5YFcZRWy2zEf4e6/LQtVz4MLW1ySt1QNpOV1sqXvHJGQu9jKmvyMLCCciCcTP8llpCpcrCWwEeD
	KMipJlqN5FgA+UOE7cAvF96ixa2hj0ASeLCZs4dPiCeZxuUVg/JYdJbEw18vN/M0zRxmyX0U4yMs/
	rQgOn8Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZJZ-006Wf1-FV; Fri, 10 Jun 2022 07:44:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZJU-006Wc6-H1
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 07:44:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzZJQ-0008AX-7B; Fri, 10 Jun 2022 09:44:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzZJO-0007Qd-2U; Fri, 10 Jun 2022 09:44:06 +0200
Date: Fri, 10 Jun 2022 09:44:06 +0200
To: =?iso-8859-15?Q?J=FCrgen?= Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20220610074406.GC1615@pengutronix.de>
References: <20220610070557.2651943-1-u.kleine-koenig@pengutronix.de>
 <11992981.O9o76ZdvQC@circona>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <11992981.O9o76ZdvQC@circona>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_004412_580580_2CE308A8 
X-CRM114-Status: GOOD (  23.25  )
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

On Fri, Jun 10, 2022 at 09:28:54AM +0200, J=FCrgen Borleis wrote:
> Am Freitag, 10. Juni 2022, 09:05:57 CEST schrieb Uwe Kleine-K=F6nig:
> > Callers of *_get_boot_source (e.g. start_atf() of
> > nxp-imx8mm-evk or protonic-imx8m) expect src to hold the bootsource
> > after return. So assign a value reliably.
> > =

> > Fixes: ea55770308c0 ("ARM: i.MX: Add i.MX7 base architecture support")
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/boot.c | 1 +
> >  1 file changed, 1 insertion(+)
> > =

> > diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> > index 63afdf1ef4ed..652e2869f2d7 100644
> > --- a/arch/arm/mach-imx/boot.c
> > +++ b/arch/arm/mach-imx/boot.c
> > @@ -526,6 +526,7 @@ static void __imx7_get_boot_source(enum bootsource =
*src,
> > int *instance, *src =3D BOOTSOURCE_SERIAL;
> >  		break;
> >  	default:
> > +		*src =3D BOOTSOURCE_UNKNOWN;
> >  		break;
> >  	}
> >  }
> =

> This changes the API and - if really required - should be done for all So=
C =

> specific *_get_boot_sources and not for the imx7 only (IMHO).

How does that change the API? It just makes sure that *src is
initialized in all cases. I found at least one case where a caller
continues with a potentially uninitialzed value.

This happens only when __imx7_get_boot_source() is called from board
code. Normally it's called via imx_boot_save_loc() which initializes
*src to BOOTSOURCE_UNKNOWN before calling into __imx7_get_boot_source().

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

