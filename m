Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmZZb-0002Ob-3J
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 07:37:16 +0000
Date: Thu, 24 Jan 2019 08:37:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190124073712.pirxmdvonmvnbolg@pengutronix.de>
References: <20190123151620.4398-1-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190123151620.4398-1-vivien.didelot@gmail.com>
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
Subject: Re: [PATCH v2 1/2] ARM: zii-vf610-dev: fix boot from SD
To: Vivien Didelot <vivien.didelot@gmail.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Wed, Jan 23, 2019 at 10:16:19AM -0500, Vivien Didelot wrote:
> Since 5f99a8d40305 ("dts: VFxxx: Add aliases for ESDHC controllers"),
> the SD card slot has a consistent name across all ZII Dev platforms,
> including CFU1. They all use mmc1 instead of mci0 or mci1.
> 
> This allows us to completely drop the init scripts from the default
> ZII VF610 Dev environment, and fix the boot/sd script.
> 
> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
> ---
>  .../zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd  |  8 ++++++--
>  .../defaultenv-zii-vf610-dev/init/automount-sd      | 13 -------------
>  .../defaultenv-zii-vf610-dev/init/choose-dtb        |  4 ----
>  3 files changed, 6 insertions(+), 19 deletions(-)
>  delete mode 100644 arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd
>  delete mode 100644 arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/choose-dtb

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
