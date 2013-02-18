Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7NcS-0002C1-NT
 for barebox@lists.infradead.org; Mon, 18 Feb 2013 10:06:45 +0000
Date: Mon, 18 Feb 2013 11:06:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130218100642.GO1906@pengutronix.de>
References: <1360954167-18993-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360954167-18993-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [RFC] Add Generic GPIO driver
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Fri, Feb 15, 2013 at 10:49:27PM +0400, Alexander Shiyan wrote:
> This patch adds generic memory-mapped GPIO controller support.
> Code taken from Linux Kernel and adopted for barebox.

I'm fine with this if you add a user for it. I wonder though if it's
worth it to have this driver for barebox. If I have a driver in the
kernel that already uses it, then this makes it simple to copy it, but
should I have to write a new gpio driver, I'm unsure if it's simpler
to write a new gpio driver or to register with the generic gpio
driver.

> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index 89be684..565f5bd 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -6,10 +6,20 @@ if GPIOLIB
>  
>  menu "GPIO"
>  
> +config GPIO_GENERIC
> +	def_bool y
> +

Please do not unconditionally enable this for all configs.

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
