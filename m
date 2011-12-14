Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rav1P-0004w7-Dg
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 20:01:48 +0000
Date: Wed, 14 Dec 2011 21:01:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111214200137.GK27267@pengutronix.de>
References: <1323884841-21920-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323884841-21920-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH v2] defaultenv: use a compressed version when embedded in
 barebox
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 14, 2011 at 06:47:21PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> with using gzip and the default env we can save 5.2KiB (5,352 bytes)
> 
> tested on sam9g20ek
> before
> -rwxr-xr-x  1 root root 265748 Dec 14 00:42 barebox.bin
> after
> -rwxr-xr-x  1 root root 260396 Dec 14 00:42 barebox.bin
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> v2:
> 
> 	fix the comment

Appearently you haven't read my mail. So to repeat myself:

> zlib is bigger than the uncompressed defaultenv.

This means that this step is only worth doing when zlib is selected
anyway. Otherwise you end up with 5Kb more: 10Kb zlib binary space + 3Kb
compressed env is bigger than 8Kb uncompressed defaultenv.

So my suggestion was:

> How about a
> config DEFAULT_ENVIRONMENT_COMPRESSED
>         default y if ZLIB
> instead?


>  
> -include/generated/barebox_default_env.h: barebox_default_env
> +barebox_default_env.gz: barebox_default_env FORCE

And also I asked:

> Do we need this FORCE? It triggers a new build everytime even when
> nothing has changed.

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
