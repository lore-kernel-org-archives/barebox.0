Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1crIb7-00087S-5D
 for barebox@lists.infradead.org; Fri, 24 Mar 2017 06:21:23 +0000
Date: Fri, 24 Mar 2017 07:20:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170324062055.f7oeacmhkm3hkizj@pengutronix.de>
References: <20170322213615.24527-1-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170322213615.24527-1-pmamonov@gmail.com>
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
Subject: Re: [PATCH] usb: uhci-hcd: fix uhci_alloc_int_td()
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Peter,

On Thu, Mar 23, 2017 at 12:36:15AM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/usb/host/uhci-hcd.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/host/uhci-hcd.c b/drivers/usb/host/uhci-hcd.c
> index 9ad4644e8..04d167ee3 100644
> --- a/drivers/usb/host/uhci-hcd.c
> +++ b/drivers/usb/host/uhci-hcd.c
> @@ -554,8 +554,12 @@ static int submit_bulk_msg(struct usb_device *dev, unsigned long pipe,
>   */
>  static struct uhci_td *uhci_alloc_int_td(struct uhci_priv *uhci)
>  {
> -	return &uhci->tmp_int_td[0];
> +	int i;
>  
> +	for (i = 0; i < USB_MAX_TEMP_INT_TD; i++)
> +		if (uhci->tmp_int_td[i].dev_ptr == 0)
> +			return &uhci->tmp_int_td[i];
> +	return NULL;

You have to upstream the uhci driver first before I can apply fixes for
it ;)

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
