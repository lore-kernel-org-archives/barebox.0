Delivery-date: Mon, 04 Oct 2021 12:52:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXLaX-00052u-2W
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 12:52:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXLaW-0005Zc-2E
	for lore@pengutronix.de; Mon, 04 Oct 2021 12:52:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zDMq7OhutQ7PmH11qQJ0TMdNq1sba766y9uwISLt0Ho=; b=IEsRTfszyIt6uaeiyycDyur66G
	qETDPWfFLyjgFa5t3p/YTsxRdsoM109vNrOkpf/ixKWnr8qItfxh1ujauhGu8VklUTExb4dNLH3/Y
	jjfK650KXj3vki2LwPLgOaErHCDfXn25jTIivy9yrVHzymrcEhxph1Rqh3h0twCh4N8mf7zrTeEpP
	FOonNmkhOSVlVNpFjAN7Bsp/8IB3B11K1Rx+xQf+moSw6mKGBoVeoO54U+ZbPthzR4L3+DR5q2GTS
	91rT9AtEd7psoeQHMnvS7msHAptY7Mp0uYvvTuZP1eTCiViy5xP4vOMno+tvKbZsSN3xAa310LLov
	Ithn/HpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXLYu-00611W-SA; Mon, 04 Oct 2021 10:51:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXLYp-00610a-Mu
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 10:51:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXLYo-0005Gz-FK; Mon, 04 Oct 2021 12:51:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXLYo-0000S8-6R; Mon, 04 Oct 2021 12:51:06 +0200
Date: Mon, 4 Oct 2021 12:51:06 +0200
To: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20211004105106.GT28453@pengutronix.de>
References: <20210907072915.18451-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210907072915.18451-1-danek.brat@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:50:33 up 228 days, 14:14, 147 users,  load average: 0.60, 0.38,
 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_035107_772429_93A47F6D 
X-CRM114-Status: GOOD (  30.09  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: Fix broken bcm2835 fb driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 07, 2021 at 09:29:15AM +0200, Daniel Br=E1t wrote:
> The bcm2835 framebuffer driver was broken, because the address of video
> buffer allocated for us by the GPU and returned through mailbox was
> used without converting it back to ARM address space. That unconverted
> address was also in the range of peripheral addresses, which caused
> other issues later on due to it being filled with garbage data.
> The offset by which to convert the address back can vary by device,
> so the value is read from devicetree 'dma-ranges' for somewhat portable
> operation.
> This fix was tested on Raspberry PI B+ and Raspberry PI 3B+.
> =

> Signed-off-by: Daniel Br=E1t <danek.brat@gmail.com>
> ---
>  drivers/video/bcm2835.c | 21 +++++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)

Applied with Rolands remarks, thanks

Sascha

> =

> diff --git a/drivers/video/bcm2835.c b/drivers/video/bcm2835.c
> index d808bc5c9..2ebe912d0 100644
> --- a/drivers/video/bcm2835.c
> +++ b/drivers/video/bcm2835.c
> @@ -14,6 +14,7 @@
>  #include <malloc.h>
>  #include <xfuncs.h>
>  =

> +#include <of_address.h>
>  #include <mach/mbox.h>
>  =

>  struct bcm2835fb_info {
> @@ -58,9 +59,24 @@ static int bcm2835fb_probe(struct device_d *dev)
>  	BCM2835_MBOX_STACK_ALIGN(struct msg_fb_query, msg_query);
>  	BCM2835_MBOX_STACK_ALIGN(struct msg_fb_setup, msg_setup);
>  	struct bcm2835fb_info *info;
> +	struct device_node *soc;
>  	u32 w, h;
> +	u64 dma_addr, cpu_addr, _region_size;
> +	phys_addr_t buffer_addr;
>  	int ret;
>  =

> +	soc =3D of_find_node_by_path("/soc");
> +	if (!soc) {
> +		dev_err(dev, "could not find required of node /soc\n");
> +		return -ENODEV;
> +	}
> +
> +	ret =3D of_dma_get_range(soc, &dma_addr, &cpu_addr, &_region_size);
> +	if (ret) {
> +		dev_err(dev, "of node /soc has no dma-ranges\n");
> +		return ret;
> +	}
> +
>  	BCM2835_MBOX_INIT_HDR(msg_query);
>  	BCM2835_MBOX_INIT_TAG_NO_REQ(&msg_query->physical_w_h,
>  					GET_PHYSICAL_W_H);
> @@ -99,10 +115,11 @@ static int bcm2835fb_probe(struct device_d *dev)
>  		return ret;
>  	}
>  =

> +	buffer_addr =3D (msg_setup->allocate_buffer.body.resp.fb_address & ~dma=
_addr) + cpu_addr;
> +
>  	info =3D xzalloc(sizeof *info);
>  	info->fbi.fbops =3D &bcm2835fb_ops;
> -	info->fbi.screen_base =3D
> -	   (void *)msg_setup->allocate_buffer.body.resp.fb_address;
> +	info->fbi.screen_base =3D phys_to_virt(buffer_addr);
>  	info->fbi.xres =3D msg_setup->physical_w_h.body.resp.width;
>  	info->fbi.yres =3D msg_setup->physical_w_h.body.resp.height;
>  	info->fbi.bits_per_pixel =3D 16;
> -- =

> 2.17.1
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

