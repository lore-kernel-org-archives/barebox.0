Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx009.vodafonemail.xion.oxcs.net ([153.92.174.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jADIx-0007bw-8L
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 13:46:21 +0000
Date: Fri, 6 Mar 2020 14:46:05 +0100 (CET)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <274665092.16081.1583502365477@mail.vodafone.de>
In-Reply-To: <20200306130136.GZ3335@pengutronix.de>
References: <2105504494.1423.1583396775377@mail.vodafone.de>
 <4b929efa-4d1b-5641-743d-96d94766c57d@pengutronix.de>
 <1062353935.2358.1583401816499@mail.vodafone.de>
 <20200305132415.GT3335@pengutronix.de>
 <609291452.5069.1583416465036@mail.vodafone.de>
 <fe1904011adc47b378e81b271c8e9881f1f097e9.camel@pengutronix.de>
 <6bea1e40-5d34-719d-e533-e5327a172488@arcor.de>
 <1981489026.11927.1583484102341@mail.vodafone.de>
 <20200306130136.GZ3335@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: barebox image for an spi flash (like m25p0) on an imx7 soc
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Rouven Czerwinski <r.czerwinski@pengutronix.de>

Hi Sascha,

excuse my difficult to read English.

Here is the requested dump:

imx7d: / md -s /dev/m25p0 1k+1k
00000400: 402000d1 80001000 00000000 8000042c                .. @........,...
00000410: 80000420 80000400 00000000 00000000                 ...............
00000420: 80000000 00070000 00000000 40bc01d2                ...............@
00000430: 046c01cc 04003430 0500404f 00103930                ..l.04..O@..09..
00000440: 02000000 00007a30 01000401 a0017a30                ....0z......0z..
00000450: 03004080 a4017a30 20001000 a8017a30                .@..0z..... 0z..
00000460: 04001080 64007a30 46004000 90047a30                ....0z.d.@.F0z..
00000470: 01000000 d0007a30 03010200 d4007a30                ....0z......0z..
00000480: 00006900 dc007a30 04003009 e0007a30                .i..0z...0..0z..
00000490: 00000804 e4007a30 00001000 f4007a30                ....0z......0z..
000004a0: 3f030000 00017a30 09080809 04017a30                ...?0z......0z..
000004b0: 0d020d00 08017a30 07030504 0c017a30                ....0z......0z..
000004c0: 06200000 10017a30 05020204 14017a30                .. .0z......0z..
000004d0: 02020303 20017a30 03080000 80017a30                ....0z. ....0z..
000004e0: 20008000 84017a30 00010002 90017a30                ... 0z......0z..
000004f0: 04820902 94017a30 03030300 00027a30                ....0z......0z..
00000500: 1f000000 04027a30 08080800 10027a30                ....0z......0z..
00000510: 0f0f0000 14027a30 07070707 18027a30                ....0z......0z..
00000520: 07070707 40027a30 04060006 44027a30                ....0z.@....0z.D
00000530: 01000000 00103930 00000000 00007930                ....09......0y..
00000540: 400f4217 04007930 00012110 10007930                .B.@0y...!..0y..
00000550: 07080600 b0007930 7e001010 9c007930                ....0y.....~0y..
00000560: 6e0d0000 20007930 08080808 30007930                ...n0y. ....0y.0
00000570: 08080808 50007930 10000001 50007930                ....0y.P....0y.P
00000580: 10000000 c0007930 0473400e c0007930                ....0y...@s.0y..
00000590: 0473440e c0007930 0673440e 1c0c00cf                .Ds.0y...Ds.....
000005a0: c4007930 01000000 043400cc c0007930                0y........4.0y..
000005b0: 0473440e c0007930 0473400e 30413830                .Ds.0y...@s.08A0
000005c0: 00000000 20003430 78010000 30413830                ....04. ...x08A0
000005d0: 02000000 18007930 0f000000 1c0c00cf                ....0y..........
000005e0: 04007a30 01000000 00000000 00000000                0z..............
000005f0: 00000000 00000000 00000000 00000000                ................
00000600: 00000000 00000000 00000000 00000000                ................
00000610: 00000000 00000000 00000000 00000000                ................
00000620: 00000000 00000000 00000000 00000000                ................
00000630: 00000000 00000000 00000000 00000000                ................
00000640: 00000000 00000000 00000000 00000000                ................
00000650: 00000000 00000000 00000000 00000000                ................
00000660: 00000000 00000000 00000000 00000000                ................
00000670: 00000000 00000000 00000000 00000000                ................
00000680: 00000000 00000000 00000000 00000000                ................
00000690: 00000000 00000000 00000000 00000000                ................
000006a0: 00000000 00000000 00000000 00000000                ................
000006b0: 00000000 00000000 00000000 00000000                ................
000006c0: 00000000 00000000 00000000 00000000                ................
000006d0: 00000000 00000000 00000000 00000000                ................
000006e0: 00000000 00000000 00000000 00000000                ................
000006f0: 00000000 00000000 00000000 00000000                ................
00000700: 00000000 00000000 00000000 00000000                ................
00000710: 00000000 00000000 00000000 00000000                ................
00000720: 00000000 00000000 00000000 00000000                ................
00000730: 00000000 00000000 00000000 00000000                ................
00000740: 00000000 00000000 00000000 00000000                ................
00000750: 00000000 00000000 00000000 00000000                ................
00000760: 00000000 00000000 00000000 00000000                ................
00000770: 00000000 00000000 00000000 00000000                ................
00000780: 00000000 00000000 00000000 00000000                ................
00000790: 00000000 00000000 00000000 00000000                ................
000007a0: 00000000 00000000 00000000 00000000                ................
000007b0: 00000000 00000000 00000000 00000000                ................
000007c0: 00000000 00000000 00000000 00000000                ................
000007d0: 00000000 00000000 00000000 00000000                ................
000007e0: 00000000 00000000 00000000 00000000                ................
000007f0: 00000000 00000000 00000000 00000000                ................

I try to rephrase the question:

the barebox image, at offset 0x400, has the IVT (Image Vector Table), and that table
contains the absolute address of the DCD table (0x8000042c in the previous dump);
0x8000042c is an address in the DDR3 address space, so to read the data at that addresses
(the DCD table) the boot rom must have already configured the memory controller of
the imx7d soc; but this configuration is in the DCD that is in the still unconfigured DDR3.

giorgio

> On March 6, 2020 at 2:01 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> 
> On Fri, Mar 06, 2020 at 09:41:42AM +0100, Giorgio Dal Molin wrote:
> > Hi all,
> > 
> > I've just double checked the reg=val entries I have in my DTD for the imx7d
> > but could not find anything wrong with it, it is very similar to the
> > 'arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-sabresd.imxcfg'.
> > 
> > What I don't understand is the absolute address of the DTD present at offset 0x40c:
> > in my barebox image it is 0x8000042c: when the rom code in the imx7 reads the image
> > from the qspi flash it must transfer it to the OCRAM (0x00910000) because it is
> > the only memory that works at this early stage of the boot process; but then, when it
> > searches for the DCD it finds its absolute address, at offset 040c, to be 0x8000042c;
> > but this address is on the DDR space that is still not configured and so cannot be accessed.
> > 
> > Here is a hex dump of the barebox image I'm using:
> > 
> > ...
> > 0400: 0xd1 0x00 0x20 0x40 0x00 0x10 0x00 0x80 0x00 0x00 0x00 0x00 0x2c 0x04 0x00 0x80 
> > 0410: 0x20 0x04 0x00 0x80 0x00 0x04 0x00 0x80 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 
> > 0420: 0x00 0x00 0x00 0x80 0x00 0x00 0x07 0x00 0x00 0x00 0x00 0x00 0xd2 0x01 0xbc 0x40 
> > 0430: 0xcc 0x01 0x6c 0x04 0x30 0x34 0x00 0x04 0x4f 0x40 0x00 0x05 0x30 0x39 0x10 0x00 
> > 0440: 0x00 0x00 0x00 0x02 0x30 0x7a 0x00 0x00 0x01 0x04 0x00 0x01 0x30 0x7a 0x01 0xa0 
> 
> This is quite unreadable. Could you post the output of 'md -s /dev/m25p0 1k+1k' ?
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
