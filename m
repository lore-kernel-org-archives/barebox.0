Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAsUL-0002No-7D
 for barebox@lists.infradead.org; Wed, 17 May 2017 06:31:15 +0000
Date: Wed, 17 May 2017 08:30:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170517063051.eh3fp2qth3ntm7uf@pengutronix.de>
References: <1494587239-33771-1-git-send-email-d.schultz@phytec.de>
 <1494587239-33771-3-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1494587239-33771-3-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v3 3/4] arm: boards: phytec-som-am335x: Update boot scripts
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, May 12, 2017 at 01:07:18PM +0200, Daniel Schultz wrote:
> Expand the boot scripts with EMMC and add a default file source for
> expansions.
> 
> Removed "rw" and "rootwait" bootargs from existing boot scripts.
> Added "rootflags='data=journal'" bootarg to SD card boot script.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  .../defaultenv-physom-am335x/boot/emmc                  |  7 +++++++
>  .../phytec-som-am335x/defaultenv-physom-am335x/boot/mmc |  7 ++++---
>  .../defaultenv-physom-am335x/boot/nand                  |  4 +++-
>  .../phytec-som-am335x/defaultenv-physom-am335x/boot/net | 17 +++++++++++++++++
>  .../phytec-som-am335x/defaultenv-physom-am335x/boot/spi |  4 +++-
>  .../defaultenv-physom-am335x/init/bootsource            | 16 ++++++++++++----
>  6 files changed, 46 insertions(+), 9 deletions(-)
>  create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
>  create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/net
> 
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
> new file mode 100644
> index 0000000..6ad5f87
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
> @@ -0,0 +1,7 @@
> +#!/bin/sh
> +
> +[ -e /env/config-expansions ] && /env/config-expansions

What do you have in these config-expansions or what do you expect to be
there?

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
