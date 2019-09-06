Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68Sm-00061R-6u
 for barebox@lists.infradead.org; Fri, 06 Sep 2019 07:15:21 +0000
Date: Fri, 6 Sep 2019 09:15:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190906071518.dhobbezb4b5b4shd@pengutronix.de>
References: <20190905090606.17748-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905090606.17748-1-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH] clk: zynqmp: rename driver specific CLK_MUX_READ_ONLY
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 05, 2019 at 11:06:06AM +0200, Michael Tretter wrote:
> Since commit c7cc27d006cc (clk: mux: Support CLK_MUX_READ_ONLY flag)
> Barebox defines the CLK_MUX_READ_ONLY flag like Linux.
> 
> The ZynqMP clock driver used the flag before, because this flag is used
> to convey this information from the PMU firmware to the Linux driver.
> However, the flags of the common clock framework and the flag of the
> protocol between PMU firmware and the ZynqMP clock driver should be
> handled separately.
> 
> Therefore, add a driver specific prefix to the flag definition in the
> ZynqMP driver.
> 
> Fixes the warning
> 
> 	drivers/clk/zynqmp/clk-mux-zynqmp.c:18:0: warning: "CLK_MUX_READ_ONLY" redefined
> 	In file included from drivers/clk/zynqmp/clk-mux-zynqmp.c:13:0:
> 	include/linux/clk.h:350:0: note: this is the location of the previous definition
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  drivers/clk/zynqmp/clk-mux-zynqmp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

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
