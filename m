Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEcNO-0005gl-0u
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 08:12:34 +0000
Date: Mon, 2 Apr 2012 10:12:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120402081228.GH3852@pengutronix.de>
References: <1332782947-3407-1-git-send-email-esben.haabendal@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1332782947-3407-1-git-send-email-esben.haabendal@gmail.com>
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
Subject: Re: [PATCH 0/4] mxs: iomux configuration improvements
To: esben.haabendal@gmail.com
Cc: barebox@lists.infradead.org

On Mon, Mar 26, 2012 at 07:29:03PM +0200, esben.haabendal@gmail.com wrote:
> From: Esben Haabendal <esben.haabendal@gmail.com>
> 
> These patches completes the iomux configuration definitions in
> iomux-imx28.h, fixes a bug for PWM3 pad configuration, and fixes
> support for using BITKEEPER(1) in pad configurations.
> 
> RFC: It might be better to just get rid of the split between BITKEEPER
> and PULLUP in definitions.  It clearly is a source for subtle bugs
> (setting PULLUP does not really do anything if the pad/function is
> actually defined as a keeper pad.  As for i.MX28 the reference manual
> is not very clear on which pads/functions have pullup instead of
> keeper, and I am not sure that the current defintions in barebox is in
> sync with the manual and/or the real world.  What do you think, should
> I make a patch unifying PULLUP and BITKEEPER.
> 
> Esben Haabendal (4):
>   mxs: Fix support for BITKEEPER() macro
>   mxs: Fix i.MX28 PWM3 iomux configuration
>   mxs: Cleanup use of blank lines in i.MX28 iomux configurations
>   mxs: Add remaining i.MX28 iomux configurations

Applied, thanks.

Sascha

> 
>  arch/arm/mach-mxs/include/mach/iomux-imx28.h |  163 +++++++++++++++++++-------
>  arch/arm/mach-mxs/iomux-imx.c                |    6 +
>  2 files changed, 126 insertions(+), 43 deletions(-)
> 
> -- 
> 1.7.5.4
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
