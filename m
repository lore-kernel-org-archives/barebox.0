Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SrqUu-00085h-MG
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 13:10:29 +0000
Date: Thu, 19 Jul 2012 15:10:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120719131024.GX30009@pengutronix.de>
References: <1342616327-2765-1-git-send-email-J.Kilb@phytec.de>
 <1342616327-2765-3-git-send-email-J.Kilb@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342616327-2765-3-git-send-email-J.Kilb@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] pca-a-l1: added memory device for int. 60kB RAM.
To: Juergen Kilb <J.Kilb@phytec.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

On Wed, Jul 18, 2012 at 02:58:46PM +0200, Juergen Kilb wrote:
> =

> Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
> ---
>  arch/arm/boards/phycard-a-l1/pca-a-l1.c         |    2 ++
>  arch/arm/mach-omap/include/mach/omap3-silicon.h |    1 +
>  2 files changed, 3 insertions(+), 0 deletions(-)
> =

> diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/ph=
ycard-a-l1/pca-a-l1.c
> index 1cc2815..8fae405 100644
> --- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> +++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> @@ -292,6 +292,8 @@ static int pcaal1_mem_init(void)
>  	 */
>  	gpmc_generic_init(0x10);
>  #endif
> +	add_mem_device("sram0", OMAP_SRAM_BASE, 60 * SZ_1K,
> +				   IORESOURCE_MEM_WRITEABLE);

Isn't this 64K? Or does the ROM code store stuff in the upper 4k which
you want to preserve?

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
