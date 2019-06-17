Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqUh-0007w9-4D
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 12:12:16 +0000
Date: Mon, 17 Jun 2019 14:12:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190617121212.noz2xyz2r5g5iwiu@pengutronix.de>
References: <20190613125848.15994-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613125848.15994-1-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] request_sdram_region: print error message
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 13, 2019 at 03:58:48PM +0300, Antony Pavlov wrote:
> I have found that MIPS memory misconfiguration leads to
> request_sdram_region() errors. But mem_malloc_resource()
> has no error checks for request_sdram_region() result.
> MIPS memory mapping needs additional changes this commit
> is just RFC on request_sdram_region().
> 
> Can we embed error message into request_sdram_region()?

In create_vector_table() failure of request_sdram_region() is expected
and not an error, so putting an error message into
request_sdram_region() is not a good idea. What we could do though
is to print an error message based on a "verbose" input flag.

> 
> The commid introduce necessary chages but I have no idea
> how to change this part of arch/arm/cpu/mmu.c:
> 
>     if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
>         /*
>          * This can mean that:
>          * - the early MMU code has put the ttb into a place
>          *   which we don't have inside our available memory
>          * - Somebody else has occupied the ttb region which means
>          *   the ttb will get corrupted.
>          */
>         pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
>                 ttb);

I think the message should stay like it is.

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
