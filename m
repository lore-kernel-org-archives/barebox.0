Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuiv-0002b5-6b
 for barebox@lists.infradead.org; Tue, 05 May 2020 10:22:51 +0000
Date: Tue, 5 May 2020 12:22:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200505102247.GA5877@pengutronix.de>
References: <20200504075022.28234-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504075022.28234-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH 0/5] net: cpsw: dual_emac mode
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 04, 2020 at 09:50:17AM +0200, Michael Grzeschik wrote:
> This series enables the dual_emac mode for cpsw controller.
> It enables both ports to be used individually.
> 
> Michael Grzeschik (5):
>   net: cpsw: fix cpsw_slave_regs register offsets
>   net: cpsw: move generic setup code to probe
>   net: cpsw: cpsw_process should only handle rx channels for its own
>     port
>   net: cpsw: add vlan handling for dual_emac mode
>   net: cpsw: make cpsw_send directional
> 
>  drivers/net/cpsw.c | 154 ++++++++++++++++++++++++++++++++++++++-------
>  1 file changed, 130 insertions(+), 24 deletions(-)

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
