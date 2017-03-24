Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1crIW7-0005Mo-5a
 for barebox@lists.infradead.org; Fri, 24 Mar 2017 06:16:08 +0000
Date: Fri, 24 Mar 2017 07:15:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170324061545.6tf7rlj3hroazq2k@pengutronix.de>
References: <20170322213803.24634-1-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170322213803.24634-1-pmamonov@gmail.com>
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
Subject: Re: [PATCH] usb_kbd: release all keys on error / disconnect
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 23, 2017 at 12:38:03AM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/input/usb_kbd.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
> index 2acc95d9f..a2b92c285 100644
> --- a/drivers/input/usb_kbd.c
> +++ b/drivers/input/usb_kbd.c
> @@ -58,6 +58,14 @@ struct usb_kbd_pdata {
>  	struct input_device input;
>  };
>  
> +static void usb_kbd_release_all_keys(struct usb_kbd_pdata *data)
> +{
> +	int i;
> +
> +	for (i = 0; i <= KEY_MAX; i++)
> +		input_report_key_event(&data->input, i, 0);
> +}
> +
>  static int usb_kbd_int_poll(struct usb_kbd_pdata *data)
>  {
>  	return usb_submit_int_msg(data->usbdev, data->intpipe, data->new,
> @@ -98,6 +106,8 @@ static void usb_kbd_poll(void *arg)
>  	int ret, i;
>  
>  	ret = data->do_poll(data);
> +	if (ret < 0)
> +		usb_kbd_release_all_keys(data);
>  	if (ret == -EAGAIN)
>  		goto exit;
>  	if (ret < 0) {
> @@ -209,6 +219,7 @@ static void usb_kbd_disconnect(struct usb_device *usbdev)
>  {
>  	struct usb_kbd_pdata *data = usbdev->drv_data;
>  
> +	usb_kbd_release_all_keys(data);
>  	poller_async_unregister(&data->poller);
>  	input_device_unregister(&data->input);
>  	dma_free(data->new);
> -- 
> 2.11.0
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
