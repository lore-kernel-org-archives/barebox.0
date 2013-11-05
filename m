Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdbKD-0001A6-K6
 for barebox@lists.infradead.org; Tue, 05 Nov 2013 07:45:22 +0000
Date: Tue, 5 Nov 2013 08:44:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131105074459.GA24559@pengutronix.de>
References: <52778B89.3000208@kiwigrid.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52778B89.3000208@kiwigrid.com>
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
Subject: Re: barebox on i.MX53 in serial downloader boot mode
To: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

Hi Wjatscheslaw,

On Mon, Nov 04, 2013 at 12:56:57PM +0100, Wjatscheslaw Stoljarski (Slawa) wrote:
> Hi,
> 
> has anyone tried to start barebox on i.MX53 in 11 boot mode (serial
> downloader)? I've tried on Freescale Loco board with pmic da9053,
> but without success. In 00 boot mode (internal boot) works
> perfectly. U-Boot works in both modes. DCD in u-boot and in barebox
> is the same. Even I can turn on LEDs with DCD in 11 boot mode on
> Loco.

The imx-usb-loader tool generally works here. I don't have a DA9053
based Loco here. It may be that there is some bug in the code preventing
this board to run.

I just did a quick:

git checkout master
make imx_v7_defconfig
cat images/barebox-freescale-imx53-loco.img > /dev/sde

The resulting SD card works here.

Could you try booting from SD card? Does that work?

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
