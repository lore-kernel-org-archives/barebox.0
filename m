Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khTmj-0004U5-E5
 for barebox@lists.infradead.org; Tue, 24 Nov 2020 08:34:50 +0000
Date: Tue, 24 Nov 2020 09:34:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201124083448.GU24489@pengutronix.de>
References: <20201120140728.31805-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201120140728.31805-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH master] usbgadget: autostart: don't print error on
 repeated nv.usbgadget.autostart=1
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 20, 2020 at 03:07:28PM +0100, Ahmad Fatoum wrote:
> nvvar_add results in two calls to dev_set_param:
>  - once when the existing global variable is found and set
>  - once more when setting the nv variable
> 
> This results in an annoying but ultimately harmless message on startup:
> 
>   ERROR: USB multi gadget already registered
>   ERROR: failed to create nv variable usbgadget.autostart: Device or
>   resource busy
> 
> Avoid this by ignoring usbgadget.autostart=1 after it succeeded once.
> 
> This issue should only affect $global.usbgadget.autostart, because all
> other global variables are "simple" meaning that they have no setters
> triggered.
> 
> Fixes: 5a5c5178e7dc ("usbgadget: autostart: support delayed usbgadget.autostart=1")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/usbgadget.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/usbgadget.c b/common/usbgadget.c
> index fb508db94762..8b351c7bf468 100644
> --- a/common/usbgadget.c
> +++ b/common/usbgadget.c
> @@ -102,12 +102,18 @@ int usbgadget_register(bool dfu, const char *dfu_opts,
>  
>  static int usbgadget_autostart_set(struct param_d *param, void *ctx)
>  {
> +	static bool started;
>  	bool fastboot_bbu = get_fastboot_bbu();
> +	int err;
>  
> -	if (!IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART) || !autostart)
> +	if (!IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART) || !autostart || started)
>  		return 0;
>  
> -	return usbgadget_register(true, NULL, true, NULL, acm, fastboot_bbu);
> +	err = usbgadget_register(true, NULL, true, NULL, acm, fastboot_bbu);
> +	if (!err)
> +		started = true;
> +
> +	return err;
>  }
>  
>  static int usbgadget_globalvars_init(void)
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
