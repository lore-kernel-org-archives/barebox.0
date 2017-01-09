Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQcRq-0000RI-IB
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 16:05:28 +0000
Date: Mon, 9 Jan 2017 17:05:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109160504.ezlrokuckx256sk6@pengutronix.de>
References: <20161220093340.14404-1-l.stach@pengutronix.de>
 <20161220093340.14404-8-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161220093340.14404-8-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 8/9] lib: add generic find_bit implementation from Linux
 and use in ARMv8
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 20, 2016 at 10:33:39AM +0100, Lucas Stach wrote:
> ARMv8 doesn't have an optimized version of the find_bit operations,
> pull in the generic ones from the Linux kernel.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/include/asm/bitops.h |   6 +-
>  lib/Makefile                  |   1 +
>  lib/find_bit.c                | 185 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 191 insertions(+), 1 deletion(-)
>  create mode 100644 lib/find_bit.c

I dropped the rest of this series beginning with this patch. It breaks
ppc with:

lib/find_bit.o: In function `find_last_bit':
/home/sha/dude/barebox/barebox-test/lib/find_bit.c:62: multiple
definition of `find_next_bit'
lib/find_next_bit.o:/home/sha/dude/barebox/barebox-test/lib/find_next_bit.c:28:
first defined here
lib/find_bit.o: In function `find_next_zero_bit':
/home/sha/dude/barebox/barebox-test/lib/find_bit.c:70: multiple
definition of `find_next_zero_bit'
lib/find_next_bit.o:/home/sha/dude/barebox/barebox-test/lib/find_next_bit.c:72:
first defined here
scripts/Makefile.build:321: recipe for target 'lib/built-in.o' failed
make[1]: *** [lib/built-in.o] Error 1
Makefile:775: recipe for target 'lib' failed
make: *** [lib] Error 2

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
