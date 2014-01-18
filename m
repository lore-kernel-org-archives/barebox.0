Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4aLO-00018b-3l
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 18:10:06 +0000
Received: by mail-wi0-f178.google.com with SMTP id cc10so1883200wib.5
 for <barebox@lists.infradead.org>; Sat, 18 Jan 2014 10:09:43 -0800 (PST)
Date: Sat, 18 Jan 2014 19:09:34 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140118180932.GA3624@omega>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
 <1389971012-22977-21-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1389971012-22977-21-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 20/22] ARM: dts: phycard-i.MX27: Add sdhc2 pinctrl
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Fri, Jan 17, 2014 at 04:03:30PM +0100, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/dts/imx27-phytec-phycard-s-rdk.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts b/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts
> index 0d65023..789ce3f 100644
> --- a/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts
> +++ b/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts
> @@ -83,6 +83,10 @@
>  			fsl,pins = <MX27_OWIRE1_PINGRP1>;
>  		};
>  
> +		pinctrl_sdhc2: sdhc3grp {

don't know if this is a typo, but maybe we need a s/sdhc3grp/sdhc2grp/g
here. I think it works anyway with my knowledge about devicetrees :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
