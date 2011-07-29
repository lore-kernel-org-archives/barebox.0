Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmjkF-0005cj-RH
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 09:52:42 +0000
Date: Fri, 29 Jul 2011 11:52:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110729095237.GA20587@pengutronix.de>
References: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
	<1311918777-26719-5-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311918777-26719-5-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/7] resource: introduce add_usb_ehci_device to register
	echi device
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 29, 2011 at 07:52:55AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> pass the hccr and hcor register base via resource
> 
> instroduce add_generic_usb_echi_device with hccr = base + 0x100 and
> hcor = base + 0x140
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---

Overall this looks better than my i.MX specific patch for ehci. I'll
drop mine.

> 
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 844dc1d..54856a3 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -900,20 +900,22 @@ static int ehci_probe(struct device_d *dev)
>  	host = &ehci->host;
>  	dev->priv = ehci;
>  
> -	if (pdata) {
> +	/* default to EHCI_HAS_TT to not change behaviour of boards
> +	 * with platform_data
> +	 */

Maybe you can fix this comment on the way: It should be 'without
platform_data'

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
