Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TSwMW-0004Wp-LJ
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 20:55:10 +0000
Date: Mon, 29 Oct 2012 21:55:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121029205503.GX24458@pengutronix.de>
References: <1351415710-19380-1-git-send-email-plagnioj@jcrosoft.com>
 <1351415710-19380-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351415710-19380-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] console: display Switch to console [csxx] when
 switching from debug_ll to real console
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 28, 2012 at 10:15:10AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/console.c |    3 +++
>  1 file changed, 3 insertions(+)

Dropped this one as it breaks most defconfigs with:

common/console.c: In function 'console_std_set':
common/console.c:90:3: warning: implicit declaration of function 'PUTS_LL' [-Wimplicit-function-declaration]
common/built-in.o: In function `console_std_set':
bootargs.c:(.text.console_std_set+0xf8): undefined reference to `PUTS_LL'
bootargs.c:(.text.console_std_set+0x104): undefined reference to `PUTS_LL'
bootargs.c:(.text.console_std_set+0x10c): undefined reference to `PUTS_LL'

Sascha

> 
> diff --git a/common/console.c b/common/console.c
> index 2e8c973..fdd5f42 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -88,6 +88,9 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
>  	if (initialized < CONSOLE_INIT_FULL) {
>  		char ch;
>  		initialized = CONSOLE_INIT_FULL;
> +		PUTS_LL("Switch to console [");
> +		PUTS_LL(dev_name(dev));
> +		PUTS_LL("]\n");
>  		barebox_banner();
>  		while (kfifo_getc(console_output_fifo, &ch) == 0)
>  			console_putc(CONSOLE_STDOUT, ch);
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
