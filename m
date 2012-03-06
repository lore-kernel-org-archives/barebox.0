Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S4pm9-0002jP-NY
 for barebox@lists.infradead.org; Tue, 06 Mar 2012 08:29:43 +0000
Date: Tue, 6 Mar 2012 09:29:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120306082930.GE3852@pengutronix.de>
References: <1330712410-26479-1-git-send-email-plagnioj@jcrosoft.com>
 <1330712410-26479-5-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330712410-26479-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 5/5] macb: add timeout on send
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 02, 2012 at 07:20:10PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will ensure that we send an other packet only when the first one is send.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/net/macb.c |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index 9b54afa..3835dba 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -121,6 +121,11 @@ static int macb_send(struct eth_device *edev, void *packet,
>  	barrier();
>  	writel(MACB_BIT(TE) | MACB_BIT(RE) | MACB_BIT(TSTART), macb->regs + MACB_NCR);
>  
> +	wait_on_timeout(100 * MSECOND,
> +		!(macb->tx_ring[0].ctrl & TXBUF_USED));

If you care for adding a timeout loop then you should also check
the return value.

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
