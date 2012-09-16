Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDADW-0005hl-Va
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 08:28:40 +0000
Date: Sun, 16 Sep 2012 10:28:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120916082836.GE6180@pengutronix.de>
References: <1347717626-19970-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347717626-19970-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] defconfig: substitute '-' to '_' in defconfig name
 so MAKEALL can work
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

You should rather fix the MAKEALL script.

Sascha

On Sat, Sep 15, 2012 at 04:00:26PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  .../{freescale-mx6-arm2_defconfig => freescale_mx6_arm2_defconfig}     |    0
>  ...scale-mx6-sabrelite_defconfig => freescale_mx6_sabrelite_defconfig} |    0
>  .../configs/{imx233-olinuxino_defconfig => imx233_olinuxino_defconfig} |    0
>  arch/mips/configs/{dlink-dir-320_defconfig => dlink_dir_320_defconfig} |    0
>  arch/mips/configs/{qemu-malta_defconfig => qemu_malta_defconfig}       |    0
>  5 files changed, 0 insertions(+), 0 deletions(-)
>  rename arch/arm/configs/{freescale-mx6-arm2_defconfig => freescale_mx6_arm2_defconfig} (100%)
>  rename arch/arm/configs/{freescale-mx6-sabrelite_defconfig => freescale_mx6_sabrelite_defconfig} (100%)
>  rename arch/arm/configs/{imx233-olinuxino_defconfig => imx233_olinuxino_defconfig} (100%)
>  rename arch/mips/configs/{dlink-dir-320_defconfig => dlink_dir_320_defconfig} (100%)
>  rename arch/mips/configs/{qemu-malta_defconfig => qemu_malta_defconfig} (100%)
> 
> diff --git a/arch/arm/configs/freescale-mx6-arm2_defconfig b/arch/arm/configs/freescale_mx6_arm2_defconfig
> similarity index 100%
> rename from arch/arm/configs/freescale-mx6-arm2_defconfig
> rename to arch/arm/configs/freescale_mx6_arm2_defconfig
> diff --git a/arch/arm/configs/freescale-mx6-sabrelite_defconfig b/arch/arm/configs/freescale_mx6_sabrelite_defconfig
> similarity index 100%
> rename from arch/arm/configs/freescale-mx6-sabrelite_defconfig
> rename to arch/arm/configs/freescale_mx6_sabrelite_defconfig
> diff --git a/arch/arm/configs/imx233-olinuxino_defconfig b/arch/arm/configs/imx233_olinuxino_defconfig
> similarity index 100%
> rename from arch/arm/configs/imx233-olinuxino_defconfig
> rename to arch/arm/configs/imx233_olinuxino_defconfig
> diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/configs/dlink_dir_320_defconfig
> similarity index 100%
> rename from arch/mips/configs/dlink-dir-320_defconfig
> rename to arch/mips/configs/dlink_dir_320_defconfig
> diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu_malta_defconfig
> similarity index 100%
> rename from arch/mips/configs/qemu-malta_defconfig
> rename to arch/mips/configs/qemu_malta_defconfig
> -- 
> 1.7.10.4
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
