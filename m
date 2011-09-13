Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3NTq-0004m9-HI
	for barebox@lists.infradead.org; Tue, 13 Sep 2011 07:32:31 +0000
Date: Tue, 13 Sep 2011 09:32:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110913073229.GW31404@pengutronix.de>
References: <1315823146-11632-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1315823146-11632-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] usb.c: warning on USB_MAXINTERFACES overflow
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 12, 2011 at 02:25:46PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied to master.

Sascha

> ---
>  drivers/usb/core/usb.c |   10 ++++++++++
>  1 files changed, 10 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index b01a797..5dc8afe 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -207,6 +207,16 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
>  			     &buffer[index])->bInterfaceNumber != curr_if_num) {
>  				/* this is a new interface, copy new desc */
>  				ifno = dev->config.no_of_if;
> +				/* if ifno > USB_MAXINTERFACES, then
> +				 * next memcpy() will corrupt dev->config
> +				 */
> +				if (ifno > USB_MAXINTERFACES) {
> +					printf("ifno = %d > "
> +						"USB_MAXINTERFACES = %d !\n",
> +						ifno,
> +						USB_MAXINTERFACES);
> +					break;
> +				}
>  				dev->config.no_of_if++;
>  				memcpy(&dev->config.if_desc[ifno],
>  					&buffer[index], buffer[index]);
> -- 
> 1.7.5.4
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
