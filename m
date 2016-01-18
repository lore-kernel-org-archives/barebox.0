Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aL49k-0007Gx-O0
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 07:23:17 +0000
Date: Mon, 18 Jan 2016 08:22:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160118072253.GC13058@pengutronix.de>
References: <1452629211-30125-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1452629211-30125-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] ARM: tegra: clean up lowlevel entry
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 12, 2016 at 09:06:51PM +0100, Lucas Stach wrote:
> The lowlevel startup function jumps directly to the main
> cluster if we are already running there. This allows for a
> significant cleanup of the board startup code by directly
> using the FDT address available there.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/boards/nvidia-beaver/entry.c        | 11 ++---------
>  arch/arm/boards/nvidia-jetson-tk1/entry.c    | 11 ++---------
>  arch/arm/boards/toradex-colibri-t20/entry.c  | 11 ++---------
>  arch/arm/boards/toshiba-ac100/entry.c        | 11 ++---------
>  arch/arm/mach-tegra/include/mach/lowlevel.h  |  9 +++++----
>  arch/arm/mach-tegra/tegra_avp_init.c         |  5 +----
>  arch/arm/mach-tegra/tegra_maincomplex_init.c |  5 ++---
>  7 files changed, 16 insertions(+), 47 deletions(-)

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
