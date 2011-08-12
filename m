Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QrmBK-0002JG-Pq
	for barebox@lists.infradead.org; Fri, 12 Aug 2011 07:29:27 +0000
Date: Fri, 12 Aug 2011 09:29:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110812072924.GL31404@pengutronix.de>
References: <201108111445.05457.jbe@pengutronix.de>
	<20110811152832.GH22213@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110811152832.GH22213@game.jcrosoft.org>
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
Subject: Re: [barebox-next] Enabling SPI support for the PCM043 platform
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 11, 2011 at 05:28:32PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 14:45 Thu 11 Aug     , Juergen Beisert wrote:
> > Hi,
> > 
> > when I enable the SPI support for the "pcm043_defconfig" the build ends with:
> > 
> >   CC      drivers/spi/imx_spi.o
> > drivers/spi/imx_spi.c:111:1: error: expected identifier before '}' token
> > 
> > This is because the enum list is empty. Can someone tell me, what I have to 
> > add in the "/drivers/spi/Kconfig" to make it work in i.MX35?

Currently the spi driver only supports i.MX27 and i.MX51. Have a look at
the kernel driver to see what's missing. Someone at Freescale hates us
software guys and turns the spi register layout upside down with each new
SoC release.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
