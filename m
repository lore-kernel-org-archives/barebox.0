Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7GpC-0006Iy-8Z
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 10:23:11 +0000
Date: Mon, 9 Sep 2019 12:23:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190909102306.kt3wiq5ldnxrjvg7@pengutronix.de>
References: <20190907235456.21535-1-andrew.smirnov@gmail.com>
 <20190907235456.21535-3-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907235456.21535-3-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/4] mtd: ubi: Compile fastmap.c with
 -Wno-address-of-packed-member
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 07, 2019 at 04:54:55PM -0700, Andrey Smirnov wrote:
> GCC9 for ARM produces the following warnings:
> 
> fastmap.c: In function 'ubi_attach_fastmap':
> fastmap.c:700:31: warning: taking address of packed member of 'struct ubi_fm_scan_pool' may result in an unaligned pointer value [-Waddress-of-packed-member]
>   700 |  ret = scan_pool(ubi, ai, fmpl->pebs, pool_size, &max_sqnum, &lfree);
>       |                           ~~~~^~~~~~
> fastmap.c:704:34: warning: taking address of packed member of 'struct ubi_fm_scan_pool' may result in an unaligned pointer value [-Waddress-of-packed-member]
>   704 |  ret = scan_pool(ubi, ai, fmpl_wl->pebs, wl_pool_size, &max_sqnum, &lfree);
>       |                           ~~~~~~~^~~~~~
> 
> the offending code seems OK and there doesn't seem to be a way to fix
> this in code, so disable the warning for that file.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

Linux disables this warning completely. We just burnt some developer
cycles, came to the conclusion that the world isn't perfect, that
there's no good (at least good realistic) solution to this problem and
that we should just do the same as Linux.

Disabling this warning for individual files in which it triggers
probably doesn't bring us further.

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
