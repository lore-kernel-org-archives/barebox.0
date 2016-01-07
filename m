Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHDvx-0006nS-4n
 for barebox@lists.infradead.ORg; Thu, 07 Jan 2016 17:01:09 +0000
Message-ID: <1452186040.2915.47.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 07 Jan 2016 18:00:40 +0100
In-Reply-To: <568D3C4B.3070409@pengutronix.de>
References: <1451981463-23604-1-git-send-email-mkl@pengutronix.de>
 <1451981463-23604-4-git-send-email-mkl@pengutronix.de>
 <1452025697.4474.40.camel@rtred1test09.kymeta.local>
 <568D3C4B.3070409@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/3] bootm: add initial FIT support
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "kernel@pengutronix.de" <kernel@pengutronix.de>, Trent Piepho <tpiepho@kymetacorp.com>

On Mi, 2016-01-06 at 17:09 +0100, Marc Kleine-Budde wrote:
[...]
> >> +	/*
> >> +	 * Put oftree/initrd close behind compressed kernel image to avoid
> >> +	 * placing it outside of the kernels lowmem.
> >> +	 */
> >> +	if (handle->initrd_size) {
> >> +		data->initrd_address = PAGE_ALIGN(data->os_res->end + SZ_1M);
> >> +		data->initrd_res = request_sdram_region("fit-initrd", data->initrd_address, handle->initrd_size);
> >> +		if (!data->initrd_res) {
> >> +			ret = -ENOMEM;
> >> +			goto err_out;
> >> +		}
> >> +		memcpy((void *)data->initrd_res->start, handle->initrd, handle->initrd_size);
> >> +	}
> >> +
> >> +	data->of_root_node = of_unflatten_dtb(handle->oftree);
> >> +	if (!data->of_root_node) {
> >> +		pr_err("unable to unflatten devicetree\n");
> >> +		ret = -EINVAL;
> >> +		goto err_out;
> >> +	}
> >> +
> >> +	/*
> >> +	 * Put devicetree right after initrd if present or after the kernel
> >> +	 * if not.
> >> +	 */
> >> +	if (data->initrd_res)
> >> +		mem_free = PAGE_ALIGN(data->initrd_res->end);
> >> +	else
> >> +		mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
> > Why the extra 1M?
> 
> Let's see if Jan remembers, he has coded this.

This is the same as in arch/arm/lib/bootm.c. I wanted to avoid having
different behaviors.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
