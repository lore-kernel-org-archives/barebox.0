Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8YBL-0006Cs-46
	for barebox@lists.infradead.org; Sat, 09 Apr 2011 13:26:31 +0000
Date: Sat, 9 Apr 2011 15:26:29 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20110409132629.GC7285@pengutronix.de>
References: <1302258240-18284-1-git-send-email-mkl@pengutronix.de>
	<1302258240-18284-2-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1302258240-18284-2-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 1/2] mxs: import mxs_iomux_setup_multiple_pads from kernel
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Marc,

On Fri, Apr 08, 2011 at 12:23:59PM +0200, Marc Kleine-Budde wrote:
> This patch doesn't remove the old pad setup, because there are several
> board which rely on it.
> 
> The include files are simple copies from the kernel, see their headers
> for credids. The mxs_iomux_setup_multiple_pads and mxs_iomux_setup_pad
> functions are lifted from the kernel's arch/arm/mach-mxs/iomux.c.
> Credids are added to barebox's iomux-imx.c header.

Can we switch the other boards to the new iomux defines? Shouldn't be
that much work as it can be copied from the kernel.

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
