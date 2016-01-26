Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNxdT-0003gw-3I
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 07:01:55 +0000
Date: Tue, 26 Jan 2016 08:01:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160126070133.GZ13058@pengutronix.de>
References: <1453707854-34145-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1453707854-34145-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH v2 1/2] arm: am33xx: Move function to read from Master OSC
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 25, 2016 at 08:44:13AM +0100, Teresa Remmet wrote:
> From: Daniel Schultz <d.schultz@phytec.de>
> 
> Move the function to read the Master OSC speed from
> the SYSBOOT Configuration Pin for reuse.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
> Changes in v2:
> - Return kHz instead of Hz to be able to use a 32bit type
> 
>  arch/arm/mach-omap/am33xx_clock.c              | 27 ++++++++++++++++++++++++++
>  arch/arm/mach-omap/dmtimer.c                   | 20 +++----------------
>  arch/arm/mach-omap/include/mach/am33xx-clock.h |  1 +
>  3 files changed, 31 insertions(+), 17 deletions(-)

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
