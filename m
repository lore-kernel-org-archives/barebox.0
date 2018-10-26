Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFyl0-0000AF-8w
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 09:51:55 +0000
Date: Fri, 26 Oct 2018 11:50:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181026095006.seqw52kddynsm3we@pengutronix.de>
References: <20181024204147.GA15377@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181024204147.GA15377@lenoch>
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
Subject: Re: [PATCH] usb: gadget: set maxpacket_limit
To: Ladislav Michl <ladis@linux-mips.org>
Cc: barebox@lists.infradead.org

On Wed, Oct 24, 2018 at 10:41:47PM +0200, Ladislav Michl wrote:
> Gadget update to 3.15 imported Linux patch e117e742d310 ("usb:
> gadget: add "maxpacket_limit" field to struct usb_ep"):
> 
>   This patch adds "maxpacket_limit" to struct usb_ep. This field contains
>   maximum value of maxpacket supported by driver, and is set in driver probe.
>   This value should be used by autoconfig() function, because value of field
>   "maxpacket" is set to value from endpoint descriptor when endpoint becomes
>   enabled. So when autoconfig() function will be called again for this endpoint,
>   "maxpacket" value will contain wMaxPacketSize from descriptior instead of
>   maximum packet size for this endpoint.
> 
>   For this reason this patch adds new field "maxpacket_limit" which contains
>   value of maximum packet size (which defines maximum endpoint capabilities).
>   This value is used in ep_matches() function used by autoconfig().
> 
>   Value of "maxpacket_limit" should be set in UDC driver probe function, using
>   usb_ep_set_maxpacket_limit() function, defined in gadget.h. This function
>   set choosen value to both "maxpacket_limit" and "maxpacket" fields.
> 
> However said update didn't bring in all driver changes. Do it now.
> 
> Fixes: 2776d53d7ac8 ("USB: gadget: Update to 3.15")
> Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> ---
>  Please note, that this patch was created to fix
>    simear4:/ usbgadget -a
>    multi_bind: creating ACM function
>    g_multi usbgadget: acm/23b68c88: can't bind, err -19
>    g_multi udc0: failed to start g_multi: -19
>    usbgadget: No such device
>  on at91_udc (autoconfig() was failing).
>  Thus fsl_udc and pxa27x_udc changes are untested.

Tested on fsl_udc and applied, thanks

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
