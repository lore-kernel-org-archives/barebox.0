Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YID8m-0002bV-LK
 for barebox@lists.infradead.org; Mon, 02 Feb 2015 09:17:57 +0000
Date: Mon, 2 Feb 2015 10:17:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150202091734.GX12209@pengutronix.de>
References: <1422710134-30798-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422710134-30798-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH v2 1/2] ARM: pxa: add pxa25x support
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Sat, Jan 31, 2015 at 02:15:33PM +0100, Robert Jarzmik wrote:
> Add support for the PXA25X SoC family, the oldest of the PXA serie.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> ---
>  arch/arm/mach-pxa/Kconfig                    | 21 +++++++++++
>  arch/arm/mach-pxa/Makefile                   |  1 +
>  arch/arm/mach-pxa/include/mach/pxa-regs.h    |  2 ++
>  arch/arm/mach-pxa/include/mach/pxa25x-regs.h |  6 ++++
>  arch/arm/mach-pxa/include/mach/pxa2xx-regs.h |  1 +
>  arch/arm/mach-pxa/mfp-pxa2xx.c               |  4 ++-
>  arch/arm/mach-pxa/sleep.S                    |  2 +-
>  arch/arm/mach-pxa/speed-pxa25x.c             | 54 ++++++++++++++++++++++++++++
>  8 files changed, 89 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/mach-pxa/include/mach/pxa25x-regs.h
>  create mode 100644 arch/arm/mach-pxa/speed-pxa25x.c

Applied both, thanks

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
