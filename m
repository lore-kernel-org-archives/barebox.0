Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.megiteam.pl ([213.189.52.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBwVj-0000dm-NR
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 09:19:12 +0000
References: <20210208163458.29143-2-jmaselbas@kalray.eu>
 <20210215141843.27629-1-jmaselbas@kalray.eu>
From: Bartosz Bilas <b.bilas@grinn-global.com>
Message-ID: <2e8c050e-b72d-5f29-c905-8c8e1bf5e303@grinn-global.com>
Date: Tue, 16 Feb 2021 10:19:00 +0100
MIME-Version: 1.0
In-Reply-To: <20210215141843.27629-1-jmaselbas@kalray.eu>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/2] usb: gadget: dfu: Rework print messages
To: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Hello Jules,

On 15.02.2021 15:18, Jules Maselbas wrote:
> Replace printf with pr_err and debug with pr_debug.
> Defines "dfu :" as a prefix for formatted prints.
>
> ---
> v1 -> v2:
>   - add `pr_fmt(fmt) "dfu: " fmt`
>   - change debug call to pr_debug
>   - remove "dfu: " in print messages
>
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>   drivers/usb/gadget/dfu.c | 11 ++++++-----
>   1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
> index 9d6a9d252..fba4ad782 100644
> --- a/drivers/usb/gadget/dfu.c
> +++ b/drivers/usb/gadget/dfu.c
> @@ -32,6 +32,7 @@
>    *   checking?
>    * - make 'dnstate' attached to 'struct usb_device_instance'
>    */
> +#define pr_fmt(fmt) "dfu: " fmt
>   
>   #include <dma.h>
>   #include <asm/byteorder.h>
> @@ -209,7 +210,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
>   
>   	dfu->dnreq = usb_ep_alloc_request(c->cdev->gadget->ep0);
>   	if (!dfu->dnreq) {
> -		printf("usb_ep_alloc_request failed\n");
> +		pr_err("dfu: usb_ep_alloc_request failed\n");

you have missed this one ^^^^^


Best
Bartek
>   		status = -ENOMEM;
>   		goto out;
>   	}
> @@ -254,7 +255,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
>   
>   	i = 0;
>   	file_list_for_each_entry(dfu_files, fentry) {
> -		printf("dfu: register alt%d(%s) with device %s\n",
> +		pr_err("register alt%d(%s) with device %s\n",
>   				i, fentry->name, fentry->filename);
>   		i++;
>   	}
> @@ -418,7 +419,7 @@ static int handle_manifest(struct usb_function *f, const struct usb_ctrlrequest
>   
>   		ret = copy_file(DFU_TEMPFILE, dfu_file_entry->filename, 0);
>   		if (ret) {
> -			printf("copy file failed\n");
> +			pr_err("copy file failed\n");
>   			ret = -EINVAL;
>   			goto out;
>   		}
> @@ -500,7 +501,7 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
>   				value = -EINVAL;
>   				goto out;
>   			}
> -			debug("dfu: starting download to %s\n", dfu_file_entry->filename);
> +			pr_debug("starting download to %s\n", dfu_file_entry->filename);
>   			if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
>   				dfufd = open(DFU_TEMPFILE, O_WRONLY | O_CREAT);
>   			} else {
> @@ -529,7 +530,7 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
>   			return 0;
>   		case USB_REQ_DFU_UPLOAD:
>   			dfu->dfu_state = DFU_STATE_dfuUPLOAD_IDLE;
> -			debug("dfu: starting upload from %s\n", dfu_file_entry->filename);
> +			pr_debug("starting upload from %s\n", dfu_file_entry->filename);
>   			if (!(dfu_file_entry->flags & FILE_LIST_FLAG_READBACK)) {
>   				dfu->dfu_state = DFU_STATE_dfuERROR;
>   				goto out;

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
