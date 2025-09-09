Delivery-date: Tue, 09 Sep 2025 14:04:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvx5G-0013de-33
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 14:04:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvx5G-0007jH-4q
	for lore@pengutronix.de; Tue, 09 Sep 2025 14:04:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d85ToTqE7hXme/IhXyxdgPPMuIEzRrf3zyj/wp/yyhk=; b=ieDBtEOb6HZFWSetRGzIsEl07u
	xnFOOtcw3xSoMEqYQGlFfOlXRfOHirpis9oR28BgM3eTRPPJwYd3+Gaz8EH5uhnFv8R7ub22i7AXO
	gCHtFc2uscPopY4qujAmypuxR00OGP8l3HD30guRvJ5q8okXHPRFUuM8OXHMa/DPsy+fqaXvu/1rp
	nYv0BlUc+2WwFXENjPSwIV+Yz4rGepyWYA+84Q/kR0/cexggNvwu7ZgbZZ4aEj1GY2R1mJa49n0nU
	i6Ow9kPrMXwBHFXrTnkoLCuh9Lf4wVWLbWdaoSaMaba4s0VQpI8AG7dRz6vB2hqx+FyUNvBZd9/Ru
	yyhhwJXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvx4X-00000006wLy-26cx;
	Tue, 09 Sep 2025 12:03:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvukA-000000060ea-2kAn
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 09:34:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uvuk8-0003Cz-2Z; Tue, 09 Sep 2025 11:34:28 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uvuk7-000OjC-2T;
	Tue, 09 Sep 2025 11:34:27 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uvuk7-00E0TP-29;
	Tue, 09 Sep 2025 11:34:27 +0200
Date: Tue, 9 Sep 2025 11:34:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Christian =?iso-8859-15?Q?Thie=DFen?= via B4 Relay <devnull+christian.thiessen.airbus.com@kernel.org>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Christian =?iso-8859-15?Q?Thie=DFen?= <christian.thiessen@airbus.com>
Message-ID: <aL_0o86zNN1vRH4f@pengutronix.de>
References: <20250903-fec_imx-fix-enodev-v1-1-0dd4c42fc293@airbus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250903-fec_imx-fix-enodev-v1-1-0dd4c42fc293@airbus.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_023430_751863_D87E59FE 
X-CRM114-Status: GOOD (  35.27  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fec_imx: Fix ENODEV in fec_probe on i.MX27
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Christian,

On Wed, Sep 03, 2025 at 04:46:05PM +0200, Christian Thieﬂen via B4 Relay wrote:
> From: Christian Thieﬂen <christian.thiessen@airbus.com>
> 
> The fec_imx driver stores an enum fec_type value in the match data
> pointer. When retrieving this value in fec_probe(), it handles
> FEC_TYPE_IMX27 (which is 0) like an error result from
> device_get_match_data and returns -ENODEV.
> 
> To be able to differentiate NULL from errors, introduce a new function
> device_get_match_data_default which returns its defaultval argument
> instead of NULL in case of errors.
> Add an FEC_TYPE_COUNT value to the fec_type enum.
> In fec_probe, pass FEC_TYPE_COUNT as defaultval and return -ENODEV for
> all type values greater or equal to that.
> 
> Fixes: 20d87123a6 ("treewide: replace dev_get_drvdata with        device_get_match_data")
> Signed-off-by: Christian Thieﬂen <christian.thiessen@airbus.com>
> ---
> Hi again,
> 
> this patch addresses the issue discussed in
> https://github.com/barebox/barebox/issues/40 ("fec_imx (and possibly
> others): Probe fails with ENODEV").
> 
> Cheers,
> Christian
> ---
>  drivers/base/driver.c | 13 +++++++++++++
>  drivers/net/fec_imx.c | 12 +++++-------
>  drivers/net/fec_imx.h |  1 +
>  include/driver.h      | 10 ++++++++++
>  4 files changed, 29 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 61118385f1df0f8d36208d236be66b077fa5e54d..614c3c26b04c6f252e3970e014a43bae6a1d9c2b 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -690,6 +690,19 @@ const void *device_get_match_data(struct device *dev)
>  }
>  EXPORT_SYMBOL(device_get_match_data);
>  
> +const void *device_get_match_data_default(struct device *dev,
> +					  const void *defaultval)
> +{
> +	if (dev->of_id_entry)
> +		return dev->of_id_entry->data;
> +
> +	if (dev->id_entry)
> +		return (const void *)dev->id_entry->driver_data;
> +
> +	return defaultval;
> +}
> +EXPORT_SYMBOL(device_get_match_data_default);

This more goes to Ahmad, because he suggested this solution:

I don't like this very much. With this solution the driver writer must
still know that he has to call device_get_match_data_default() instead
of plain device_get_match_data().

In other words, the driver writer must be aware of this problem, so he
could equally well avoid 0 as valid value and declare

enum fec_type {
	FEC_TYPE_IMX27 = 1,
	...
};

in this case. I have looked up all cases that pass an integer into data
in the tree and these are not many, we could change them easily.

Another possibility would be to return an error pointer instead of NULL
from device_get_match_data(), but that would require some refactoring
throughout the tree.

Unless Ahmad objects I would prefer converting the in tree users not to
use zero.

Ahmad is on holiday this week, so it'll likely take some time, but
anyway, we'll solve this issue before the next release.

Sascha


> +
>  static void device_set_deferred_probe_reason(struct device *dev,
>  					     const struct va_format *vaf)
>  {
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 8474e6d5be9c6225af5708d21b0249b2618d36f6..fac190e6ea51950ed6085264e12617969847acbf 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -763,20 +763,18 @@ static int fec_probe(struct device *dev)
>  	struct fec_priv *fec;
>  	void *base;
>  	int ret;
> -	enum fec_type type;
> -	void const *type_v;
> +	uintptr_t type_v;
>  	int phy_reset;
>  	u32 msec = 1, phy_post_delay = 0;
>  	u32 reg;
>  
> -	type_v = device_get_match_data(dev);
> -	if (!type_v)
> +	type_v = (uintptr_t)device_get_match_data_default(dev,
> +		(const void *)FEC_TYPE_COUNT);
> +	if (type_v >= FEC_TYPE_COUNT)
>  		return -ENODEV;
>  
> -	type = (uintptr_t)(type_v);
> -
>  	fec = xzalloc(sizeof(*fec));
> -	fec->type = type;
> +	fec->type = type_v;
>  	fec->dev = dev;
>  	edev = &fec->edev;
>  	dev->priv = fec;
> diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
> index 1aaff87fddfb44cf558436ab4a846757c6cd51aa..9549dab0f8e88288bd9fe3a02ff8bd5573147842 100644
> --- a/drivers/net/fec_imx.h
> +++ b/drivers/net/fec_imx.h
> @@ -117,6 +117,7 @@ enum fec_type {
>  	FEC_TYPE_IMX27,
>  	FEC_TYPE_IMX28,
>  	FEC_TYPE_IMX6,
> +	FEC_TYPE_COUNT,
>  };
>  
>  enum fec_clock {
> diff --git a/include/driver.h b/include/driver.h
> index c130a3cd63fd5e6dc365a33c765a22dc4e2ca90a..223799294fc0e32ceb13fc5bda2e3b8a78d71647 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -650,6 +650,16 @@ int cdevfs_del_partition(struct cdev *cdev);
>   */
>  const void *device_get_match_data(struct device *dev);
>  
> +/**
> + * device_get_match_data_default - get driver match data associated with device
> + * @dev: device instance
> + * @defaultval: Value to return if no match data is associated with dev
> + *
> + * Returns match data on success and defaultval otherwise
> + */
> +const void *device_get_match_data_default(struct device *dev,
> +					  const void *defaultval);
> +
>  int device_match_of_modalias(struct device *dev, const struct driver *drv);
>  
>  struct device *device_find_child(struct device *parent, void *data,
> 
> ---
> base-commit: 7689314d0a78605e7d4a0c3ce4953d9d768aa343
> change-id: 20250903-fec_imx-fix-enodev-f7a9087054c8
> 
> Best regards,
> -- 
> Christian Thieﬂen <christian.thiessen@airbus.com>
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


