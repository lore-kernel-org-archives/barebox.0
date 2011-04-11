Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9G6H-0005Ce-VR
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 12:20:15 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Apr 2011 14:19:27 +0200
References: <6EE7D1502C48E44E92DCADF9DD3E0DB90187A40D5121@SRV-VS06.TELEVIC.COM>
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB90187A40D5121@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201104111419.27542.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: lcd clock
To: barebox@lists.infradead.org

Vanalme Filip wrote:
> Is there any specific reason why the (i.MX27) LCDC clocks are disabled in
> imxfb_probe() (drivers\imx.c) ?
>
> #ifdef CONFIG_ARCH_IMX27
> PCCR0 &= ~PCCR0_LCDC_EN;
> PCCR1 &= ~PCCR1_HCLK_LCDC;
> #endif
>
> I would have expected the clocks to be enabled in that routine.
>
> I'm experimenting a little with Barebox's 'bmp' command. Although the
> command did not return any error, I did not have any output on my lcd. Then
> I noticed that the LCDC clocks were not enabled. If the clocks were not
> enabled by default in the probe function, I would expect the enabling in
> the bmp command code, e.g. with FBIO_ENABLE ioctl command. But, as far as I
> can see, FBIO_ENABLE is not executed in the bmp command code.

Try within barebox

fb0.enable=1

This should enable the LCD controller on demand.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
