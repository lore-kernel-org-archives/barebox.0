Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6cG9-0004Bx-QK
 for barebox@lists.infradead.org; Fri, 05 May 2017 12:22:59 +0000
Received: by mail-wr0-x243.google.com with SMTP id w50so534042wrc.0
 for <barebox@lists.infradead.org>; Fri, 05 May 2017 05:22:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170505114211.14270-1-o.rempel@pengutronix.de>
References: <20170505114211.14270-1-o.rempel@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Fri, 5 May 2017 14:22:15 +0200
Message-ID: <CAGm1_ksFG33sjji0wCdPBZK1xKtPP-6h3tBaKr6mxusUv+GUSg@mail.gmail.com>
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
Subject: Re: [PATCH] Documentation: usbgadget: provide autostart notes
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

Hi Oleksij,

On Fri, May 5, 2017 at 1:42 PM, Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> The usbgadget autostart funktionality is already added. Not it's
> time to reflect it in the documentation.
>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  Documentation/user/usb.rst | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index bbcb045cee..ad7f8ab54f 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -195,6 +195,25 @@ USB CDC ACM compliant serial device.
>  Unlike the :ref:`command_dfu` command the ``usbgadget`` command returns immediately
>  after creating the gadget. The gadget can be removed with ``usbgadget -d``.
>
> +USB Gadget autostart Support
> +----------------------------
> +
> +Barebox can be configured to start usbgadget automatically by using global variables,
> +instead of creating boot script. This can be usefoul if autostart policy should be

s/usefoul /useful

Yegor

> +chosen at boot time from other driver or script.
> +To get usbgadget autostart support barebox has to be compiled with
> +CONFIG_USB_GADGET_AUTOSTART enabled.
> +
> +USB Gadget autostart Options
> +^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> +
> +``global.usbgadget.autostart``
> +  Boolean flag. If set to 1, usbgadget will be started automatically on boot.
> +``global.usbgadget.acm``
> +  Boolean flag. If set to 1, CDC ACM function will be created. See :ref:`command_usbgadget` -a.
> +``global.usbgadget.acm``
> +  Function description for fastboot. See :ref:`command_usbgadget` -A <desc>.
> +
>  USB OTG support
>  ---------------
>
> --
> 2.11.0
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
