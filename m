Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqzNx-0002va-4Z
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 11:59:30 +0000
Date: Tue, 5 Feb 2019 12:59:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190205115927.nyirklt3cz2lw6by@pengutronix.de>
References: <20190204102937.GA2663@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190204102937.GA2663@lenoch>
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
Subject: Re: [PATCH] dts: Revert at91 switch to new PMC clock bindings
To: Ladislav Michl <ladis@linux-mips.org>
Cc: barebox@lists.infradead.org

Hi Ladis,

On Mon, Feb 04, 2019 at 11:29:37AM +0100, Ladislav Michl wrote:
> Recent DTS update brought in switch to the new PMC clock
> bindings, however we do not support that yet. Revert this
> change until PMC clock bindings support is implemented.
> 
> Fixes: 33fdc89d4cbd ("dts: update to v5.0-rc1")
> Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> ---
>  Disclaimer: Runtime tested only on at91sam9g20.
> 
>  dts/src/arm/at91sam9260.dtsi       | 308 ++++++++++++++++++++++++---
>  dts/src/arm/at91sam9261.dtsi       | 287 +++++++++++++++++++++++--
>  dts/src/arm/at91sam9263.dtsi       | 315 +++++++++++++++++++++++++---
>  dts/src/arm/at91sam9g15.dtsi       |   4 -
>  dts/src/arm/at91sam9g20.dtsi       |  23 +-
>  dts/src/arm/at91sam9g25.dtsi       |   4 -
>  dts/src/arm/at91sam9g25ek.dts      |   4 +-
>  dts/src/arm/at91sam9g35.dtsi       |   4 -
>  dts/src/arm/at91sam9rl.dtsi        | 239 +++++++++++++++++++--
>  dts/src/arm/at91sam9x25.dtsi       |   4 -
>  dts/src/arm/at91sam9x35.dtsi       |   4 -
>  dts/src/arm/at91sam9x5.dtsi        | 326 ++++++++++++++++++++++++++---
>  dts/src/arm/at91sam9x5_can.dtsi    |  18 +-
>  dts/src/arm/at91sam9x5_isi.dtsi    |  11 +-
>  dts/src/arm/at91sam9x5_lcd.dtsi    |  19 +-
>  dts/src/arm/at91sam9x5_macb0.dtsi  |  11 +-
>  dts/src/arm/at91sam9x5_macb1.dtsi  |  11 +-
>  dts/src/arm/at91sam9x5_usart3.dtsi |  11 +-
>  18 files changed, 1434 insertions(+), 169 deletions(-)

dts/ contains a 1:1 copy from the upstream devicetree-rebasing
repository. I can't apply any patches to this directory.

You would have to merge the changes to the changes to the corresponding
files in arch/arm/dts. I'm not sure how feasible this is in this case
since not only the clock nodes are changed, but also the references to
the clocks.

For sure it should be enough to fix the trees you actually can test and
care about.

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
