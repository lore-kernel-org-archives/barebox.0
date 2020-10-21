Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVFLT-0007bG-AS
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 14:44:08 +0000
Date: Wed, 21 Oct 2020 16:44:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201021144404.GJ26805@pengutronix.de>
References: <1602838156.455713761@f185.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1602838156.455713761@f185.i.mail.ru>
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
Subject: Re: ARM bootm regression
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Oct 16, 2020 at 11:49:16AM +0300, Alexander Shiyan wrote:
> Hello.
> 
> Found a regression in arm/lib32/bootm.c after a patch
> "ARM: bootm: make sure we place the kernel in free memory".
> 
> The initial memory size for the board is set to 8 MB (before reading the real value from DT),

You could read the real value from DT earlier using libfdt, see
arch/arm/cpu/board-dt-2nd.c for usage examples. That doesn't solve it of
course when your board really has only 8MB memory.

> so the stack, malloc_space, etc. are placed in the initial 8M space.
> Then get_kernel_addresses() gets the real SDRAM area (for my board it is 64M),
> but decreases this size by the first children size (malloc_space),
> so mem_end is incorrect in this case.

Does an additional:

	if (kaddr < mem_start)
		kaddr = mem_start;

help?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
