Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaXZ6-0002wM-L0
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 18:59:02 +0000
Date: Tue, 13 Dec 2011 19:58:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111213185847.GY27267@pengutronix.de>
References: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
 <20111213092147.GC27267@pengutronix.de> <87vcpkycbl.fsf@free.fr>
 <20111213112936.GQ27267@pengutronix.de> <87r508y7gz.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r508y7gz.fsf@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] drivers/mtd: add a core
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Tue, Dec 13, 2011 at 01:35:56PM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > On Tue, Dec 13, 2011 at 11:51:10AM +0100, Robert Jarzmik wrote:
> >> Sascha Hauer <s.hauer@pengutronix.de> writes:
> >> 
> >> > I created the nand_oob device mainly for debugging purposes. It can be
> >> > convenient to be able to see the oob data. As this has no practical
> >> > use besides debugging it can be easily replaced with an interleaved
> >> > data/oob device. The oob device is quite inconvenient to use anyway
> >> > since it requires some calculating to get the oob data for a given
> >> > page.
> >> True. What we would need to make it simple :
> >>  - have arithmetic expressions in hush
> >
> > Uhh, have you looked at the code? You can hardly even fix a bug
> > without introducing another one :(
> Ah, a pity.
> 
> >>  - have a "dd" command with options skip,bs,count
> >>    => that is actually a requirement to flash (as cp uses blocks of 4096, while
> >>    flash with oob wants block of writesize+oobsize which are seldom multiples of
> >>    512).
> >
> > I don't know much about disk-on-chip. Do you really have to write
> > the images completely with oob data?
> For the SPL, yes. The disk-on-chip IPL finds the SPL by checking the OOB of each
> block : if it begins with "BIPO000, BIPO001, .. BIPO00<N>", then it's taken as
> the Nth block of the SPL. The OOB part is crucial to load the SPL.
> 
> I think this is done that way so that even if there is a worn out block in the
> middle (ie. a block that cannot be fixed anymore by ECC), it is skipped as it
> has no more the "BIPOxxx" signature.
> 
> > However, I don't like the idea that we have to use a special command
> > to flash an image.
> ...zip...
> >
> > /dev/nand0 is the full raw nand device. /dev/nand0.barebox is an example
> > for a partition on this device (also raw, with bad blocks).
> > /dev/nand0.barebox.bb is this partition, but this device automatically
> > skips bad blocks and this also makes sure that only writesize aligned
> > accesses go to the underlying layers. This way we can simply do a
> > 'cp image /dev/nand0.kernel.bb' or a 'tftp barebox
> > /dev/nand0.barebox.bb'
> This relies on the fact that you assume your device writesize is a multiple of
> 512. If you write OOB as well, you're almost sure you won't have chunks of 512
> bytes.

No, it doesn't. The bb device handles whatever size it passed to it.
Given your 528 byte example and a cp buffer size of 4096 bytes the bb
devices would do the following:

- write 7 * 528 bytes to the device
- buffer 4096 - (7 * 528) = 400 bytes until the next write
- Now we have 4096 + 400 bytes, write 8 * 528 bytes to the device
- buffer 4224 - (8 * 512) = 128 bytes

and so on. The fact that lseek is not implemented makes sure that we can
safely buffer until the next write call from cp. The remaining buffer
bytes are flushed on device close.

That said, the current implementation indeed passes 512b or 2k down
since we do not have oob data in the bb devices, but it is not limited
to multiple of these sizes as input data.

> 
> And when you say "/dev/nand0" is the full raw nand device, I think you mean the
> "full raw *data* device without the OOB". The full raw device would be all
> programmable flash memory, which encompasses data and OOB.
> 
> Now imagine this usecase : a new wonderfull flash filesystem is developped
> ... let's call it WFFS (wonderful filesystem). You don't want to have its
> support to barebox (lack of time, resources), but you'd like to flash a
> pre-prepared partition so that the linux kernel can use it as it's root
> partition. How do you do it from your bootloader ?
> If you had the /dev/mtdoob0 device, whatever filesystem structure is thought of,
> the flashing method will always work.

Luckily my WFFS of the day is UBIFS which does not use oob data at all.
I'm glad it doesn't use them, because on some i.MX processors we can
only do full page writes including oob data. Additionally the hardware
ecc engine also protects the oob data which means that the classical
jffs2 usecase where jffs2 first writes its cleanmarkers to oob and the
data aftwerwards is not possible on these devices.

> 
> > Would that be suitable for disk-on-chip aswell?
> No, I don't think so, as the OOB has to be written as well, and therefore
> multiples of 528 bytes should be possible. Note that if "cp" had a parameter for
> the size of its buffer (currently 4096), then the "dd" would not be needed
> anymore. A "cp -bs=528 image /dev/nand0.kernel" or "cp -bs=4224" would be
> enough.

As explained above this won't be a problem. I see another problem
though: The oob layout is often dictated by hardware ecc engines. To
handle this the mtd layer has this oob_avail/oob_free/oob_pos[] thingy.
How does your mtd+oob device look like? Is it raw or does it care about
the the nonfree bytes in ecc? In mtd terms it would be MTD_OOB_RAW vs.
MTD_OOB_AUTO.

Do you need the mtd+oob device for writing the SPL or also for writing
your WFFS? In case of only SPL you might also add a specialized command
which automatically writes the user data and generates the BIP000n into
oob on the fly. It would have the advantage that you do not need special
host tools to generate an image.

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
