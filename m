Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZS3nF-0003U1-Km
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 13:52:42 +0000
Date: Wed, 19 Aug 2015 15:52:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150819135219.GX18700@pengutronix.de>
References: <1439547405-12578-1-git-send-email-l.stach@pengutronix.de>
 <1439547405-12578-5-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1439547405-12578-5-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 5/5] ARM: imx6: select OFTREE
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 14, 2015 at 12:16:45PM +0200, Lucas Stach wrote:
> i.MX6 is fully DT enabled and the already selected
> COMMON_CLK_OF_PROVIDER needs OFTREE support to build properly.
> 
> Fixes:
> arch/arm/mach-imx/clk-imx6.c: In function 'imx6_ccm_probe':
> arch/arm/mach-imx/clk-imx6.c:500:2: error:
>     invalid use of undefined type 'struct clk_onecell_data'
> arch/arm/mach-imx/clk-imx6.c:502:2: error:
>     implicit declaration of function 'of_clk_add_provider'
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)

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
