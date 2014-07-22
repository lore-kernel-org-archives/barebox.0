Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9frK-0003Kx-Tk
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 19:36:26 +0000
Date: Tue, 22 Jul 2014 21:36:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140722193600.GB23235@pengutronix.de>
References: <1406015842-20754-1-git-send-email-holgerschurig@gmail.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406015842-20754-1-git-send-email-holgerschurig@gmail.de>
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
Subject: Re: [PATCH 0/3] sandbox: prepare for static checkers
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 22, 2014 at 09:57:19AM +0200, Holger Schurig wrote:
> From: Holger Schurig <holgerschurig@gmail.com>
> 
> I want to use different compilers and static checkers (e.g. clang's
> scan-build) on Barebox.  As a preparatory step I want to maximize code
> coverage in an non-crosscompilation environment.
> 
> This patch set prepares the tree so that "make ARCH=sandbox allyesconfig"
> followed by "make ARCH=sandbox" works and compiles warning free (at least
> with Debian's gcc-4.6).
> 
> Holger Schurig (3):
>   sandbox: disable bareboxcrc32 in sandbox mode
>   sandbox: allow "make ARCH=sandbox allyesconfig"
>   sandbox: work around missing of_add_memory_bank()

Applied 1/3 and 2/3 for now.

Sascha

> 
>  arch/arm/Kconfig                 |  2 ++
>  arch/nios2/Kconfig               |  1 +
>  arch/openrisc/Kconfig            |  1 +
>  arch/ppc/Kconfig                 |  1 +
>  common/Kconfig                   | 17 +++++++++++++++++
>  drivers/ata/Kconfig              |  1 +
>  drivers/input/Kconfig            |  2 +-
>  drivers/net/Kconfig              |  4 ++++
>  drivers/of/base.c                |  2 ++
>  drivers/regulator/Kconfig        |  1 +
>  drivers/usb/host/Kconfig         |  1 +
>  drivers/video/imx-ipu-v3/Kconfig |  1 +
>  12 files changed, 33 insertions(+), 1 deletion(-)
> 
> -- 
> 1.8.5.2
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
