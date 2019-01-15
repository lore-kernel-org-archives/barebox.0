Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjCno-00028S-IV
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 00:42:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id s12so1062377wrt.4
 for <barebox@lists.infradead.org>; Mon, 14 Jan 2019 16:42:00 -0800 (PST)
MIME-Version: 1.0
References: <20190114164211.10871-1-l.stach@pengutronix.de>
 <20190114164211.10871-8-l.stach@pengutronix.de>
In-Reply-To: <20190114164211.10871-8-l.stach@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 14 Jan 2019 16:41:47 -0800
Message-ID: <CAHQ1cqGLuhRxzRAG3t=dokyetzgo6Ws27icSeyg5UTe6R0btPQ@mail.gmail.com>
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
Subject: Re: [PATCH 8/8] ARM: imx8mq: use upstream devicetree
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

"

On Mon, Jan 14, 2019 at 8:43 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> The basic DT is upstream now, so we can now reuse this in Barebox.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/dts/imx8mq-evk.dts              | 427 +------------
>  arch/arm/dts/imx8mq-pinfunc.h            | 623 ------------------
>  arch/arm/dts/imx8mq.dtsi                 | 771 +++--------------------
>  include/dt-bindings/clock/imx8mq-clock.h | 629 ------------------
>  4 files changed, 87 insertions(+), 2363 deletions(-)
>  delete mode 100644 arch/arm/dts/imx8mq-pinfunc.h
>  delete mode 100644 include/dt-bindings/clock/imx8mq-clock.h
>
> diff --git a/arch/arm/dts/imx8mq-evk.dts b/arch/arm/dts/imx8mq-evk.dts
> index 56a35173a04f..9593c555f926 100644
> --- a/arch/arm/dts/imx8mq-evk.dts
> +++ b/arch/arm/dts/imx8mq-evk.dts
> @@ -6,16 +6,11 @@
>
>  /dts-v1/;
>
> +#include <arm64/freescale/imx8mq-evk.dts>
>  #include "imx8mq.dtsi"
> -#include "imx8mq-ddrc.dtsi"
>

The above include was added as a part of 3da52f308a ("ARM: i.MX:
esdctl: Add memory size detection for i.MX8MQ") in order to facilitate
memory size detection. I don't think it should be removed, since that
functionality isn't covered by upstream DTS. Moreso,
"imx8mq-ddrc.dtsi" needs to be updated to reference "soc@0" instead of
"peripherals@0".

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
