Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0lgq-0001I1-7Z
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 07:37:32 +0000
Date: Mon, 23 Nov 2015 08:37:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151123073710.GU11966@pengutronix.de>
References: <1448221767-14769-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448221767-14769-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] net: usb: asix: make rx_fixup ax_skb buffer aligned
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Nov 22, 2015 at 10:49:27PM +0300, Antony Pavlov wrote:
> ax_skb receive buffer unalignment leads to consequent
> unalignment data access in network stack routines,
> especially in net_checksum().
> 
> By-turn unalignment data accesses lead to performance penalty.
> Moreover on classic MIPS CPUs without hardware unalignment access
> support this leads to undesirable exceptions.
> 
> At the moment barebox on MIPS can't parry these unalignment access
> exceptions, so the Asix USB Ethernet chips, that need receive
> fixup workaround, are completely unusable on MIPS without this patch.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  drivers/net/usb/asix.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
> index 4c53a14..ff80398 100644
> --- a/drivers/net/usb/asix.c
> +++ b/drivers/net/usb/asix.c
> @@ -158,7 +158,7 @@ struct asix_rx_fixup_info {
>  	u16 size;
>  	u16 offset;
>  	bool split_head;
> -	unsigned char ax_skb[RX_FIXUP_SIZE];
> +	unsigned char ax_skb[RX_FIXUP_SIZE] __aligned(2);
>  };
>  
>  struct asix_common_private {
> -- 
> 2.6.2
> 
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
