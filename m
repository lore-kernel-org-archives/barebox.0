Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bzUYp-0005xq-8d
 for barebox@lists.infradead.org; Wed, 26 Oct 2016 20:12:31 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 26 Oct 2016 20:12:07 +0000
Message-ID: <1477512729.14501.14.camel@rtred1test09.kymeta.local>
References: <20161017075052.30802-1-s.trumtrar@pengutronix.de>
 <20161017075052.30802-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20161017075052.30802-3-s.trumtrar@pengutronix.de>
Content-Language: en-US
Content-ID: <DABDC4EFA8FFB848AD5113484C7D62ED@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH v3 3/3] ARM: socfpga: dtsi: add dw-wdt reset lines
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, 2016-10-17 at 09:50 +0200, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/dts/socfpga.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
> index d16758fdab46..66d7f21dc6a3 100644
> --- a/arch/arm/dts/socfpga.dtsi
> +++ b/arch/arm/dts/socfpga.dtsi
> @@ -49,3 +49,13 @@
>  &f2s_sdram_ref_clk {
>  	clock-frequency = <0>;
>  };
> +
> +&watchdog0 {
> +	resets = <&rst L4WD0_RESET>;
> +	reset-names = "dw-wdt";

This is the official binding?  The reset-names property is supposed to
be the name of the reset from the perspective of the device being
described, e.g. the watchdog.  Not the name from the perspective of the
reset controller.  Rather than "dw-wdt", the name should something like
"reset", which clearly doesn't add much information, which is why the
reset-names property is supposed to be optional.

> +};
> +
> +&watchdog1 {
> +	resets = <&rst L4WD1_RESET>;
> +	reset-names = "dw-wdt";
> +};

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
