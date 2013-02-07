Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Z7v-00077M-76
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 21:35:27 +0000
Date: Thu, 7 Feb 2013 22:35:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130207213524.GC1906@pengutronix.de>
References: <1360269380-28155-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360269380-28155-1-git-send-email-alex.aring@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/4] Small fixes in barebox
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 07, 2013 at 09:36:16PM +0100, Alexander Aring wrote:
> First I tried to change getopt optstring argument to "const char *"
> and I test it with an allyesconfig for compiler warnings.
> 
> Then there popup some compile errors, which I tried to fix.
> 
> I am not happy with some of these solutions. Maybe someone have an idea
> how we can make it better.
> 
> hush: add getopt only if it enabled
>  - I don't know if this needs a fix. But if we disable getopt there is a
>    no-op getopt implementation in the command list. This patch don't add
>    getopt to the command list at runtime, but the no-op implementation is
>    still there. Maybe a compiletime solution is better to remove the
>    no-op implementation.

I don't understand. getopt is not there if CONFIG_HUSH_GETOPT is
disabled. It's ifdeffed out.

> 
> sata-imx: fix depends on ARCH_IMX
>  - I am not sure but this looks like ARCH_IMX related things. I got a error
>    that some imx51 header files could'nt be found.

That's fine you did this. Another option would be to move the header
file to include/, but currently this is not worth it.

> 
> net: fix cpsw depends on ARCH_OMAP
>  - Same thing like sata-imx. I got a compile error that mach/cpsw.h wasn't
>    found. I only found that in the omap implementation.

Also fine.

> 
> 
> Another (maybe toolchain related issue) is:
> barebox/lib/libubigen.c:105: undefined reference to `__divdi3'
> 
> Is it in this line:
> 
> tmp = (vi->bytes + ui->leb_size - 1) / ui->leb_size;
> 
> If we know that ui->leb_size is a power-of-two, we can use a shift for this
> instead of division. But I don't know if leb_size a power-of-two number.

leb_size (logical erase block size) is never a power of two. This is the
peb size (physical erase block size) minus the ubi metadata.

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
