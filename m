Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Ot-0007B2-5B
 for barebox@lists.infradead.org; Mon, 29 Apr 2019 07:08:32 +0000
Date: Mon, 29 Apr 2019 09:08:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190429070824.wot6p5bselz73juc@pengutronix.de>
References: <96430d9a-d2dc-d5a4-ce9d-caedf4977f0d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96430d9a-d2dc-d5a4-ce9d-caedf4977f0d@gmail.com>
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
Subject: Re: [PATCH] clk: vf610: improve handling case that cpu frequency
 can't be changed
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Sat, Apr 27, 2019 at 12:09:05PM +0200, Heiner Kallweit wrote:
> Currently we get a nasty error message if the cpu clock can't be
> changed:
> DDRC is clocked by PLL1, can't switch CPU clockinitcall vf610_switch_cpu_clock+0x1/0x198 failed: Invalid argument
> 
> So let's do the following:
> - factor out the check from vf610_switch_cpu_clock_to_500mhz() and
>   vf610_switch_cpu_clock_to_400mhz
> - if clock can't be changed, don't treat it as an error
> - don't call clock notifier chain if clock can't be changed
> - add trailing newline to the warning message
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>  drivers/clk/imx/clk-vf610.c | 33 ++++++++++++++++++---------------
>  1 file changed, 18 insertions(+), 15 deletions(-)

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
