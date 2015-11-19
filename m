Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzK1h-0007de-Nq
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 07:53:06 +0000
Date: Thu, 19 Nov 2015 08:52:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151119075243.GC11966@pengutronix.de>
References: <1447880807.4553.171.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447880807.4553.171.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 1/4] mci: core: bus-width property should override driver
 default
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Wed, Nov 18, 2015 at 09:06:46PM +0000, Trent Piepho wrote:
> The OF code for parsing bus-width would only add the specified width
> to those the driver might have already set capability flags for.
> 
> Because of this, if the driver had set 8 or 4 bit width, it wasn't
> possible for the DT to specify that fewer pins were used on the board
> and a smaller width was necessary.
> 
> Change this so the width in the DT overrides whatever widths the
> driver says it supports.  There is no reason to have an incorrect
> device tree and it makes far more sense for the DT to override the
> driver default than for the driver default to override the DT.
> 
> The widths the driver puts in host_caps before calling mci_of_parse()
> are considered the default if the DT doesn't specify bus-width.  This
> should cause the least amount of change to existing boards, as despite
> a comment that no bus-width meant to use 1 bit, using the driver
> default is what was really happening.
> 
> Unfortunately, half of existing drivers default to the largest width
> they support while the other half default to the smallest.  Boards
> should just stick the width in the device tree.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> ---
>  drivers/mci/mci-core.c | 38 ++++++++++++++++++++++----------------
>  include/mci.h          |  2 ++
>  2 files changed, 24 insertions(+), 16 deletions(-)

Applied, thanks

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
