Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo5.mail-out.ovh.net ([178.33.45.10]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VC9ST-0003yM-JK
 for barebox@lists.infradead.org; Wed, 21 Aug 2013 14:32:33 +0000
Received: from mail609.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 19674FFB49C
 for <barebox@lists.infradead.org>; Wed, 21 Aug 2013 16:32:02 +0200 (CEST)
Date: Wed, 21 Aug 2013 16:32:45 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130821143245.GJ19197@ns203013.ovh.net>
References: <1376989634-13909-1-git-send-email-s.hauer@pengutronix.de>
 <1376989634-13909-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1376989634-13909-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [SPAM] [PATCH 2/2] ARM: dts: imx53 qsb: remove wrong memory bank
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:07 Tue 20 Aug     , Sascha Hauer wrote:
> The i.MX53 qsb has 1GiB of memory, but it's divided into two non
> contigous banks. Remove the wrong memory node since it's overwritten
> with the correct values during wuntime anyway.
wuntime update is cool ;)
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/dts/imx53-qsb.dts | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/arch/arm/dts/imx53-qsb.dts b/arch/arm/dts/imx53-qsb.dts
> index 3be4ff2..f988ca9 100644
> --- a/arch/arm/dts/imx53-qsb.dts
> +++ b/arch/arm/dts/imx53-qsb.dts
> @@ -26,10 +26,6 @@
>  		};
>  	};
>  
> -	memory {
> -		reg = <0x70000000 0x40000000>;
> -	};
> -
>  	display@di0 {
>  		compatible = "fsl,imx-parallel-display";
>  		crtcs = <&ipu 0>;
> -- 
> 1.8.4.rc3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
