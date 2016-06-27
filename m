Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHSNx-00067e-SJ
 for barebox@lists.infradead.org; Mon, 27 Jun 2016 08:59:22 +0000
Received: from blala.de (localhost.localdomain [127.0.0.1])
 by vs81.iboxed.net (8.14.3/8.14.3/Debian-9.4) with ESMTP id u5R8v8jU026860
 for <barebox@lists.infradead.org>; Mon, 27 Jun 2016 10:57:08 +0200
Received: from localhost (akurz@localhost)
 by blala.de (8.14.3/8.14.3/Submit) with ESMTP id u5R8v7Dl026855
 for <barebox@lists.infradead.org>; Mon, 27 Jun 2016 10:57:07 +0200
Date: Mon, 27 Jun 2016 10:57:07 +0200 (CEST)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <1466950276-16649-1-git-send-email-akurz@blala.de>
Message-ID: <alpine.DEB.2.00.1606271055550.26422@blala.de>
References: <1466950276-16649-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] ARM: imx_v7_defconfig: enable LED_GPIO_OF
To: barebox@lists.infradead.org

Hi,
please note, there commit message contains a typo: s/iMX35qsb/iMX53qsb/
regards, Alexander

On Sun, 26 Jun 2016, Alexander Kurz wrote:

> GPIO leds are widely used in imx_v7 related dts files. Enable support
> to parse this data and enable blinking LED by defconfig on e.g. iMX35qsb.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/configs/imx_v7_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
> index 5ab3433..8594965 100644
> --- a/arch/arm/configs/imx_v7_defconfig
> +++ b/arch/arm/configs/imx_v7_defconfig
> @@ -164,6 +164,7 @@ CONFIG_MFD_MC9SDZ60=y
>  CONFIG_MFD_STMPE=y
>  CONFIG_LED=y
>  CONFIG_LED_GPIO=y
> +CONFIG_LED_GPIO_OF=y
>  CONFIG_LED_TRIGGERS=y
>  CONFIG_EEPROM_AT25=y
>  CONFIG_EEPROM_AT24=y
> -- 
> 2.1.4
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
