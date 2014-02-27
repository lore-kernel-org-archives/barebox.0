Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ7Go-0001oK-Aj
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 20:09:27 +0000
Date: Thu, 27 Feb 2014 21:09:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140227200902.GP17250@pengutronix.de>
References: <1393508819-3693-1-git-send-email-renaud.barbier@ge.com>
 <1393508819-3693-2-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1393508819-3693-2-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 1/4] ppc: fix memory layout to prevent corruption during
 memtest
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Thu, Feb 27, 2014 at 01:46:56PM +0000, Renaud Barbier wrote:
> Memory regions on PPC boards are incorrectly defined leading to
> corruption when running memory tests. This patch updates the memory
> layout of PPC boards so that critical memory regions can be correctly
> reserved during the memory test.

I think you are better off disabling CONFIGURABLE_MEMORY_LAYOUT for ppc
and doing the memory layout completely on your own. You will have more
freedom selecting suitable base/sizes for stack and malloc area.

> diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
> index 45e0ed8..7a23db1 100644
> --- a/include/asm-generic/memory_layout.h
> +++ b/include/asm-generic/memory_layout.h
> @@ -2,9 +2,13 @@
>  #define __ASM_GENERIC_MEMORY_LAYOUT_H
>  
>  #ifdef CONFIG_MEMORY_LAYOUT_DEFAULT
> +#ifdef CONFIG_PPC
> +#define STACK_BASE ((unsigned long)&_stext - CONFIG_STACK_SIZE)
> +#else

Plus I don't really want to broaden the use of STACK_BASE, even less
when you have to special case it for PPC.

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
