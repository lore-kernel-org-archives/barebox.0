Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKB8R-00035m-Hx
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 16:52:24 +0000
Date: Fri, 5 Oct 2012 18:52:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121005165221.GY1322@pengutronix.de>
References: <1349440069-23987-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349440069-23987-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] davinci_emac: fix comment for the _send function
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 05, 2012 at 04:27:49PM +0400, Antony Pavlov wrote:
> The _send function should not return the length
> of the transmitted packet.
> 
> See also
> 
> commit 76c4c9e48ffbe35490e1f7d3abcedc04934ac302
> Author: Jan Luebbe <jlu@pengutronix.de>
> Date:   Fri Sep 28 18:17:44 2012 +0200
> 
>     davinci_emac: return 0 on successful transmit
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  drivers/net/davinci_emac.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
> index 5bd5f30..989e119 100644
> --- a/drivers/net/davinci_emac.c
> +++ b/drivers/net/davinci_emac.c
> @@ -387,8 +387,8 @@ static void davinci_emac_halt(struct eth_device *edev)
>  }
>  
>  /*
> - * This function sends a single packet on the network and returns
> - * positive number (number of bytes transmitted) or negative for error
> + * This function sends a single packet on the network
> + * and returns 0 on successful transmit or negative for error
>   */
>  static int davinci_emac_send(struct eth_device *edev, void *packet, int length)
>  {
> -- 
> 1.7.10.4
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
