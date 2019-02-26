Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyhZL-0007SE-Ht
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 18:35:10 +0000
References: <20190226130529.12517-1-m.niestroj@grinn-global.com>
From: =?UTF-8?Q?Bartosz_Bi=c5=82as?= <b.bilas@grinn-global.com>
Message-ID: <d89907aa-6202-352b-a228-40365519665a@grinn-global.com>
Date: Tue, 26 Feb 2019 19:35:13 +0100
MIME-Version: 1.0
In-Reply-To: <20190226130529.12517-1-m.niestroj@grinn-global.com>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: i.MX6UL: liteSOM: depend on DDR controller settings
To: Marcin Niestroj <m.niestroj@grinn-global.com>, barebox@lists.infradead.org

Tested-by: Bartosz Bilas <b.bilas@grinn-global.com>

On 26.02.2019 14:05, Marcin Niestroj wrote:
> Initially we depended on DDR controller settings for liteSOM and liteboard. With
> 33fdc89d4cbd ("dts: update to v5.0-rc1") a `device_type = "memory";` property
> was added to imx6ul-litesom.dtsi file, which causes "ram0" to be added with
> 512MB size (value in dtsi) instead of the real 256MB size that is configured in
> barebox-grinn-liteboard-256mb.img. As a result Linux kernel fails to boot.
>
> Lets depend on DDR controller settings, by removing whole `/memory` node from
> device tree. This makes barebox-grinn-liteboard-256mb.img able to boot Linux
> kernel once again.
>
> Reported-by: Bartosz Bilas <b.bilas@grinn-global.com>
> Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
> ---
>   arch/arm/dts/imx6ul-liteboard.dts | 1 +
>   arch/arm/dts/imx6ul-litesom.dtsi  | 8 ++++++++
>   2 files changed, 9 insertions(+)
>   create mode 100644 arch/arm/dts/imx6ul-litesom.dtsi
>
> diff --git a/arch/arm/dts/imx6ul-liteboard.dts b/arch/arm/dts/imx6ul-liteboard.dts
> index 03a4bfc78..eb34e11dd 100644
> --- a/arch/arm/dts/imx6ul-liteboard.dts
> +++ b/arch/arm/dts/imx6ul-liteboard.dts
> @@ -42,6 +42,7 @@
>    */
>   
>   #include <arm/imx6ul-liteboard.dts>
> +#include "imx6ul-litesom.dtsi"
>   
>   / {
>   	chosen {
> diff --git a/arch/arm/dts/imx6ul-litesom.dtsi b/arch/arm/dts/imx6ul-litesom.dtsi
> new file mode 100644
> index 000000000..8b73bfdd6
> --- /dev/null
> +++ b/arch/arm/dts/imx6ul-litesom.dtsi
> @@ -0,0 +1,8 @@
> +/*
> + * Include file to switch board DTS from using hardcoded memory node
> + * to dynamic memory size detection based on DDR controller settings
> + */
> +
> +/ {
> +	/delete-node/ memory@80000000;
> +};

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
