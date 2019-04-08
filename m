Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hDO8Q-0004vw-Rg
 for barebox@lists.infradead.org; Mon, 08 Apr 2019 06:52:05 +0000
Received: by mail-qt1-x836.google.com with SMTP id z17so14100242qts.13
 for <barebox@lists.infradead.org>; Sun, 07 Apr 2019 23:51:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAEp+FuB1y=LgWF6ZDV2JhT+=Qch1H9f6zGqLPgb4Em4E0wriRw@mail.gmail.com>
 <20190404195131.i2uqsk6xiaxtdai4@pengutronix.de>
 <CAEp+FuD8vFFPTDibkxS=wJ6uT0OrV2E1s6JjiyZn-ThLR-j09w@mail.gmail.com>
 <20190408062900.h4mo4k75aagtlgml@pengutronix.de>
In-Reply-To: <20190408062900.h4mo4k75aagtlgml@pengutronix.de>
From: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Date: Mon, 8 Apr 2019 08:51:47 +0200
Message-ID: <CAEp+FuBdStoLJnTN9mdMv=peTMhiF7-AD=9gqWGFXpbxRitoRw@mail.gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Ok, thank you for the advice. I will try that.
I did more tests and I think that the ECC errors I was getting in the
first post I have them only if the FIT image is greater than 50 MB. It
does not matter the ECC/BBT options in bootloader/kernel or the kernel
version.
Do you know any limitation of the UBI FS in terms of image/partition size?

Thanks,
       Mihaita

On Mon, Apr 8, 2019 at 8:29 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Fri, Apr 05, 2019 at 06:23:07PM +0200, Mihaita Ivascu wrote:
> > Hello,
> >
> >     Yes both linux and barebox drivers use bbt. In fact the message
> > above related to ECC error in BBT I see them as well in dmesg when
> > loading kernel:
> >
> > >nand_bbt: ECC error in BBT at 0x00001ffe0005
> > >nand_bbt: ECC error in BBT at 0x00001ffc0005
> >
> >
> >   I have disabled hardware ECC and enabled Software BCH ECC in barebox
> > menuconfig with the intention to have the same ECC as in kernel where
> > I have only software ECC option and now I have the following situation
> > in barebox:
>
> You *always* want to use hardware ECC on i.MX. I don't know why you
> think that you only have software ECC in the kernel, I am pretty sure
> you can do hardware ECC in the FSL Kernel aswell.
>
> >
> > Board: Phytec phyCORE-i.MX6 Ultra Lite SOM
> > detected i.MX6 UltraLite revision 1.2
> > mdio_bus: miibus0: probed
> > eth0: got preset MAC address: 50:2d:f4:14:96:09
> > nand: ONFI flash detected
> > nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron
> > MT29F4G08ABADAH4), 512MiB, page size: 2048, OOB size: 64
> > nand: Invalid NAND_ECC_MODE 2
> > BUG: failure at
> > ~/Projects/barebox/2018.04.0-phy1-r7.0/git/drivers/mtd/nand/nand_base.c:3699/nand_scan_tail()!
> > BUG!
> > [<9fd71451>] (unwind_backtrace+0x1/0x58) from [<9fd00d9d>] (panic+0x1d/0x34)
> > [<9fd00d9d>] (panic+0x1d/0x34) from [<9fd1272d>] (nand_scan_tail+0x99/0x3dc)
> > [<9fd1272d>] (nand_scan_tail+0x99/0x3dc) from [<9fd15cf9>]
> > (mxs_nand_probe+0x40d/0x43c)
> > [<9fd15cf9>] (mxs_nand_probe+0x40d/0x43c) from [<9fd0c595>]
> > (device_probe+0x21/0x68)
> > [<9fd0c595>] (device_probe+0x21/0x68) from [<9fd0c601>] (match.part.0+0x25/0x2c)
> > [<9fd0c601>] (match.part.0+0x25/0x2c) from [<9fd0c7df>]
> > (register_driver+0x5b/0x78)
> > [<9fd0c7df>] (register_driver+0x5b/0x78) from [<9fd00acb>]
> > (start_barebox+0x1b/0x98)
> > [<9fd00acb>] (start_barebox+0x1b/0x98) from [<9fd6faa1>]
> > (barebox_non_pbl_start+0xd5/0xf8)
> > [<9fd6faa1>] (barebox_non_pbl_start+0xd5/0xf8) from [<9fd00005>]
> > (__bare_init_start+0x1/0xc)
> > ### ERROR ### Please RESET the board ###
> >
> >    I cannot recover it now.
>
> You mean you have flashed this version and can't update anymore because
> you don't get to the prompt?
>
> To make your life easier you always start a new barebox image from the
> flashed one rather than flashing it directly.
>
> You can refer to the PhyCORE documentation how to enable alternative
> boot sources. Most convenient should be USB boot in which case you can
> use the imx-usb-loader tool to upload a new barebox image.
>
> Once you got that I suggest that you erase your whole NAND as the next
> step.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
