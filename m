Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkmhu-0001Yv-Fg
 for barebox@lists.infradead.org; Tue, 09 Jul 2019 09:46:43 +0000
Date: Tue, 9 Jul 2019 11:46:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190709094640.n2hrjjed5ghywsea@pengutronix.de>
References: <14d5d82d-ddb0-89e2-84c0-00cb980dda2a@data-modul.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14d5d82d-ddb0-89e2-84c0-00cb980dda2a@data-modul.com>
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
Subject: Re: eMMC probe in imx8mm
To: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Reyhaneh,

On Fri, Jul 05, 2019 at 02:04:08PM +0000, Yazdani, Reyhaneh wrote:
> Hello everyone,
> 
> I have brought up Barebox on imx8mm-evk board. Barebox is programmed on SD-card.
> In the Barebox console, when I probe eMMC, I will receive I/O error.
> 
> Therefore, similar to the imx8mq device tree, I added clk node to assign
> clock-parent and clock-rates of the assigned clock of the eMMC (usdhc3):
> 
> &clk {
>         assigned-clocks =  <&clk IMX8MM_CLK_USDHC3_ROOT>;
>         assigned-clock-parents =  <&clk IMX8MM_SYS_PLL1_400M>;
>         assigned-clock-rates = <200000000>;
> };
> 
> Now, eMMC probe works and eMMC is detected. But when I want to boot from eMMC,
> 
> Loading ARM aarch64 Linux image '/mnt/mmc2/Image' takes about 13-14 seconds!!

How big is this image?

Is only the eMMC card so slow or the SD card aswell?

Does clk_dump give you any clue which clock rate the usdhc controller
actually has (and is it the same as the other controller with the SD
card)?

Just some questions, I am not very familiar with the i.MX8 clock tree.

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
