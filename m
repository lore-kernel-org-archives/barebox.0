Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHSRm-0008Rg-0M
 for barebox@lists.infradead.org; Mon, 27 Jun 2016 09:03:15 +0000
Date: Mon, 27 Jun 2016 11:02:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160627090251.GB20657@pengutronix.de>
References: <1466950276-16649-1-git-send-email-akurz@blala.de>
 <alpine.DEB.2.00.1606271055550.26422@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.00.1606271055550.26422@blala.de>
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
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 27, 2016 at 10:57:07AM +0200, Alexander Kurz wrote:
> Hi,
> please note, there commit message contains a typo: s/iMX35qsb/iMX53qsb/
> regards, Alexander

Applied with the typo fixed, thanks

Sascha

> 
> On Sun, 26 Jun 2016, Alexander Kurz wrote:
> 
> > GPIO leds are widely used in imx_v7 related dts files. Enable support
> > to parse this data and enable blinking LED by defconfig on e.g. iMX35qsb.
> > 
> > Signed-off-by: Alexander Kurz <akurz@blala.de>
> > ---
> >  arch/arm/configs/imx_v7_defconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
> > index 5ab3433..8594965 100644
> > --- a/arch/arm/configs/imx_v7_defconfig
> > +++ b/arch/arm/configs/imx_v7_defconfig
> > @@ -164,6 +164,7 @@ CONFIG_MFD_MC9SDZ60=y
> >  CONFIG_MFD_STMPE=y
> >  CONFIG_LED=y
> >  CONFIG_LED_GPIO=y
> > +CONFIG_LED_GPIO_OF=y
> >  CONFIG_LED_TRIGGERS=y
> >  CONFIG_EEPROM_AT25=y
> >  CONFIG_EEPROM_AT24=y
> > -- 
> > 2.1.4
> > 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
