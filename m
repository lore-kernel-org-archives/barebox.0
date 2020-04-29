Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlOd-0008CK-TY
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 12:01:02 +0000
References: <20200429112914.5751-1-s.hauer@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <72aafb2f-d612-23b4-f1b3-d42c5b5ce503@phytec.de>
Date: Wed, 29 Apr 2020 14:00:55 +0200
MIME-Version: 1.0
In-Reply-To: <20200429112914.5751-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ARM: Phytec phyCORE i.MX6: delete wrong memory node
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Christian Hemp <christian.hemp@gmail.com>

Hi Sascha,

On 29.04.20 13:29, Sascha Hauer wrote:
> The phyCORE i.MX6 has two memory nodes in the device tree. /memory comes

Here and in the subject line you mention the phyCORE-i.MX 6 but it is 
actually the phyFLEX which you change.

Besides that,
Reviewed-by: Stefan Riedmueller <s.riedmueller@phytec.de>

> from the barebox dtsi file and contains dummy values. This is
> unnecessary, barebox will create a memory node when booting the kernel.
> The other one comes from the Kernel dtsi and causes more harm. The
> memory in the node has a size of 2GiB. Not all boards have so much
> memory, since 8226f7f909 ("of: base: parse all available memory nodes")
> this node is no longer ignored and now all boards are assumed to have
> 2GiB of memory. Remove the node using /delete-node/
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 5 +----
>   1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> index 841ad653b2..3cb8b3782a 100644
> --- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> @@ -12,10 +12,7 @@
>   #include <arm/imx6qdl-phytec-pfla02.dtsi>
>   
>   / {
> -	memory {
> -		/* let barebox fill the memory node */
> -		reg = <0 0>;
> -	};
> +	/delete-node/ memory@10000000;
>   
>   	chosen {
>   		environment-nand {
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
