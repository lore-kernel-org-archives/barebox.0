Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hC8Og-0005Ke-OT
 for barebox@lists.infradead.org; Thu, 04 Apr 2019 19:51:40 +0000
Date: Thu, 4 Apr 2019 21:51:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190404195131.i2uqsk6xiaxtdai4@pengutronix.de>
References: <CAEp+FuB1y=LgWF6ZDV2JhT+=Qch1H9f6zGqLPgb4Em4E0wriRw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEp+FuB1y=LgWF6ZDV2JhT+=Qch1H9f6zGqLPgb4Em4E0wriRw@mail.gmail.com>
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
Subject: Re: ECC nand 74 code error in barebox 2018.04.10
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 03, 2019 at 05:31:09PM +0200, Mihaita Ivascu wrote:
> Hello,
> 
>    I have the following situation:
> 
>    I use imx6ul platforms.
>    kernel 4.9.11 from NXP
>    barebox 2018.04.10
> 
>    I create and update an FIT image(*.itb) using
> ubiformat/ubiattach/ubimkvol/ubiupdatevol commands
> 
>    I also do this operation from Linux once the kernel was booted.
>    Everything worked for a while but at some point the FITIMAGE size
> increased over 50 MB and I adapted the nand table in device tree
> sources.
> 
>   Now the image update from barebox is still working, I update, the
> kernel loads and then at the next reboot the target boots correctly.
>   But if do the the FIt image update from linux, the update is
> finished without warnings but at the next reboot, the barebox will
> complained as listed in the attachment and the target won't boot from
> nand anymore. Then i have to do the update again but only from
> barebox.
> 
>   nand partition table is the same in kernel and barebox dts.
>   But for images larger than 50 MB somehow if I update from linux, the
> barebox will complain about ECC code 74.
>   I have enabled the other ECC options(software with/without BCH,
> hardware) both in barebox and linux but no change.
>   I don't know if/how should I play with the PEB settings.
> 
>  Does anybody know how could I get around this issue  or how to
> continue with my investigation?
> 
> Thanks in advance,
>           Mihaita Ivascu

> barebox 2018.04.0 #2 Wed Apr 3 07:55:40 PDT 2019
> 
> 
> Board: Phytec phyCORE-i.MX6 Ultra Lite SOM
> detected i.MX6 UltraLite revision 1.2
> mdio_bus: miibus0: probed
> eth0: got preset MAC address: 50:2d:f4:14:96:09
> nand: ONFI flash detected
> nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron MT29F4G08ABADAH4), 512MiB, page size: 2048, OOB size: 64
> Bad block table found at page 262080, version 0x01
> Bad block table found at page 262016, version 0x01
> nand_bbt: ECC error in BBT at 0x00001ffe0005
> nand_bbt: ECC error in BBT at 0x00001ffc0005

Things go wrong here already. Could it be that you use a flash based bbt
in barebox but not in Linux?

Generally have you made sure that you can write a page in barebox and
read it in Linux, then afterwards the other way round?

I have no idea what the Freescale Kernel does. It might have some
options to use other ECC modes or something like that. Looking at the
device tree nodes might give a clue.

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
