Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuxmc-00075f-Lp
 for barebox@lists.infradead.org; Fri, 24 Jan 2020 12:09:57 +0000
Date: Fri, 24 Jan 2020 13:09:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200124120949.khoxcbi5uuwblfxy@pengutronix.de>
References: <20200124104638.29086-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124104638.29086-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: udc: don't warn on unused gadget
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 24, 2020 at 11:46:38AM +0100, Uwe Kleine-K=F6nig wrote:
> Whenever a machine boots but didn't make use of the udc device
> an error message is emitted. This is hardly useful, so drop the
> message.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/usb/gadget/udc-core.c | 2 --
>  1 file changed, 2 deletions(-)

On which barebox version did you see the message? Since
28b38c1804d761257397f41ae2bbc071cd009935 it should be gone.

Sascha

> =

> diff --git a/drivers/usb/gadget/udc-core.c b/drivers/usb/gadget/udc-core.c
> index 096f05ed48df..4d5a95c6cbee 100644
> --- a/drivers/usb/gadget/udc-core.c
> +++ b/drivers/usb/gadget/udc-core.c
> @@ -280,8 +280,6 @@ void usb_del_gadget_udc(struct usb_gadget *gadget)
>  		if (udc->gadget =3D=3D gadget)
>  			goto found;
>  =

> -	dev_err(gadget->dev.parent, "gadget not registered.\n");
> -
>  	return;
>  =

>  found:
> -- =

> 2.24.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
