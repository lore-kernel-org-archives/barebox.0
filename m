Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fx6Wn-0007G4-Pk
 for barebox@lists.infradead.org; Tue, 04 Sep 2018 08:17:39 +0000
Date: Tue, 4 Sep 2018 10:17:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180904081725.j2n7rgdl5fy7y4wv@pengutronix.de>
References: <20180903105715.24263-1-m.niestroj@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180903105715.24263-1-m.niestroj@grinn-global.com>
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
Subject: Re: [PATCH 0/5] ARM: imx: HAB improvements
To: Marcin Niestroj <m.niestroj@grinn-global.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2018 at 12:57:10PM +0200, Marcin Niestroj wrote:
> Hi,
> 
> This is a set of patches with HAB-related improvements. Basically it is
> updated version of RFC [1] I've posted some time ago.
> 
> Changes RFC -> v1:
>  * drop "[RFC PATCH 2/5] scripts: imx: Support CST version >= 2.3.2",
>    as there is new implementation in the mailing list already [2]
>  * add "[PATCH 5/5] scripts: imx: Do not include autoconf.h"
>  * update "[PATCH 3/5] scripts: imx: Support encrypted boot with HABv4"
>    and "[PATCH 4/5] images: imx: Add targets for signed encrypted images"
> 
> [1] https://www.spinics.net/lists/u-boot-v2/msg33203.html
> [2] https://www.spinics.net/lists/u-boot-v2/msg34332.html
> 
> Marcin Niestroj (5):
>   scripts: imx: add optional argument to hab_blocks command
>   ARM: imx: Update default image certificate for CST tool
>   scripts: imx: Support encrypted boot with HABv4
>   images: imx: Add targets for signed encrypted images
>   scripts: imx: Do not include autoconf.h

Applied 1-4 for now. The fifths patch needs some adjustments.

Sascha

> 
>  arch/arm/mach-imx/Kconfig                     |   2 +-
>  .../mach-imx/include/mach/habv4-imx6-gencsf.h |  13 ++
>  arch/arm/mach-imx/include/mach/imx-header.h   |  10 +
>  images/Makefile.imx                           |   8 +
>  scripts/Makefile.lib                          |   1 -
>  scripts/imx/imx-image.c                       |  27 ++-
>  scripts/imx/imx.c                             | 183 +++++++++++++++++-
>  7 files changed, 231 insertions(+), 13 deletions(-)
> 
> -- 
> 2.18.0
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
