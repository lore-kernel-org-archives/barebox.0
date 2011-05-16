Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QLrJv-000381-Q3
	for barebox@lists.infradead.org; Mon, 16 May 2011 06:30:24 +0000
Date: Mon, 16 May 2011 08:30:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110516063018.GC30963@pengutronix.de>
References: <4DCD32B4.9090606@yandex-team.ru>
 <4DCD37D9.5020408@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4DCD37D9.5020408@gmail.com>
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
Subject: Re: [PATCH] fix console fifo (and loadb/loady commands)
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Alexey,

On Fri, May 13, 2011 at 07:53:29PM +0600, Alexey Galakhov wrote:
> This patch fixes loadb and loady commands. tstc() should return true if
> console_input_buffer is not empty.

The patch is fine, thanks.

Your mailer converts tabs into whitespaces. Also you forgot to add a
signed-off-by to your patch. I fixed this up manually this time.

Sascha

> 
> diff -udp ./common/console.c.orig ./common/console.c
> --- ./common/console.c.orig    2011-05-06 13:30:20.000000000 +0600
> +++ ./common/console.c    2011-05-13 19:42:12.000000000 +0600
> @@ -195,6 +195,20 @@ static int getc_raw(void)
>      }
>  }
>  
> +static int tstc_raw(void)
> +{
> +    struct console_device *cdev;
> +
> +    for_each_console(cdev) {
> +        if (!(cdev->f_active & CONSOLE_STDIN))
> +            continue;
> +        if (cdev->tstc(cdev))
> +            return 1;
> +    }
> +
> +    return 0;
> +}
> +
>  int getc(void)
>  {
>      unsigned char ch;
> @@ -209,7 +223,7 @@ int getc(void)
>      while (1) {
>          poller_call();
>  
> -        if (tstc()) {
> +        if (tstc_raw()) {
>              kfifo_putc(console_input_buffer, getc_raw());
>  
>              start = get_time_ns();
> @@ -236,16 +250,7 @@ EXPORT_SYMBOL(fgetc);
>  
>  int tstc(void)
>  {
> -    struct console_device *cdev;
> -
> -    for_each_console(cdev) {
> -        if (!(cdev->f_active & CONSOLE_STDIN))
> -            continue;
> -        if (cdev->tstc(cdev))
> -            return 1;
> -    }
> -
> -    return 0;
> +    return kfifo_len(console_input_buffer) || tstc_raw();
>  }
>  EXPORT_SYMBOL(tstc);
>  
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
