Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUodR-00035X-LF
 for barebox@lists.infradead.org; Thu, 06 Dec 2018 08:03:53 +0000
Date: Thu, 6 Dec 2018 09:03:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181206080336.cjf244h57y56wnvh@pengutronix.de>
References: <1544023361576.94285@mixed-mode.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1544023361576.94285@mixed-mode.de>
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
Subject: Re: issues communicating with SPI on Raspberry Pi 3
To: Kai Che <Kai.Che@mixed-mode.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Dec 05, 2018 at 03:22:40PM +0000, Kai Che wrote:
> Hi all,
> 
> I'm trying to communicate with a TPM 2.0 (infineon,slb9670) over SPI on a Raspberry Pi 3 in barebox.
> 
> CONFIG_SPI=y
> CONFIG_DRIVER_SPI_GPIO=y
> CONFIG_CMD_SPI=y
> 
> are set in the barebox configuration and
> 
> dtparam=spi=on
> 
> is set in the /boot/config.txt on the raspberry pi.
> 
> But when checking /dev/ on barebox, there is nothing related to spi except cs0.
> 
> I would have expected something similiar to /dev/spidev0.0 showing up.

I you want to communicate with a SPI device directly without the driver,
there's the 'spi' command. It directly uses internal functions without
the need of any file in /dev/.

We don't have any bcm283x SPI driver in barebox. You probably already
noticed that and enable the spi-gpio driver for this reason. However,
you'll need the appropriate device nodes (Compatible to "spi-gpio")
and the pinctrl setup to make this work.

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
