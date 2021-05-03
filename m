Delivery-date: Mon, 03 May 2021 13:45:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX0j-0002yk-C0
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:45:13 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX0i-0007PY-GM
	for lore@pengutronix.de; Mon, 03 May 2021 13:45:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E6d+FqlbLn/6IyGbOVwOUWKBc+uSqMl4We2lpG4+wsY=; b=TPM4Uoq3WSfaotqnx4+bHS0/K
	ZIAn6rIZ7RaimWs9STx9pVv0WJ1Iqrp1poLq2FzCW08B3JKCnZ4pXuQdMm5fuQwBAGivmFfgLPYRh
	QSjAVH5pWBUKkN6WiBFoCRyBXFusYuvUUbod6iREecq8Y+J1jkak/reyBIaTKCNnKVki0dUzGMCzP
	CN0G6z+b5DQYLAlZe3ZAebpHm34r+XDa9DqWxicMQoNAAkErs0vGPd0+aWDM2g+W++Mu6oLZgEkey
	GK0n1SGSeAMuWKb0Wkl+HmZKr4CAXEBi0bAlOcEZg/pu7NRcLwdTuZFcpsWLOrmC/AHgWCX587Yuh
	cXg/hzhcA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldWzM-00DmEw-Jm; Mon, 03 May 2021 11:43:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWz2-00DmCi-Gm
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:43:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XPKP1T2U90dH19Yk4TUNJMhQvSFTbPeSr0IR9yITU3w=; b=wNEP35W3dffyVvi/22CL6FsPG+
 mX0aup82o1oKE5+yrVbrq4RBIh1i58Kyo3anh3y67En3oOLIjdnavCOyUEG4xAKciy1tuN9sg8Z5/
 l4gW9mzEcqoj9rUc0zdBftsUgl4qVHiifoo7NKQ2lc2vjkZIf+rp5C1ivqwkTVkPxjpPXovkiC9qV
 n0GINY1FZyB9R3zNnPkmDUX19/EqEOgCarQBAPWlBjVUb1zBBEg+phO4X7qxreSziCcChPiT+vujo
 WFL9JcEBpJ1+oKjW40aDZQjb1ky/eUu5uZVBwdkT3zTx6q7eJsSpRkyZ7d6lUkx+vj0Ch+ZM8Ut0A
 BQr/Wkjg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWyz-0031Ol-Qb
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:43:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWyy-0007Cz-Im; Mon, 03 May 2021 13:43:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWyy-0001tS-9o; Mon, 03 May 2021 13:43:24 +0200
Date: Mon, 3 May 2021 13:43:24 +0200
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210503114324.GD19819@pengutronix.de>
References: <20210419123747.2373-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210419123747.2373-1-s.trumtrar@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:43:15 up 74 days, 15:07, 100 users,  load average: 0.17, 0.17,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_044325_883112_01E526F0 
X-CRM114-Status: GOOD (  25.86  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] watchdog: imxwd: get and enable clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Apr 19, 2021 at 02:37:47PM +0200, Steffen Trumtrar wrote:
> This it (at least) necessary for i.MX7s or otherwise barebox will hang
> when trying to access the registers of WDOG2/3/4.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/watchdog/imxwd.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> index b2cfd1cd3a31..26c62b7bcb31 100644
> --- a/drivers/watchdog/imxwd.c
> +++ b/drivers/watchdog/imxwd.c
> @@ -21,6 +21,7 @@
>  #include <restart.h>
>  #include <watchdog.h>
>  #include <reset_source.h>
> +#include <linux/clk.h>
>  
>  struct imx_wd;
>  
> @@ -224,6 +225,7 @@ static int imx_wd_probe(struct device_d *dev)
>  {
>  	struct resource *iores;
>  	struct imx_wd *priv;
> +	struct clk *clk;
>  	void *ops;
>  	int ret;
>  
> @@ -237,6 +239,15 @@ static int imx_wd_probe(struct device_d *dev)
>  		dev_err(dev, "could not get memory region\n");
>  		return PTR_ERR(iores);
>  	}
> +
> +	clk = clk_get(dev, NULL);
> +	if (IS_ERR(clk))
> +		return PTR_ERR(clk);
> +
> +	ret = clk_enable(clk);
> +	if (ret)
> +		return ret;
> +
>  	priv->base = IOMEM(iores->start);
>  	priv->ops = ops;
>  	priv->wd.set_timeout = imx_watchdog_set_timeout;
> -- 
> 2.29.2
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

