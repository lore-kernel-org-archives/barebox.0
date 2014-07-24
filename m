Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XALaF-0003dK-KV
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 16:09:34 +0000
Received: by mail-wi0-f172.google.com with SMTP id n3so9885278wiv.11
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 09:09:08 -0700 (PDT)
Message-ID: <53D12FA0.70507@gmail.com>
Date: Thu, 24 Jul 2014 18:09:04 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406208526-24261-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406208526-24261-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406208526-24261-2-git-send-email-sebastian.hesselbarth@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/6] USB: Fix stale usb devices in usb_device_list
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 07/24/2014 03:28 PM, Sebastian Hesselbarth wrote:
> New usb devices are added to a list of usb devices, but when removing
> the corresponding usb_device it was not removed from that list. Fix it
> by deleting it properly from the usb_device_list.
>
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> To: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> Cc: barebox@lists.infradead.org
> ---
>   drivers/usb/core/usb.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index 351e783b6536..2cc338465539 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -472,6 +472,7 @@ void usb_remove_device(struct usb_device *usbdev)
>   		dev_err(&usbdev->dev, "failed to unregister\n");
>
>   	usbdev->parent->children[usbdev->portnr - 1] = NULL;
> +	list_del(&usbdev->list);

Unfortunately, this breaks usb_remove_device when called on a
device that has not yet gone through usb_new_device().

I'll have a closer look at it.

Sebastian

>   	free(usbdev);
>   }
>
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
