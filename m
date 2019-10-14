Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJz1M-0003JV-8M
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:00:17 +0000
Date: Mon, 14 Oct 2019 14:00:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191014120014.l2weokpk6l2oscrg@pengutronix.de>
References: <20191001005718.27165-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001005718.27165-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] version_string: Add toolchain and build host info
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 30, 2019 at 05:57:18PM -0700, Andrey Smirnov wrote:
> Linux kernel reports the version of toolchain it was built with as a
> part of its version string, which can be extremely useful when
> debugging toolchain related issues. Make Barebox version string, mimic
> that of Linux to get the same level of information in Barebox.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  common/version.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/common/version.c b/common/version.c
> index 8b1fd4dbe7..5f57022dac 100644
> --- a/common/version.c
> +++ b/common/version.c
> @@ -3,7 +3,8 @@
>  #include <generated/utsrelease.h>
>  
>  const char version_string[] =
> -	"barebox " UTS_RELEASE " " UTS_VERSION "\n";
> +	"barebox " UTS_RELEASE " (" BAREBOX_COMPILE_BY "@"
> +	BAREBOX_COMPILE_HOST ") (" BAREBOX_COMPILER ") " UTS_VERSION "\n";

I think we shouldn't make version_string longer than it actually is. We
could print the information as additional lines (without adding it to
version_string), or as Antony suggested, as global variables.

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
