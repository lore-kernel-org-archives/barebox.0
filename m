Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XstD3-0005dN-25
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 12:57:41 +0000
Date: Mon, 24 Nov 2014 13:57:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141124125718.GG30369@pengutronix.de>
References: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
 <1416827220-3103-17-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1416827220-3103-17-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 16/20] net: ethoc: depend on OPENRISC
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 24, 2014 at 12:06:56PM +0100, Lucas Stach wrote:
> This driver currently only works on OpenRISC, as it uses
> the cache flush/invalidate functions of this arch.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> The situation with cache functions scatterd into different files
> for the various arches is a mess currently. We should really aim
> to unify this into a common dma-mapping.h, to make it easier for
> driver writers.

Yeah, this is on my mental todo list for a while now. Unfortunately this
is a task with a high risk of regressions and only little reward. Also
it should be tested on a wide range of hardware.

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
