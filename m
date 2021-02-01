Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6VAl-0004xU-Gm
 for barebox@lists.infradead.org; Mon, 01 Feb 2021 09:07:04 +0000
Date: Mon, 1 Feb 2021 10:07:02 +0100
Message-ID: <20210201090702.GN19583@pengutronix.de>
References: <20210129161116.9971-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210129161116.9971-1-a.fatoum@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 1/8] commands: usbgadget: remove deprecated s option from
 help text
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 29, 2021 at 05:11:09PM +0100, Ahmad Fatoum wrote:
> Prior to 44add42d4330 ("usbgadget: autostart: add DFU support"), -s used
> to do nothing. That commit made it behave like -a, but deprecated it and
> changed the help text to omit it. Remove it from the short help text as
> well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/usbgadget.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/usbgadget.c b/commands/usbgadget.c
> index 9133402f52fb..3b115f147d80 100644
> --- a/commands/usbgadget.c
> +++ b/commands/usbgadget.c
> @@ -67,7 +67,7 @@ BAREBOX_CMD_HELP_END
>  BAREBOX_CMD_START(usbgadget)
>  	.cmd		= do_usbgadget,
>  	BAREBOX_CMD_DESC("Create USB Gadget multifunction device")
> -	BAREBOX_CMD_OPTS("[-asdAD]")
> +	BAREBOX_CMD_OPTS("[-adAD]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
>  	BAREBOX_CMD_HELP(cmd_usbgadget_help)
>  BAREBOX_CMD_END
> -- 
> 2.30.0
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
