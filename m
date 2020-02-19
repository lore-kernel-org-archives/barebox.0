Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KBs-0004fo-VI
 for barebox@lists.infradead.org; Wed, 19 Feb 2020 07:54:42 +0000
Date: Wed, 19 Feb 2020 08:54:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200219075439.zyhlnputwwjjnxyc@pengutronix.de>
References: <20200218141636.6486-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218141636.6486-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/3] gpiolib: use correct format specifier for ptrdiff_t
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 18, 2020 at 03:16:34PM +0100, Ahmad Fatoum wrote:
> C99 specifies the 't' length modifier type for pointer difference.
> barebox vsnprintf supports it, thus use it.
> 
> We are guaranteed sizeof(long) == sizeof(void *) in barebox, so this
> doesn't make a difference in practice except that it silences
> following GCC warning:
> 
>   ./drivers/gpio/gpiolib.c: In function 'gpioinfo_request':
>   ./include/printk.h:77:43: warning: format '%ld' expects argument of
>      type 'long int', but argument 3 has type 'int' [-Wformat=]
>   ...
>   ./barebox-stm32/drivers/gpio/gpiolib.c:89:3: note: in expansion of macro 'pr_err'
>      89 |   pr_err("_gpio_request: gpio-%ld (%s) status %d\n",
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/gpio/gpiolib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
