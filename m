Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tdebl-0003S7-O4
 for barebox@lists.infradead.org; Wed, 28 Nov 2012 10:11:10 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 9E29EFF92DE
 for <barebox@lists.infradead.org>; Wed, 28 Nov 2012 11:22:26 +0100 (CET)
Date: Wed, 28 Nov 2012 11:11:04 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20121128111104.75550da5@eb-e6520>
In-Reply-To: <1354096760-14409-4-git-send-email-s.hauer@pengutronix.de>
References: <1354096760-14409-1-git-send-email-s.hauer@pengutronix.de>
 <1354096760-14409-4-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/4] ARM i.MX: Add Garz+Fricke Vincell Board support
To: barebox@lists.infradead.org

Hi Sascha,

Le Wed, 28 Nov 2012 10:59:19 +0100,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/board=
s/freescale-mx53-loco/board.c
> index 38ece23..5846725 100644
> --- a/arch/arm/boards/freescale-mx53-loco/board.c
> +++ b/arch/arm/boards/freescale-mx53-loco/board.c
> @@ -194,7 +194,7 @@ static int loco_devices_init(void)
>  	armlinux_set_architecture(MACH_TYPE_MX53_LOCO);
>  =

>  	imx53_bbu_internal_mmc_register_handler("mmc", "/dev/disk0",
> -		BBU_HANDLER_FLAG_DEFAULT, dcd_entry, sizeof(dcd_entry));
> +		BBU_HANDLER_FLAG_DEFAULT, dcd_entry, sizeof(dcd_entry), 0);
>  =

is this change expected in this patch ?

> diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx=
-bbu-internal.c
> index 05aa5f1..cfde75d 100644
> --- a/arch/arm/mach-imx/imx-bbu-internal.c
> +++ b/arch/arm/mach-imx/imx-bbu-internal.c
> @@ -15,7 +15,7 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   */
> -
> +#define DEBUG

same here.

>  #define IMX_INTERNAL_NAND_BBU
>  =

>  #include <common.h>
> diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
> index 276b723..54d27c8 100644
> --- a/drivers/mfd/mc34704.c
> +++ b/drivers/mfd/mc34704.c
> @@ -25,7 +25,7 @@
>  #include <i2c/i2c.h>
>  #include <mfd/mc34704.h>
>  =

> -#define DRIVERNAME		"mc34704"
> +#define DRIVERNAME		"da9053"
>  =

>  #define to_mc34704(a)		container_of(a, struct mc34704, cdev)
>  =

and here ;-)

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
