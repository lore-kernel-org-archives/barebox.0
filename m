Delivery-date: Wed, 20 Aug 2025 13:04:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uogcB-002asX-2M
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 13:04:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uogcA-0003ra-5y
	for lore@pengutronix.de; Wed, 20 Aug 2025 13:04:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=POKy6OI/uKveVedWeij0AGlR08K5tJ09IeP5utSkrm8=; b=C8BmZB687/69WlsiMfMfZq9WXV
	RwYagRA0aqSBrd5/2GYZ7RXDwbo7c2gVA2OwNRXUlsBW3dGBu0Pb0JUAu+jFV8D/NBhPEEYXxgTvj
	eItmDs2D+GX7TKOPTQhKY2PCk0QtxPfyyzN8qPrBBYJ10C+2AtvxCfMR4BUj+LQo9Zg0W3mSRmnfF
	xxYrvx2TegkPypx/BJQMqK46f8r6Z02cmcKv5nwRj98MJTnu2pIyrbFP/4af9SSEJnZICk+ri8SHg
	fu7YpE9tCSeZ2bbQNDJBLM/fRkLbTvh9C168Adub5GoKytFpxh3Kc0Pv9zFsyhbDOWL0Zm2kAJVVQ
	8Z8kAD9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogbx-0000000DHho-3eEN;
	Wed, 20 Aug 2025 11:04:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoetN-0000000Cs5f-0ACp
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:14:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoetL-0002YB-T5; Wed, 20 Aug 2025 11:13:59 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoetL-001DnK-2J;
	Wed, 20 Aug 2025 11:13:59 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoetL-005t27-21;
	Wed, 20 Aug 2025 11:13:59 +0200
Date: Wed, 20 Aug 2025 11:13:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250820091359.owx4wec4xc22ihgj@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
 <20250818-v2025-06-0-topic-nvmem-v2-7-b6d677f6c519@pengutronix.de>
 <aKV9l1nfPtnY5j5I@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aKV9l1nfPtnY5j5I@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_021401_079609_04D0346E 
X-CRM114-Status: GOOD (  35.05  )
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
Subject: Re: [PATCH v2 07/15] nvmem: core: allow single and dynamic device ids
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-08-20, Sascha Hauer wrote:
> On Mon, Aug 18, 2025 at 07:44:41PM +0200, Marco Felsch wrote:
> > At the moment only DEVICE_ID_DYNAMIC is supported. Add support for
> > NVMEM_DEVID_NONE to allow static device names via of-aliases and to
> > align our core with Linux.
> > 
> > While on it fix the nvmem_register_cdev() by using the dev_name() which
> > honors the DEVICE_ID_* cases else we end up with different names for the
> > devfs and the device itself.
> > 
> > The dev_dbg() message can be dropped as well since the register_device()
> > can print this message too.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/nvmem/core.c           | 16 +++++++++++-----
> >  include/linux/nvmem-provider.h |  4 ++++
> >  2 files changed, 15 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> > index 4dbeb1e116ae398f1f2748238d97468c1096262a..7e1dcceb00b924548b4582504b8ccaa4f29c4bdc 100644
> > --- a/drivers/nvmem/core.c
> > +++ b/drivers/nvmem/core.c
> > @@ -442,17 +442,23 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
> >  	if (config->read_only || !config->reg_write || of_property_read_bool(np, "read-only"))
> >  		nvmem->read_only = true;
> >  
> > -	dev_set_name(&nvmem->dev, "%s", config->name);
> > -	nvmem->dev.id = DEVICE_ID_DYNAMIC;
> > -
> > -	dev_dbg(nvmem->dev.parent, "Registering nvmem device %s\n", config->name);
> > +	dev_set_name(&nvmem->dev, "%s", config->name ? : "nvmem");
> > +	switch (config->id) {
> > +	case NVMEM_DEVID_NONE:
> > +		nvmem->dev.id = DEVICE_ID_SINGLE;
> > +		break;
> > +	case NVMEM_DEVID_AUTO:
> > +	default:
> > +		nvmem->dev.id = DEVICE_ID_DYNAMIC;
> > +		break;
> > +	}
> >  
> >  	rval = register_device(&nvmem->dev);
> >  	if (rval)
> >  		goto err_remove_cells;
> >  
> >  	if (!config->cdev) {
> > -		rval = nvmem_register_cdev(nvmem, config->name);
> > +		rval = nvmem_register_cdev(nvmem, dev_name(&nvmem->dev));
> 
> This change breaks the "nvmem" command and with it the nvmem test.
> "nvmem -c 1k" used to create a /dev/rmem0 cdev. With this change it
> now creates a "/dev/rmem00" cdev.

I wasn't aware of this command till now.

> I Fixed this with the following.

Thank you!

Regards,
  Marco


> 
> ---------------------------------8<-----------------------------------
> From 171ed3f457ff8ba336f0300939c3ec39a4cda5eb Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Wed, 20 Aug 2025 09:28:19 +0200
> Subject: [PATCH] fixup! nvmem: core: allow single and dynamic device ids
> 
> Rename "rmem" driver to "nvmem-rmem". Without it both the rmem container
> device and the nvmem device are named "rmem" with different ids.
> 
> ---
>  commands/nvmem.c     | 2 +-
>  drivers/nvmem/rmem.c | 5 +++--
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/commands/nvmem.c b/commands/nvmem.c
> index 3bfa1ff19a..25f80db6fd 100644
> --- a/commands/nvmem.c
> +++ b/commands/nvmem.c
> @@ -35,7 +35,7 @@ static int nvmem_create_dynamic_rmem(unsigned long create_size,
>  	int ret = 0;
>  
>  	buffer = xzalloc(create_size);
> -	dev = add_generic_device("rmem", dynamic_rmem_idx, NULL,
> +	dev = add_generic_device("nvmem-rmem", dynamic_rmem_idx, NULL,
>  				 (resource_size_t)(uintptr_t)buffer,
>  				 (resource_size_t)create_size,
>  				 IORESOURCE_MEM, NULL);
> diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
> index 378a93110d..de9b7af6e4 100644
> --- a/drivers/nvmem/rmem.c
> +++ b/drivers/nvmem/rmem.c
> @@ -118,7 +118,8 @@ static int rmem_probe(struct device *dev)
>  
>  	config.dev = priv->dev = dev;
>  	config.priv = priv;
> -	config.name = dev_name(dev);
> +	config.name = "rmem";
> +	config.id = NVMEM_DEVID_AUTO;
>  	config.size = resource_size(mem);
>  	priv->size = config.size;
>  
> @@ -138,7 +139,7 @@ static const struct of_device_id rmem_match[] = {
>  MODULE_DEVICE_TABLE(of, rmem_match);
>  
>  static struct driver rmem_driver = {
> -	.name = "rmem",
> +	.name = "nvmem-rmem",
>  	.of_compatible = rmem_match,
>  	.probe = rmem_probe,
>  };
> -- 
> 2.39.5
> 
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


