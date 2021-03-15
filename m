Delivery-date: Mon, 15 Mar 2021 09:09:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiHp-0000Yz-9x
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 09:09:13 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiHo-00083P-Fg
	for lore@pengutronix.de; Mon, 15 Mar 2021 09:09:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zw8ThJgBTJQIRWEmQ3zc1NY1MU2U1Ye0bAWkkyuQS70=; b=HlTibjX7sm6+JgOKKYAJJ+syx
	5w3GcbERxME3qxtSzxHpJOaPTIYhVnyeMK7VvxKwDpQlHNvdIucmG2+swc5Ytq7koF1nCgtVFoXoM
	6sbQoGe9VROWJ/d8l+Li+PvPLzz+Upu3a5l6HADZG3MPQwMuCwPmAnOpyS+4oU+hb6W4Ms2M/WQ/y
	tdQpZb9EJ9m/AoO29iKESHTD9T9JdIxko72VpIVDi0PeiU73q61FTNXzrCEEEajizLLSCUkkDjVel
	bDqNJBB1hpZK6+cDFRv3TX3rnPYZxA3VWYURcffctYqgGZ6a/WU0Xx2uvnHeM8VC+Rns1Fc6sGdN+
	Ju/MRbuWg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLiGi-00FCIH-Ff; Mon, 15 Mar 2021 08:08:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLiGU-00FCGG-6t
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 08:07:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLiGT-0007nv-JZ; Mon, 15 Mar 2021 09:07:49 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLiGT-00056u-Ap; Mon, 15 Mar 2021 09:07:49 +0100
Date: Mon, 15 Mar 2021 09:07:49 +0100
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210315080749.GJ23724@pengutronix.de>
References: <20210312133030.521569-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210312133030.521569-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:07:39 up 25 days, 11:31, 71 users,  load average: 0.10, 0.31, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_080750_835099_67879143 
X-CRM114-Status: GOOD (  21.26  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bcm283X: Select OF clock providers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 12, 2021 at 02:30:30PM +0100, Uwe Kleine-K=F6nig wrote:
> This makes available the fixed clock needed on rpi3 for USB.
> =

> USB stopped working when the dwc driver started to require an otg clock.
> =

> Fixes: f73ca701bb85 ("usb: dwc2: add clk dependency for probe via oftree")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index ab0bf030131c..f9be9d42ecff 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -44,6 +44,7 @@ config ARCH_BCM283X
>  	select GPIOLIB
>  	select CLKDEV_LOOKUP
>  	select COMMON_CLK
> +	select COMMON_CLK_OF_PROVIDER
>  	select CLOCKSOURCE_BCM283X
>  	select ARM_AMBA
>  	select HAS_DEBUG_LL
> -- =

> 2.30.1
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

