Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P6hcs-0002St-6L
	for barebox@lists.infradead.org; Fri, 15 Oct 2010 10:35:03 +0000
Date: Fri, 15 Oct 2010 12:34:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101015103458.GB28242@pengutronix.de>
References: <1287054406-31713-1-git-send-email-carsten.schlote@gmx.net>
	<1287054406-31713-2-git-send-email-carsten.schlote@gmx.net>
	<1287054406-31713-3-git-send-email-carsten.schlote@gmx.net>
	<1287054406-31713-4-git-send-email-carsten.schlote@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1287054406-31713-4-git-send-email-carsten.schlote@gmx.net>
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
Subject: Re: [PATCH 4/5] [compiler] Added OPTIMIZE options to enable GCC
	optimizer
To: Carsten Schlote <carsten.schlote@gmx.net>
Cc: barebox@lists.infradead.org

On Thu, Oct 14, 2010 at 01:06:45PM +0200, Carsten Schlote wrote:
> From: Carsten Schlote <c.schlote@konzeptpark.de>
> 
> With GCC 4.5.x the default option -Os causes problems on powerpc as it
> tries to move common code to libgcc2, which isn't correctly linked later.
> 
> With optimizer turned off, code compiles fine.
> 
> So I added some options to turn on/off optimization for all architectures
> and to choose between -Os and -O option.
> 
> In case your compiler produces broken code or refuses to link, just try
> without optimization. As it's an option no hack in the Makefile is required
> anymore.
>

Working around weird compiler behaviours is not a good argument for
selling this patch. Anyway, this can still be useful in several
situations like for example getting assembler code which is easier
to debug.

How about making this a choice?

choice
	prompt "compiler optimization"
	default CC_OPTIMIZE_FOR_SIZE

config CC_OPTIMIZE_FOR_SIZE
	bool "optimize for size"

config CC_OPTIMIZE_NONE
	bool "no optimization"

config CC_OPTIMIZE_SPEED
	bool "optimize for speed"

endchoice

This would simplify the ifdefs in the Makefiles. Also, size
optimization should be kept default.

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
