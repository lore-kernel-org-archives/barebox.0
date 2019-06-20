Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdy97-0006yp-Ti
 for barebox@lists.infradead.org; Thu, 20 Jun 2019 14:34:39 +0000
Date: Thu, 20 Jun 2019 16:34:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190620143436.bwvwyoseqsvlrkb4@pengutronix.de>
References: <20190618093833.2005-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618093833.2005-1-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 0/2] MIPS: fix code relocation routine
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>

On Tue, Jun 18, 2019 at 12:38:31PM +0300, Antony Pavlov wrote:
> At the moment MIPS relocation code routine has at least two problems:
> 
> 1. the first problem is fixed in the 'MIPS: relocate_code: fix barebox image size'
>    patch from this patchseries.
> 
> 2. relocate_code() calls flush_cache_all().
>    flush_cache_all() uses 'struct cpuinfo_mips current_cpu_data' data fields.
>    These data fields are initialized in r4k_cache_init().
> 
>    However in the current implementation the r4k_cache_init() function
>    is called __AFTER__ relocate_code().
> 
>    This cache problem can't be discovered via qemu.
> 
> Antony Pavlov (2):
>   MIPS: lib/Makefile: fix whitespaces
>   MIPS: relocate_code: fix barebox image memcpy() size

Applied, thanks

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
