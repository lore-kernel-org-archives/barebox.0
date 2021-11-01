Delivery-date: Mon, 01 Nov 2021 10:12:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhTMX-00078s-8C
	for lore@lore.pengutronix.de; Mon, 01 Nov 2021 10:12:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhTMW-0005xE-85
	for lore@pengutronix.de; Mon, 01 Nov 2021 10:12:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ttMhuHJSGkbbFDeNHVA/lNLaM7DKS1jFlv5pGfWp55Q=; b=lWziMbfonAP9lt+vf6aGOHtdyz
	PWPxgzTh25GhcOmCZ8foPbBWEXaxa6zSkFcII6S8XtA2WqYvtoxKdqajcNlljkiCz+c7NERcRELIp
	4hH2AUtIcCepzQPADZpK9cquNhUyVMW5/qYwL7zDV3L+D7hKnBcMwMq1AqW7v1X8KP+jzSwYxcm7q
	wZ9MJHfS58zpHvO8epeuwDGs6f3GvoGD49yd8PbWaRyMKw4shMypMotzn4pmOqRsFnURk6/83Oygk
	LTfCPCL9jlwk23v/ng5lil1JbDJqfmBiV0LJVKWKdGSeSVgPyA2f30wP8TUFb55H3T2z5oLsEv9Em
	tsHF2tMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhTLI-00Fkql-Dx; Mon, 01 Nov 2021 09:11:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhTLD-00Fkpu-W2
 for barebox@lists.infradead.org; Mon, 01 Nov 2021 09:10:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhTLC-0005aS-PM; Mon, 01 Nov 2021 10:10:54 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhTLC-0001I0-Ev; Mon, 01 Nov 2021 10:10:54 +0100
Date: Mon, 1 Nov 2021 10:10:54 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211101091054.GS25698@pengutronix.de>
References: <20211030141954.2207820-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211030141954.2207820-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:10:46 up 256 days, 12:34, 130 users,  load average: 0.77, 0.32,
 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_021056_056346_94B3D341 
X-CRM114-Status: GOOD (  24.85  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] I2C: i.MX: early: replace zero-valued variable use with
 zero directly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Oct 30, 2021 at 04:19:54PM +0200, Ahmad Fatoum wrote:
> There is a if (ret) return -EAGAIN a few lines above, so if we reach the
> final return, ret must be zero.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/i2c/busses/i2c-imx-early.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/i2c/busses/i2c-imx-early.c b/drivers/i2c/busses/i2c-imx-early.c
> index 472e4be83a70..b381f99f4003 100644
> --- a/drivers/i2c/busses/i2c-imx-early.c
> +++ b/drivers/i2c/busses/i2c-imx-early.c
> @@ -126,7 +126,7 @@ static int i2c_fsl_start(struct fsl_i2c *fsl_i2c)
>  	temp |= I2CR_MTX | I2CR_TXAK;
>  	fsl_i2c_write_reg(temp, fsl_i2c, FSL_I2C_I2CR);
>  
> -	return ret;
> +	return 0;
>  }
>  
>  static void i2c_fsl_stop(struct fsl_i2c *fsl_i2c)
> -- 
> 2.30.2
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

