Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoRl6-0002Xp-9V
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 06:50:29 +0000
Date: Wed, 12 Nov 2014 07:50:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141112065005.GD30369@pengutronix.de>
References: <4C598A31AEBE214FB619D7F2DC3BD8AB013B08AA97@MSI0E01.MSI.Local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C598A31AEBE214FB619D7F2DC3BD8AB013B08AA97@MSI0E01.MSI.Local>
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
Subject: Re: mtdparts phyFlex
To: "Balasa, Bogdan" <BBalasa@Morganschaffer.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Bogdan,

On Tue, Nov 11, 2014 at 09:27:54PM +0000, Balasa, Bogdan wrote:
> Hi,
> 
> I am using barebox 2014.11.0 with phyFlex imx6 and when I add in '/env/init/mtdparts-nand'
> to specify the size of different partitions:
> ----------------------------------------------------------------------------------------------
> #!/bin/sh
> 
> if [ "$1" = menu ]; then
>                init-menu-add-entry "$0" "NAND partitions"
>                exit
> fi
> 
> mtdparts="5M(nand0.oftree),10M(nand0.kernel),50M(nand0.root) "

You are not booting from NAND, are you? In that case you would overwrite
the bootloader partition here.

> kernelname="gpmi-nand"
> mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
> ---------------------------------------------------------------------------------------------
> 
> at next power-up I get an error:
> 
> 'cannot create nand0.oftree: File exists'
> 
> It seems like barebox adds  'nand0.oftree' before is specified by mtdparts-nand?!

The partitions come from the device tree. You're best off changing them
there and recompiling. This would be the gpmi node in
arch/arm/dts/imx6qdl-phytec-pfla02.dtsi.

There is a chance to do this from the commandline without recompiling,
but actually trying it seems awkward. You first have to delete the
partitions one by one:

delpart nand0.barebox
delpart nand0.barebox-environment
delpart nand0.oftree
delpart nand0.kernel
delpart nand0.root

Then add them again with the script you created. Note that the kernel
also takes the partitions from the device tree, so depending which
device tree you use you might end up with the original partitions.

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
