Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eMVPH-0002D0-St
 for barebox@lists.infradead.ORG; Wed, 06 Dec 2017 08:50:22 +0000
Date: Wed, 6 Dec 2017 09:49:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171206084957.vh43s4xbd72rrhox@pengutronix.de>
References: <20171114080056.26290-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171114080056.26290-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1] usbgadget command: provide -m option to set usb mode
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 14, 2017 at 09:00:56AM +0100, Oleksij Rempel wrote:
> if we optimize barebox for speed, then we can't use usbgadget autostart,
> which would set otg.mode automatically.
> Provide an option for usbgadget command to set otg.mode.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  commands/usbgadget.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/usbgadget.c b/commands/usbgadget.c
> index 507871edd2..e5109f99cb 100644
> --- a/commands/usbgadget.c
> +++ b/commands/usbgadget.c
> @@ -34,15 +34,19 @@ static int do_usbgadget(int argc, char *argv[])
>  {
>  	int opt, ret;
>  	int acm = 1, create_serial = 0, fastboot_set = 0, fastboot_export_bbu = 0;
> +	int usb_mode_set = 0;
>  	const char *fastboot_opts = NULL, *dfu_opts = NULL;
>  	struct f_multi_opts *opts;
>  
> -	while ((opt = getopt(argc, argv, "asdA::D:b")) > 0) {
> +	while ((opt = getopt(argc, argv, "amsdA::D:b")) > 0) {
>  		switch (opt) {
>  		case 'a':
>  			acm = 1;
>  			create_serial = 1;
>  			break;
> +		case 'm':
> +			usb_mode_set = 1;
> +			break;
>  		case 's':
>  			acm = 0;
>  			create_serial = 1;
> @@ -101,6 +105,9 @@ static int do_usbgadget(int argc, char *argv[])
>  		opts->create_acm = acm;
>  	}
>  
> +	if (usb_mode_set)
> +		setenv("otg.mode", "peripheral");
> +

I introduced this otg device since I needed some way to switch otg to the
different modes specifically on i.MX. It was not meant as a general concept,
I'm thus a bit reluctant to put this into different commands.

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
