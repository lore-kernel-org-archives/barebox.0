Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vdzvs-0001bP-Ua
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 10:01:53 +0000
Date: Wed, 6 Nov 2013 11:01:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131106100127.GK24559@pengutronix.de>
References: <52778B89.3000208@kiwigrid.com>
 <20131105074459.GA24559@pengutronix.de>
 <5278BED1.1010805@kiwigrid.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5278BED1.1010805@kiwigrid.com>
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

On Tue, Nov 05, 2013 at 10:48:01AM +0100, Wjatscheslaw Stoljarski (Slawa) wrote:
> Hi Sascha,
> 
> On 11/05/2013 08:44 AM, Sascha Hauer wrote:
> >Hi Wjatscheslaw,
> >
> >On Mon, Nov 04, 2013 at 12:56:57PM +0100, Wjatscheslaw Stoljarski (Slawa) wrote:
> >>Hi,
> >>
> >>has anyone tried to start barebox on i.MX53 in 11 boot mode (serial
> >>downloader)? I've tried on Freescale Loco board with pmic da9053,
> >>but without success. In 00 boot mode (internal boot) works
> >>perfectly. U-Boot works in both modes. DCD in u-boot and in barebox
> >>is the same. Even I can turn on LEDs with DCD in 11 boot mode on
> >>Loco.
> >The imx-usb-loader tool generally works here.
> Yes, I can with the imx-usb-loader boot a u-boot image, but not barebox.
> >I don't have a DA9053
> >based Loco here. It may be that there is some bug in the code preventing
> >this board to run.
> May be. But I have the exact same result with a custom board that
> uses the MC34709VK PMIC.
> >I just did a quick:
> >
> >git checkout master
> >make imx_v7_defconfig
> >cat images/barebox-freescale-imx53-loco.img > /dev/sde
> >
> >The resulting SD card works here.
> >
> >Could you try booting from SD card? Does that work?
> In 00 boot mode it boots fine from SD and from USB. I just checked
> again. I have trouble with the 11 boot mode.

Hm, sorry, I'm out of ideas. Does the output of imx-usb-loader give a
clue? Are the output messages different between '00' and '11' bootmode?
(try the -v option to imx-usb-loader)

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
