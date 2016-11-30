Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x243.google.com ([2607:f8b0:400d:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cC7u4-0001Ce-0G
 for barebox@lists.infradead.org; Wed, 30 Nov 2016 16:38:41 +0000
Received: by mail-qk0-x243.google.com with SMTP id n204so22551606qke.2
 for <barebox@lists.infradead.org>; Wed, 30 Nov 2016 08:38:19 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1480504245-1822-3-git-send-email-d.schultz@phytec.de>
References: <1480504245-1822-1-git-send-email-d.schultz@phytec.de>
 <1480504245-1822-3-git-send-email-d.schultz@phytec.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 30 Nov 2016 08:38:17 -0800
Message-ID: <CAHQ1cqFWQo4E=NsxMxeFTvYWbimHx8+5UF5z=gZjP5SAHk=0dg@mail.gmail.com>
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
Subject: Re: [PATCH 3/3] arm: dts: Added ocotp support for i.MX6UL
To: Daniel Schultz <d.schultz@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Nov 30, 2016 at 3:10 AM, Daniel Schultz <d.schultz@phytec.de> wrote:
> Ocotp is available for the iMX6(q|sx|sl) SoCs. This patch will extend the
> iMX6ul DT from the mainline kernel to support the ocotp driver on the
> iMX6ul SoC.
>
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  arch/arm/dts/imx6ul-phytec-phycore-som.dts |  1 +
>  arch/arm/dts/imx6ul.dtsi                   | 20 ++++++++++++++++++++
>  2 files changed, 21 insertions(+)
>  create mode 100644 arch/arm/dts/imx6ul.dtsi
>
> diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dts b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
> index be4556a..285ea62 100644
> --- a/arch/arm/dts/imx6ul-phytec-phycore-som.dts
> +++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
> @@ -13,6 +13,7 @@
>  /dts-v1/;
>
>  #include <arm/imx6ul.dtsi>
> +#include "imx6ul.dtsi"
>
>  / {
>         model = "Phytec phyCORE-i.MX6 Ultra Lite SOM";
> diff --git a/arch/arm/dts/imx6ul.dtsi b/arch/arm/dts/imx6ul.dtsi
> new file mode 100644
> index 0000000..2e02d27
> --- /dev/null
> +++ b/arch/arm/dts/imx6ul.dtsi
> @@ -0,0 +1,20 @@
> +/*
> + * Copyright (C) 2016 PHYTEC Messtechnik GmbH
> + * Author: Daniel Schultz <d.schultz@phytec.de>
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +&aips2 {
> +       ocotp: ocotp-ctrl@21bc000 {
> +               compatible = "fsl,imx6ul-ocotp";
> +               reg = <0x021bc000 0x4000>;
> +               clocks = <&clks IMX6UL_CLK_OCOTP>;

Just as my two cents, I'd say that all of the above (that is
instantiation of OCOT on AIPS2) should go via Linux kernel and trickle
down via syncing with its .dts tree (<arm/imx6ul.dtsi> in particular).
At least that's what I had to do for OCOTP in Vybrid. Although your
case might be more complicated since there are no bindings for
"fsl,imx6ul-ocotp" upstream, so take this with a grain of salt

Cheers,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
