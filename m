Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0b-00176a03.pphosted.com ([67.231.157.48])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z83WD-0001vD-Kr
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 09:32:26 +0000
Received: from pps.filterd (m0048206.ppops.net [127.0.0.1])
 by m0048206.ppops.net-00176a03. (8.15.0.59/8.15.0.59) with SMTP id
 t5P9W2g6007560
 for <barebox@lists.infradead.org>; Thu, 25 Jun 2015 05:32:02 -0400
Received: from cinmlip10.e2k.ad.ge.com (n165-156-000-000.static.ge.com
 [165.156.4.1] (may be forged))
 by m0048206.ppops.net-00176a03. with ESMTP id 1v79txhj55-1
 (version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Thu, 25 Jun 2015 05:32:02 -0400
Received: from [3.26.68.149] (unknown [3.26.68.149])
 by selma.edi.geip.ge.com (Postfix) with ESMTP id 2F7C6E2185
 for <barebox@lists.infradead.org>; Thu, 25 Jun 2015 10:32:00 +0100 (BST)
Message-ID: <558BCA90.2050105@ge.com>
Date: Thu, 25 Jun 2015 10:32:00 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1435150649-10266-1-git-send-email-alllecs@yandex.ru>
 <1435150649-10266-2-git-send-email-alllecs@yandex.ru>
In-Reply-To: <1435150649-10266-2-git-send-email-alllecs@yandex.ru>
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
Subject: Re: [RFC V2 1/3] common: move DDR_SPD to common/Kconfig
To: barebox@lists.infradead.org

There may be an issue in the future. DDR_SPD selects the PPC Freescale
DDR driver support (my fault for this bad choice). If somebody was to
add and build a PPC machine with DDR support that is none of the
Freescale boards then the Freescale DDR driver will be selected too.

To be safe, something like that could be used:

diff --git a/arch/ppc/mach-mpc85xx/Makefile b/arch/ppc/mach-mpc85xx/Makefile
index 3e64617..a7453f7 100644
--- a/arch/ppc/mach-mpc85xx/Makefile
+++ b/arch/ppc/mach-mpc85xx/Makefile
@@ -9,5 +9,6 @@ obj-y                   += fsl_i2c.o
 obj-$(CONFIG_MP)       += mp.o
 obj-$(CONFIG_OFTREE)   += fdt.o
 obj-$(CONFIG_DRIVER_NET_GIANFAR) += eth-devices.o
-obj-$(CONFIG_DDR_SPD)  += ../ddr-8xxx/
+obj-$(CONFIG_FSL_DDR2) += ../ddr-8xxx/
+obj-$(CONFIG_FSL_DDR3) += ../ddr-8xxx/


On 24/06/2015 13:57, Alexander Smirnov wrote:
> This patch makes it possible to use ddr_spd-related
> routines in any arch not only in ppc.
> 
> Signed-off-by: Alexander Smirnov <alllecs@yandex.ru>
> ---
>  arch/ppc/mach-mpc85xx/Kconfig | 4 ----
>  common/Kconfig                | 4 ++++
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/ppc/mach-mpc85xx/Kconfig
> index e29be9c..aa518b9 100644
> --- a/arch/ppc/mach-mpc85xx/Kconfig
> +++ b/arch/ppc/mach-mpc85xx/Kconfig
> @@ -81,10 +81,6 @@ config P1022
>  config MPC8544
>  	bool
>  
> -config DDR_SPD
> -	bool
> -	select CRC16
> -
>  config FSL_DDR2
>  	bool
>  
> diff --git a/common/Kconfig b/common/Kconfig
> index 925fe4b..91e4ef3 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -941,3 +941,7 @@ endmenu
>  
>  config HAS_DEBUG_LL
>  	bool
> +
> +config DDR_SPD
> +	bool
> +	select CRC16
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
