Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irK2Z-0006BL-4B
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 11:07:23 +0000
Date: Tue, 14 Jan 2020 12:07:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200114110715.hpw6papufveol6qb@pengutronix.de>
References: <20200113193637.133182-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200113193637.133182-1-dev@lynxeye.de>
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
Subject: Re: [PATCH] ARM: zynq: zed: partially revert
 zynq_cpu_lowlevel_init() chnages
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 13, 2020 at 08:36:37PM +0100, Lucas Stach wrote:
> Calling arm_cpu_lowlevel_init() from zynq_cpu_lowlevel_init() adds a stack
> push/pop to the latter function which doesn't work this early in the boot.
> 
> As the BootROM apparently hands proccessor control to us in abort(!?!)
> mode, setting up a stack requires duplicating most of arm_cpu_lowlevel_init().
> To get around this catch-22 move the call to arm_cpu_lowlevel_init back into
> the board lowlevel start function, so we don't need a stack at all.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/boards/avnet-zedboard/lowlevel.c | 1 +
>  arch/arm/mach-zynq/cpu_init.c             | 2 --
>  2 files changed, 1 insertion(+), 2 deletions(-)

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
