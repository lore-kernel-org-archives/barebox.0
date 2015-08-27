Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZV33C-0006HR-VC
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 19:41:31 +0000
Date: Thu, 27 Aug 2015 21:41:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150827194107.GX18700@pengutronix.de>
References: <1440694111-1088-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1440694111-1088-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [RFC] usb: ehci-hcd: add OF bindings
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 27, 2015 at 07:48:31PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/usb/host/ehci-hcd.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 1146b71..ef555eb 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -940,12 +940,16 @@ static int ehci_probe(struct device_d *dev)
>  {
>  	struct ehci_data data = {};
>  	struct ehci_platform_data *pdata = dev->platform_data;
> +	struct device_node *dn = dev->device_node;
> +	uint32_t flags;
>  
>  	/* default to EHCI_HAS_TT to not change behaviour of boards
>  	 * without platform_data
>  	 */
>  	if (pdata)
>  		data.flags = pdata->flags;
> +	else if (dn && of_property_read_u32(dn, "flags", &flags) == 0)
> +		data.flags = flags;

Shouldn't you check the has-transaction-translator boolean property
instead? That's what documented in dts/Bindings/usb/usb-ehci.txt

Otherwise looks good.

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
