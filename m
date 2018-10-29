Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gH2Eb-0001nx-87
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 07:45:16 +0000
Date: Mon, 29 Oct 2018 08:44:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181029074458.amlkft5kpmkewvpl@pengutronix.de>
References: <20181026153508.GA16049@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181026153508.GA16049@lenoch>
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
Subject: Re: [PATCH 1/2] Documentation: USB gadget: document
 usbgadget.fastboot_bbu variable
To: Ladislav Michl <ladis@linux-mips.org>
Cc: barebox@lists.infradead.org

On Fri, Oct 26, 2018 at 05:35:08PM +0200, Ladislav Michl wrote:
> Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> ---
>  Documentation/user/usb.rst | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index 8396f3897..b89d46bb6 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -266,3 +266,5 @@ USB Gadget autostart Options
>    See :ref:`command_usbgadget` -a. (Default 0).
>  ``global.usbgadget.fastboot_function``
>    Function description for fastboot. See :ref:`command_usbgadget` -A [desc].
> +``global.usbgadget.fastboot_bbu``
> +  Export barebox update handlers. See :ref:`command_usbgadget` -b. (Default 0).
> -- 
> 2.19.1
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
