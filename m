Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOGTR-0000E4-M3
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 07:59:15 +0000
Date: Tue, 14 Apr 2020 09:59:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200414075911.GX27288@pengutronix.de>
References: <63e3eb58-9f5b-54d6-e8cf-b7672fe55a4a@pengutronix.de>
 <9bd7f507-8f59-98ee-18af-48be3dba9372@arcor.de>
 <f075fcf2-5703-37ee-b197-84afe0585560@pengutronix.de>
 <3c69c3fb-d8bd-b39d-a0ea-704c8ad99dfc@arcor.de>
 <612deb15-d03a-e393-3e37-efed52c9c3ed@pengutronix.de>
 <facff2a6-0014-2858-25bd-de8190b5df0d@arcor.de>
 <621b0466-1176-b067-5bb1-9606bd695c8d@pengutronix.de>
 <f4cb5943-b968-90ee-f55e-7e705fae0d86@arcor.de>
 <956f428b-e2a7-fb8a-c073-ec90966af808@pengutronix.de>
 <ebc7ff56-cb0e-58b7-6a33-52068c78e90b@arcor.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ebc7ff56-cb0e-58b7-6a33-52068c78e90b@arcor.de>
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
Subject: Re: imx7d dual core boot
To: Giorgio <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Tue, Apr 14, 2020 at 12:30:40AM +0200, Giorgio wrote:
> Hi Ahmad,
> 
> On 4/7/20 3:43 PM, Ahmad Fatoum wrote:
> > Hello,
> > 
> > On 4/7/20 2:28 PM, Giorgio wrote:
> >>> Great. Even better than hardcoding the CLIENT_DOMAIN.
> >>>
> >> OK.
> >>
> >> To read the current value of DACR, in secure mode, we need a
> >> get_domain(). I would add it to mmu.h, beside the set_domain().
> > 
> > sounds good.
> > 
> >>>> What do you mean with the 'other i.MX7 patches' ?
> >>>
> >>> Didn't you add support for some i.MX7 spi flash image format?
> >>>
> >>
> >> That was an evil hack actually, just to verify why the normal barebox image
> >> didn't worked. To really support booting barebox from the qspi flash
> >> I think we need more *structural* changes to the way barebox starts.
> >> For this I need *at least* some suggestions from someone that really knows
> >> in detail how barebox works and how an image is built, like you or Sascha...
> > 
> > scripts/imx/imx-image.c is what's building the i.MX images. It receives
> > the imxcfg specific to a board as argument. If you have extra configuration
> > for the QSPI, you'll probably need to extend that, either with a new option
> > or maybe by adding new directives to the existing imxcfg format.
> > 
> 
> thank you for the suggestions, I already knew about the imx-image tool even
> if not in detail; to add support for the QSPI boot we must for sure extend
> the code there somehow.
> 
> > What other changes do you think will be necessary?
> >
> I have currently have a qspi-patched barebox image on my QSPI flash that the imx7d
> is able to boot, but only due to an evil hack I only made to see if it was
> the last problem I had.
> According to the imx7d ref. manual (Rev. 1, 01/2018), at page 1233, the boot ROM
> reads out the content of the QSPI flash and expects, at offset 0x00 (watch out here,
> the ref. manual says actually offset 0x400 but it's an error), the QuadSPI Configuration
> Parameters, a 512 bytes long binary table with HW parameters describing the flash.
> Without this table the soc won't boot.
> The problem is here that barebox already uses this offset range with other informations,
> in particular the first 32bits (at offset 0x00) contain the asm opcode of a branch:

This branch shouldn't be necessary to boot from ROM. Normally we set the
entry point of the image to the image start + 0x1000 which is the
address of the first instruction of the binary.

The branch instruction at offset 0x0 in the image is only meant for
starting the image second stage: You can jump directly to the start of
the image without caring where the real start is.

I don't know why the instruction at 0x0 is necessary in your case. I
also don't know how booting with QSPI works. Other boot devices are
actively read from by the CPU, the QSPI controller probably has a
feature to map QSPI NOR contents into the physical address space of the
CPU. Maybe the ROM uses this feature and maybe this causes differences
to the boot flow from other devices.

What have you specified as loadaddr and dcdofs in you flash header
configuration file?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
