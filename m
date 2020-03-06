Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx012.vodafonemail.xion.oxcs.net ([153.92.174.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA8YP-0007Rt-9X
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 08:41:59 +0000
Date: Fri, 6 Mar 2020 09:41:42 +0100 (CET)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <1981489026.11927.1583484102341@mail.vodafone.de>
In-Reply-To: <6bea1e40-5d34-719d-e533-e5327a172488@arcor.de>
References: <2105504494.1423.1583396775377@mail.vodafone.de>
 <4b929efa-4d1b-5641-743d-96d94766c57d@pengutronix.de>
 <1062353935.2358.1583401816499@mail.vodafone.de>
 <20200305132415.GT3335@pengutronix.de>
 <609291452.5069.1583416465036@mail.vodafone.de>
 <fe1904011adc47b378e81b271c8e9881f1f097e9.camel@pengutronix.de>
 <6bea1e40-5d34-719d-e533-e5327a172488@arcor.de>
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
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi all,

I've just double checked the reg=val entries I have in my DTD for the imx7d
but could not find anything wrong with it, it is very similar to the
'arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-sabresd.imxcfg'.

What I don't understand is the absolute address of the DTD present at offset 0x40c:
in my barebox image it is 0x8000042c: when the rom code in the imx7 reads the image
from the qspi flash it must transfer it to the OCRAM (0x00910000) because it is
the only memory that works at this early stage of the boot process; but then, when it
searches for the DCD it finds its absolute address, at offset 040c, to be 0x8000042c;
but this address is on the DDR space that is still not configured and so cannot be accessed.

Here is a hex dump of the barebox image I'm using:

...
0400: 0xd1 0x00 0x20 0x40 0x00 0x10 0x00 0x80 0x00 0x00 0x00 0x00 0x2c 0x04 0x00 0x80 
0410: 0x20 0x04 0x00 0x80 0x00 0x04 0x00 0x80 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 
0420: 0x00 0x00 0x00 0x80 0x00 0x00 0x07 0x00 0x00 0x00 0x00 0x00 0xd2 0x01 0xbc 0x40 
0430: 0xcc 0x01 0x6c 0x04 0x30 0x34 0x00 0x04 0x4f 0x40 0x00 0x05 0x30 0x39 0x10 0x00 
0440: 0x00 0x00 0x00 0x02 0x30 0x7a 0x00 0x00 0x01 0x04 0x00 0x01 0x30 0x7a 0x01 0xa0 
...

giorgio

> On March 5, 2020 at 6:11 PM Giorgio <giorgio.nicole@arcor.de> wrote:
> 
> 
> Hi Rouven,
> 
> thank you for your suggestion about the addresses in the DTD.
> The DTD I'm using is actually rather simple, tomorrow I'll try
> to remove everything not absolutely necessary and see if it helps.
> 
> giorgio
> 
> On 3/5/20 3:20 PM, Rouven Czerwinski wrote:
> > On Thu, 2020-03-05 at 14:54 +0100, Giorgio Dal Molin wrote:
> >> Hi Sascha,
> >>
> >>
> >>> On March 5, 2020 at 2:24 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >>>
> >>>
> >>> On Thu, Mar 05, 2020 at 10:50:15AM +0100, Giorgio Dal Molin wrote:
> >>>> Hi,
> >>>>
> >>>> thank you for the quick reply.
> >>>>
> >>>> here is how I register the bbu for the spi flash:
> >>>>
> >>>> imx7_bbu_internal_spi_i2c_register_handler("SPI", "/dev/m25p0", BBU_HANDLER_FLAG_DEFAULT);
> >>>>
> >>>> and here is a hex dump of the spi flash after bb-updating (I hacked the 'cat' command a bit):
> >>>>
> >>>> imx7d: / cat -h -b 0x450 /dev/m25p0
> >>>
> >>> There's the 'md' command for this purpose ;)
> >>>
> >>>> 0000: 0xfe 0x03 0x00 0xea 0xfe 0xff 0xff 0xea 0xfe 0xff 0xff 0xea 0xfe 0xff 0xff 0xea 
> >>>> 0010: 0xfe 0xff 0xff 0xea 0xfe 0xff 0xff 0xea 0xfe 0xff 0xff 0xea 0xfe 0xff 0xff 0xea 
> >>>> 0020: 0x62 0x61 0x72 0x65 0x62 0x6f 0x78 0x00 0x00 0x00 0x00 0x00 0x00 0xf0 0x06 0x00 
> >>>> 0030: 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 
> >>>> 0040: 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55 
> >>>> 0050: 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 
> >>>> ... < zeros > ...
> >>>> 03f0: 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 
> >>>> 0400: 0xd1 0x00 0x20 0x40 0x00 0x10 0x00 0x80 0x00 0x00 0x00 0x00 0x2c 0x04 0x00 0x80 
> >>>> 0410: 0x20 0x04 0x00 0x80 0x00 0x04 0x00 0x80 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 
> >>>> 0420: 0x00 0x00 0x00 0x80 0x00 0xf0 0x06 0x00 0x00 0x00 0x00 0x00 0xd2 0x01 0xbc 0x40 
> >>>> 0430: 0xcc 0x01 0x6c 0x04 0x30 0x34 0x00 0x04 0x0f 0x40 0x00 0x05 0x30 0x39 0x10 0x00 
> >>>> 0440: 0x00 0x00 0x00 0x02 0x30 0x7a 0x00 0x00 0x01 0x04 0x00 0x01 0x30 0x7a 0x01 0xa0 
> >>>>
> >>>> It seems 'reasonable': there's a 0x400 bytes flash header and then the actual image
> >>>> starts, but it does not boot.
> >>>
> >>> ...
> >>>
> >>>> 03f0: 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 
> >>>> 0400: 0xd1 0x00 0x20 0x40 0x00 0x10 0x91 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 
> >>>> 0410: 0x20 0x04 0x91 0x00 0x00 0x04 0x91 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 
> >>>> 0420: 0x00 0x00 0x91 0x00 0x00 0xa0 0x00 0x00 0x00 0x00 0x00 0x00 0xd2 0x00 0x04 0x40 
> >>>> 0430: 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 
> >>>> 0440: 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 
> >>>>
> >>>>
> >>>> The first 4 bites at offset 0x400 are the same but then the u-boot working image is
> >>>> different.
> >>>
> >>> Where do you have the SDRAM setup? The U-Boot snippet loads into
> >>> internal SRAM which looks like the SDRAM setup is done in code. The
> >>> barebox image above loads into SDRAM which of course requires that you
> >>> have setup the SDRAM in the DCD table.
> >>>
> >>
> >> Yes, this is right, u-boot does not have a DCD, they init the soc (ddr cntr)
> >> in the bootloader self.
> >>
> >> The DCD I use in barebox works when I upload the image with the imx-usb-loader:
> >>
> >> root [ /tmp ]# /tmp/bbuild/arm32/scripts/imx/imx-usb-loader /tmp/bbuild/arm32/barebox-flash-image
> >> found i.MX7S USB device [15a2:0076]
> >> main dcd length 1bc
> >> DCD write: sub dcd length: 0x016c, flags: 0x04
> >> DCD check condition 3 on address 0x307900c4
> >> DCD write: sub dcd length: 0x0034, flags: 0x04
> >> DCD check condition 3 on address 0x307a0004
> >> loading binary file(/tmp/bbuild/arm32/barebox-flash-image) to 0x80000000, skip=0x0, fsize=456157 type=170...
> >> binary file successfully loaded
> >> jumping to 0x80000400
> >>
> >>
> >> The same barebox image on the spi flash does not work; unfortunately I have no debug
> >> messages in that case, I just see that the u-boot image boots so the HW is OK.
> > 
> > At least on i.MX6 there is a list of valid dcd address ranges. imx-usb-
> > loader is different, since the values are written by the tool and not
> > by the ROM code. The ROM code will refuse to boot if values are outside
> > of the valid ranges, maybe this is the case in your DCD table?
> > 
> > - Rouven
> > 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
