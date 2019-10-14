Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJykU-0003k6-MO
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 11:42:52 +0000
Date: Mon, 14 Oct 2019 13:42:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191014114248.o2k4wsbuumqwbnaj@pengutronix.de>
References: <20191010081503.15254-1-jmaselbas@kalray.eu>
 <20191010081503.15254-4-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010081503.15254-4-jmaselbas@kalray.eu>
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
Cc: barebox@lists.infradead.org

On Thu, Oct 10, 2019 at 10:15:01AM +0200, Jules Maselbas wrote:
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
>  			goto error;
>  		} else {
>  			dev->have_langid = -1;
> -			dev->string_langid = tbuf[2] | (tbuf[3] << 8);
> +			dev->string_langid = le16_to_cpu(*((__le16 *)&buf[2]));

You also changed from tbuf to buf. Is this intentional?

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
