Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rambn-00040o-H4
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 11:02:48 +0000
Date: Wed, 14 Dec 2011 12:02:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111214110235.GD27267@pengutronix.de>
References: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
 <20111213092147.GC27267@pengutronix.de> <87vcpkycbl.fsf@free.fr>
 <20111213112936.GQ27267@pengutronix.de> <87r508y7gz.fsf@free.fr>
 <20111213185847.GY27267@pengutronix.de> <87borbxyi1.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87borbxyi1.fsf@free.fr>
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

On Wed, Dec 14, 2011 at 11:01:58AM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> > No, it doesn't. The bb device handles whatever size it passed to it.
> > Given your 528 byte example and a cp buffer size of 4096 bytes the bb
> > devices would do the following:
> >
> > - write 7 * 528 bytes to the device
> > - buffer 4096 - (7 * 528) = 400 bytes until the next write
> > - Now we have 4096 + 400 bytes, write 8 * 528 bytes to the device
> > - buffer 4224 - (8 * 512) = 128 bytes
> >
> > and so on. The fact that lseek is not implemented makes sure that we can
> > safely buffer until the next write call from cp. The remaining buffer
> > bytes are flushed on device close.
> Ah I see it now, you're actually talking about the nand.bb buffer, and not the
> cp buffer, ie. nand_bb.writebuf. This buffer "stores" the extra bytes until the
> next write.
> 
> >> No, I don't think so, as the OOB has to be written as well, and therefore
> >> multiples of 528 bytes should be possible. Note that if "cp" had a parameter for
> >> the size of its buffer (currently 4096), then the "dd" would not be needed
> >> anymore. A "cp -bs=528 image /dev/nand0.kernel" or "cp -bs=4224" would be
> >> enough.
> >
> > As explained above this won't be a problem. I see another problem
> > though: The oob layout is often dictated by hardware ecc engines. To
> > handle this the mtd layer has this oob_avail/oob_free/oob_pos[] thingy.
> > How does your mtd+oob device look like? Is it raw or does it care about
> > the the nonfree bytes in ecc? In mtd terms it would be MTD_OOB_RAW vs.
> > MTD_OOB_AUTO.
> It looks like pages of 512 bytes + OOB of 16 bytes (7 free, 1 for Hamming code,
> 7 for BCH code, 1 free).
> And I definitely choose RAW, as it encompassed the AUTO case (ie. all ECC is
> correctly filled in the provided source image), and the RAW case (ie. the ECC
> provided can have wanted errors (thing security markers here)).
> I'm sure here that this device should be raw. I could create a device with
> autooob, but I don't see a usecase for it.

Yeah, it should be raw.

> 
> > Do you need the mtd+oob device for writing the SPL or also for writing
> > your WFFS? In case of only SPL you might also add a specialized command
> > which automatically writes the user data and generates the BIP000n into
> > oob on the fly.
> Ah, I won't make a specialized command. As the IPL is *rewritable*, the marker
> can change, and I'll have to change the command. Better have a generic approach
> here, whether would that be the "dd" option, or the specialized unseekable and
> buffered "mtdoob" device.
> 
> Now, to finish this discussion, let me sum up :
>  - you think the specialized unseekable buffered "mtdoob" device is better that
>  a "dd" command to flash partitions because the specialized device can be filled
>  in by existing "cp" or "tftp" commands, right ?

Right

>  - I think it's cleaner to do a "cp file | dd bs=528 of=/dev/mtdoob"

With this approach (apart from | which we don't have in barebox) how do
you handle bad blocks? will they be silently skipped (that is the file
position is silently increased by one block by the device driver) or
will dd fail in this case? How is lseek handled? Will it position the
file pointer to the physical address on the device or will lseek
skip bad blocks?

>    I feel really nervous about the "unseekable buffered" part. It doesn't allow
>    partial writes (you have to define subpartitions for that).

Do you really need partial writes if you have one partition for the IPL
and one for the SPL?
BTW I have some work in progress to overcome this no lseek limitation.

>    Moreover, I think "dd" can have other fields of application, and is a usefull
>    tool around.

Don't mind. If you find it useful I will accept a patch for it. A
command which can be switched off costs nothing. And once I find
a usecase for that I'll be happy that it's there.

> 
> But as I'm rather open minded, I'll let you choose between :
>  (1) specialized mtdoob device
>  (2) dd command
>  (3) dd command and specialized mtdoob device
> 
> I'll encourage you considering (2) or (3) :)

The mtdoob device still does not feel very good to me. What about
partitions? If you partition a mtd device the partitions are normally
512b * numpages. On the mtdoob device they are 528b * numpages which
means that when you have something like this in your environment:

addpart nand0 128k(barebox),128k(env)

The corresponding partition on a mtd+oob device would be:

addpart nand0mtdoob 135168(barebox),135168(env)

There is no easy way in the environment to keep this in sync.

I get the feeling that what we really want is to resemble the nand_write
mtd utility for barebox. It could do everything you want without
changing the current mtd layer and it would also be possible for other
people to turn it off without overhead.

(Another idea I have (though I'm unsure if it's good), is: the bb
partitions are currently created with the 'nand -a' command. This
command with different parameters could also create other partition
types:

 -b	create a oob only device
 -c	create a mtd+oob device
)

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
