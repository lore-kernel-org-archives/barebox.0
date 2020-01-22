Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuBGH-0005v0-Ev
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 08:21:18 +0000
Date: Wed, 22 Jan 2020 09:21:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200122082115.tgwaf72ootkmkf5s@pengutronix.de>
References: <20200121114421.24401-1-ceggers@arri.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121114421.24401-1-ceggers@arri.de>
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
Subject: Re: [PATCH 1/3] watchdog: Select CONFIG_PARAMETER
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

Hi Christian,

On Tue, Jan 21, 2020 at 12:44:19PM +0100, Christian Eggers wrote:
> Without CONFIG_PARAMETER, watchdog_register() will always fail.
> 
> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---
>  drivers/watchdog/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 45dd41a2a..34b7fea39 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -4,6 +4,7 @@ config WATCHDOG_IMX_RESET_SOURCE
>  
>  menuconfig WATCHDOG
>  	bool "Watchdog support"
> +	select PARAMETER

I think this goes into the wrong direction. With CONFIG_PARAMETER
enabled we get support for adjusting device parameters from the shell.
In environments without shell support parameter support is not needed.
For example the watchdog C API doesn't need parameter support and is
still usable.

The static inline wrappers for dev_add_param_* should return NULL
instead of returning ERR_PTR(-ENOSYS).

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
