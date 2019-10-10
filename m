Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfGI-00015g-2P
 for barebox@lists.infradead.org; Thu, 10 Oct 2019 20:42:15 +0000
Received: by mail-io1-xd42.google.com with SMTP id c25so16697373iot.12
 for <barebox@lists.infradead.org>; Thu, 10 Oct 2019 13:42:13 -0700 (PDT)
MIME-Version: 1.0
References: <20191010081503.15254-1-jmaselbas@kalray.eu>
 <20191010081503.15254-4-jmaselbas@kalray.eu>
In-Reply-To: <20191010081503.15254-4-jmaselbas@kalray.eu>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 10 Oct 2019 13:41:45 -0700
Message-ID: <CAHQ1cqGhrSnL6MMxea0wZb8o=ZGUpHb841VuxgTQj3A8=ypeLQ@mail.gmail.com>
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
Subject: Re: [PATCH 4/6] usb: string: Use le16_to_cpu for langid
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Oct 10, 2019 at 1:15 AM Jules Maselbas <jmaselbas@kalray.eu> wrote:
>
> This might fix an endianness bug when the cpu is big-endian
> as the string_langid will be converted with `cpu_to_le16` when
> sending a control message to get a string descriptor.
>
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/usb/core/usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index e14b89b5e..5dc7993ac 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -925,7 +925,7 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
>                         goto error;
>                 } else {
>                         dev->have_langid = -1;
> -                       dev->string_langid = tbuf[2] | (tbuf[3] << 8);
> +                       dev->string_langid = le16_to_cpu(*((__le16 *)&buf[2]));

Very minor, but looks like le16_to_cpup() might be a better fit here.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
