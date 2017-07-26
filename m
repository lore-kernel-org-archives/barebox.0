Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1daPbL-0007Kv-RA
 for barebox@lists.infradead.org; Wed, 26 Jul 2017 16:56:01 +0000
Date: Wed, 26 Jul 2017 18:55:35 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170726165535.GA28124@ravnborg.org>
References: <20170726163120.25952-1-andrew.smirnov@gmail.com>
 <20170726163120.25952-12-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170726163120.25952-12-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 11/11] ARM: i.MX: Add support for NXP i.MX7 SABRESD
 board
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey

On Wed, Jul 26, 2017 at 09:31:20AM -0700, Andrey Smirnov wrote:
> Add minimal code to support NXP i.MX7 SABRESD board. Tested to have
> working SD card and first Ethernet port as well as being able to boot
> upstream Linux kernel (4.12+).
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/Makefile                           |  1 +
>  arch/arm/boards/freescale-mx7-sabresd/Makefile     |  2 +
>  arch/arm/boards/freescale-mx7-sabresd/board.c      | 58 +++++++++++++++
>  .../flash-header-mx7-sabresd.imxcfg                | 82 ++++++++++++++++++++++
>  arch/arm/boards/freescale-mx7-sabresd/lowlevel.c   | 46 ++++++++++++
>  arch/arm/dts/Makefile                              |  2 +-
>  arch/arm/dts/imx7d-sdb.dts                         | 70 ++++++++++++++++++
>  arch/arm/mach-imx/Kconfig                          | 12 ++++
>  images/Makefile.imx                                |  5 ++
>  9 files changed, 277 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boards/freescale-mx7-sabresd/Makefile
>  create mode 100644 arch/arm/boards/freescale-mx7-sabresd/board.c
>  create mode 100644 arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
>  create mode 100644 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
>  create mode 100644 arch/arm/dts/imx7d-sdb.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 9bbdd684f..295a362bd 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -148,3 +148,4 @@ obj-$(CONFIG_MACH_WARP7)			+= element14-warp7/
>  obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
>  obj-$(CONFIG_MACH_ZII_RDU2)			+= zii-imx6q-rdu2/
>  obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
> +obj-$(CONFIG_MACH_FREESCALE_MX7_SABRESD)	+= freescale-mx7-sabresd/
This one slipped through - this should also be in alphabetic order.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
