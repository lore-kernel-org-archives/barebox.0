Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glcrY-0007tP-Eu
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 16:55:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <rhi@pengutronix.de>) id 1glcrW-0007P9-SM
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 17:55:50 +0100
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <rhi@pengutronix.de>) id 1glcrW-0007lJ-KJ
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 17:55:50 +0100
Date: Mon, 21 Jan 2019 17:55:50 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190121165550.pcfwruyaaaglm7zp@pengutronix.de>
References: <20190121162926.26051-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190121162926.26051-1-rhi@pengutronix.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ubi: prevent null pointer reference
To: Barebox Mailing List <barebox@lists.infradead.org>

On Mon, Jan 21, 2019 at 05:29:26PM +0100, Roland Hieber wrote:
> diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
> index 6959564a13..68302f4a33 100644
> --- a/drivers/mtd/ubi/vtbl.c
> +++ b/drivers/mtd/ubi/vtbl.c
> @@ -850,6 +850,12 @@ int ubi_read_volume_table(struct ubi_device *ubi, struct ubi_attach_info *ai)
>  out_free:
>  	vfree(ubi->vtbl);
>  	for (i = 0; i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
> +
> +		dev_vdbg(&ubi->dev, "destroying fastmap %d: 0x%x\n", i, ubi->volumes[i]);
> +
> +		if (!ubi->volumes[i])
> +			continue;
> +
>  		ubi_fastmap_destroy_checkmap(ubi->volumes[i]);

No wait. I should rather check in ubi_fastmap_destroy_checkmap(). Will
send v2.

 - Roland

>  		kfree(ubi->volumes[i]);
>  		ubi->volumes[i] = NULL;
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
