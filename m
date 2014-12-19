Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y1rK8-0001NJ-Vc
 for barebox@lists.infradead.org; Fri, 19 Dec 2014 06:46:05 +0000
Date: Fri, 19 Dec 2014 07:45:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141219064542.GY30369@pengutronix.de>
References: <1418941957-6950-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1418941957-6950-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] introduce ioremap() and dev_ioremap_resource()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Dec 19, 2014 at 01:32:37AM +0300, Antony Pavlov wrote:
> The commit
> 
>     commit 0d7a21334536cb36b3c9b64d868acc55aec41332
>     Author: Antony Pavlov <antonynpavlov@gmail.com>
>     Date:   Wed Sep 10 11:42:19 2014 +0400
> 
>         MIPS: dts: use physical addresses (as Linux does)
> 
>         With IOMEM() adapted for MIPS we can use physical addresses
>         in device tree reg property.
> 
> is premature. Current device tree files unusable on real hardware.
>                           I'M SO SORRY!
> The patch was tested on qemu, but qemu malta board is tolerant
> of using physical addresses for accesing to device. Real hardware
> can throw an exception in this situation.
> 
> Additional physical address to virtual address translation on MIPS is needed.
> 
> This commit demonstrate a possible (but not very good) solution.
> This solution is copied-and-pasted from linux kernel.
> In linux drivers use devm_ioremap_resource() function, so
> the patch just replicates similar dev_ioremap_resource() function.
> 
> Changing dev_request_mem_region() to dev_ioremap_resource()
> is not a very good idea because there are too many dev_request_mem_region()
> in barebox sources
> 
>     barebox$ git grep dev_request_mem_region | wc -l
>     197
> 
> moreover dev_ioremap_resource() has the second 'struct resource *res'
> argument, so additional dev_get_resource() is needed.
> 
> Can we insert ioremap() into dev_request_mem_region() directly?
> (we also can use already existion IOMEM() macro instead of linux' ioremap()).

I'm not sure if it's a good idea to put that behind some standard
lookingioremap() call, because its behaviour is not standard.

I'm also fine with adding some

#ifdef CONFIG_MIPS
	return mips_iomem(res->start);
#else
	return (void __force __iomem *)res->start;
#endif

At least this makes explicit that MIPS has a very special handling.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
