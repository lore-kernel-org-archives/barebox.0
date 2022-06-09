Delivery-date: Thu, 09 Jun 2022 09:34:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzCgv-008W01-Nj
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 09:34:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzCgu-0008Ay-1r
	for lore@pengutronix.de; Thu, 09 Jun 2022 09:34:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bOCZm16uoJB8a8zaah7dLp9pSXTzPBOUKcG82UICsDk=; b=X9xHEroVxVVEpa5C0YUhbmBY7/
	HBwfAglQAB5X4QPoWXE1+7YUQAmsSlB2QricG68qeQ4lmy9zFEIxFEdm6rPgojThvyTH7kmkYVcOj
	uQwja30HakTYp04f+Z+mpRJ7yCoRlaGwtJ+kQ2mdqQQgYWcQfQ9dYHidFgIBZslFKmYb4uwg0JCk6
	DaJoIVAA42BXdfPA4JFxjrwpbqR8EOVSrKg/Y7nS8Zgh9441uGDPTykNm00k5dpIUCImMZjCqLjqJ
	l7ynjQPpklrLf9CPhbAu6WHlanSH89MS7vZaoO4MTNYPvgaCwWQS49bVZguFuyTANgzVHx8RKTEch
	FOB7eVqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzCfa-00HRmS-MQ; Thu, 09 Jun 2022 07:33:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzCfQ-00HRjI-Qo
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 07:33:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzCfP-0007yG-7t; Thu, 09 Jun 2022 09:33:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzCfO-00067Y-VQ; Thu, 09 Jun 2022 09:33:18 +0200
Date: Thu, 9 Jun 2022 09:33:18 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20220609073318.GB1615@pengutronix.de>
References: <20220608103654.118355-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220608103654.118355-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_003320_900275_3EFE84BA 
X-CRM114-Status: GOOD (  20.74  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MN: Fix script to extract firmware blobs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 08, 2022 at 12:36:54PM +0200, Uwe Kleine-K=F6nig wrote:
> The directory created by extracting firmware-imx-8.12.bin is called
> firmware-imx-8.12, not firmware-imx-8.0.
> =

> Fixes: 35d4cf996034 ("ARM: i.MX8MN: add i.MX8MN-EVK support")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  Documentation/boards/imx/nxp-imx8mn-evk.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/Documentation/boards/imx/nxp-imx8mn-evk.rst b/Documentation/=
boards/imx/nxp-imx8mn-evk.rst
> index 44cd0c68e4d9..b920e22d33e9 100644
> --- a/Documentation/boards/imx/nxp-imx8mn-evk.rst
> +++ b/Documentation/boards/imx/nxp-imx8mn-evk.rst
> @@ -40,7 +40,7 @@ As a last step of this process those files need to be p=
laced in
>  	   lpddr4_pmu_train_2d_dmem.bin  \
>  	   lpddr4_pmu_train_2d_imem.bin; \
>    do \
> -	   cp firmware-imx-8.0/firmware/ddr/synopsys/${f} \
> +	   cp firmware-imx-8.12/firmware/ddr/synopsys/${f} \
>  	      firmware/${f}; \
>    done
>  =

> @@ -49,7 +49,7 @@ As a last step of this process those files need to be p=
laced in
>             ddr4_dmem_2d_201810.bin  \
>             ddr4_imem_2d_201810.bin; \
>    do \
> -	   cp firmware-imx-8.0/firmware/ddr/synopsys/${f} \
> +	   cp firmware-imx-8.12/firmware/ddr/synopsys/${f} \
>  	      firmware/${f%_201810.bin}.bin; \
>    done
>  =

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

