Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tw96a-0004wk-6n
 for barebox@lists.infradead.org; Fri, 18 Jan 2013 10:23:26 +0000
Date: Fri, 18 Jan 2013 11:23:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130118102319.GE1906@pengutronix.de>
References: <cover.1358400153.git.d.mierswa@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1358400153.git.d.mierswa@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RESEND PATCH] framebuffer work (especially i.MX)
To: Daniel Mierswa <d.mierswa@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Jan 17, 2013 at 07:32:55AM +0100, Daniel Mierswa wrote:
> I adjusted the patch series and added the fixes as discussed on the
> mailinglist.
> 
> I still somehow feel that the offscreenbuf member should be set by
> the fd_open routine because I expect fd_close to always work with the
> struct set by fd_open no matter what offscreen parameter the function
> got.
> 
> Daniel Mierswa (4):
>   i.MX21: Add periph. clock register name macros
>   i.MX21/27: don't enable lcd bus clocks too early
>   i.MX27: fix shift amount for PCCR1_PERCLK3_EN

Applied up to this patch.

Thanks
 Sascha

>   video/imx: initialize offscreenbuf member
> 
>  arch/arm/mach-imx/clk-imx21.c               | 67 ++++++++++++++++++++++++++---
>  arch/arm/mach-imx/clk-imx27.c               | 16 ++++---
>  arch/arm/mach-imx/include/mach/imx21-regs.h |  6 ---
>  commands/splash.c                           |  8 ++++
>  drivers/video/imx.c                         | 40 ++++++++++++++---
>  5 files changed, 111 insertions(+), 26 deletions(-)
> 
> -- 
> 1.8.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
