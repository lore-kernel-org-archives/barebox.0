Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9m9p-0007mp-EE
 for barebox@lists.infradead.org; Wed, 10 Feb 2021 09:51:38 +0000
References: <20210208163458.29143-1-jmaselbas@kalray.eu>
 <20210208163458.29143-3-jmaselbas@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <eeb04f6e-92d7-2e84-3ce1-156d2cd7cfe3@pengutronix.de>
Date: Wed, 10 Feb 2021 10:51:35 +0100
MIME-Version: 1.0
In-Reply-To: <20210208163458.29143-3-jmaselbas@kalray.eu>
Content-Language: en-US
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
Subject: Re: [PATCH 3/3] usb: gadget: dfu: Replace printf with pr_err
To: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org

Hello Jules,

On 08.02.21 17:34, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/usb/gadget/dfu.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
> index 95e8da82e..a28e7c9e8 100644
> --- a/drivers/usb/gadget/dfu.c
> +++ b/drivers/usb/gadget/dfu.c
> @@ -351,7 +351,7 @@ static void dfu_do_copy(struct dfu_work *dw)
>  
>  	ret = copy_file(DFU_TEMPFILE, dfu_file_entry->filename, 0);
>  	if (ret) {
> -		printf("copy file failed\n");
> +		pr_err("dfu: copy file failed\n");

Like with Linux, you could define pr_fmt(fmt) "dfu: " fmt before including
any headers and that prefix will be applied for all pr_ in that file.

>  		dfu->dfu_state = DFU_STATE_dfuERROR;
>  		dfu->dfu_status = DFU_STATUS_errWRITE;
>  		return;
> @@ -396,7 +396,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
>  
>  	dfu->dnreq = usb_ep_alloc_request(c->cdev->gadget->ep0);
>  	if (!dfu->dnreq) {
> -		printf("usb_ep_alloc_request failed\n");
> +		pr_err("dfu: usb_ep_alloc_request failed\n");
>  		status = -ENOMEM;
>  		goto out;
>  	}
> @@ -445,7 +445,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
>  
>  	i = 0;
>  	file_list_for_each_entry(dfu_files, fentry) {
> -		printf("dfu: register alt%d(%s) with device %s\n",
> +		pr_err("dfu: register alt%d(%s) with device %s\n",
>  				i, fentry->name, fentry->filename);
>  		i++;
>  	}
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
