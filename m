Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ralf6-000804-H9
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 10:02:11 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
 <20111213092147.GC27267@pengutronix.de> <87vcpkycbl.fsf@free.fr>
 <20111213112936.GQ27267@pengutronix.de> <87r508y7gz.fsf@free.fr>
 <20111213185847.GY27267@pengutronix.de>
Date: Wed, 14 Dec 2011 11:01:58 +0100
Message-ID: <87borbxyi1.fsf@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] drivers/mtd: add a core
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:
> No, it doesn't. The bb device handles whatever size it passed to it.
> Given your 528 byte example and a cp buffer size of 4096 bytes the bb
> devices would do the following:
>
> - write 7 * 528 bytes to the device
> - buffer 4096 - (7 * 528) = 400 bytes until the next write
> - Now we have 4096 + 400 bytes, write 8 * 528 bytes to the device
> - buffer 4224 - (8 * 512) = 128 bytes
>
> and so on. The fact that lseek is not implemented makes sure that we can
> safely buffer until the next write call from cp. The remaining buffer
> bytes are flushed on device close.
Ah I see it now, you're actually talking about the nand.bb buffer, and not the
cp buffer, ie. nand_bb.writebuf. This buffer "stores" the extra bytes until the
next write.

>> No, I don't think so, as the OOB has to be written as well, and therefore
>> multiples of 528 bytes should be possible. Note that if "cp" had a parameter for
>> the size of its buffer (currently 4096), then the "dd" would not be needed
>> anymore. A "cp -bs=528 image /dev/nand0.kernel" or "cp -bs=4224" would be
>> enough.
>
> As explained above this won't be a problem. I see another problem
> though: The oob layout is often dictated by hardware ecc engines. To
> handle this the mtd layer has this oob_avail/oob_free/oob_pos[] thingy.
> How does your mtd+oob device look like? Is it raw or does it care about
> the the nonfree bytes in ecc? In mtd terms it would be MTD_OOB_RAW vs.
> MTD_OOB_AUTO.
It looks like pages of 512 bytes + OOB of 16 bytes (7 free, 1 for Hamming code,
7 for BCH code, 1 free).
And I definitely choose RAW, as it encompassed the AUTO case (ie. all ECC is
correctly filled in the provided source image), and the RAW case (ie. the ECC
provided can have wanted errors (thing security markers here)).
I'm sure here that this device should be raw. I could create a device with
autooob, but I don't see a usecase for it.

> Do you need the mtd+oob device for writing the SPL or also for writing
> your WFFS? In case of only SPL you might also add a specialized command
> which automatically writes the user data and generates the BIP000n into
> oob on the fly.
Ah, I won't make a specialized command. As the IPL is *rewritable*, the marker
can change, and I'll have to change the command. Better have a generic approach
here, whether would that be the "dd" option, or the specialized unseekable and
buffered "mtdoob" device.

Now, to finish this discussion, let me sum up :
 - you think the specialized unseekable buffered "mtdoob" device is better that
 a "dd" command to flash partitions because the specialized device can be filled
 in by existing "cp" or "tftp" commands, right ?
 - I think it's cleaner to do a "cp file | dd bs=528 of=/dev/mtdoob"
   I feel really nervous about the "unseekable buffered" part. It doesn't allow
   partial writes (you have to define subpartitions for that).
   Moreover, I think "dd" can have other fields of application, and is a usefull
   tool around.

But as I'm rather open minded, I'll let you choose between :
 (1) specialized mtdoob device
 (2) dd command
 (3) dd command and specialized mtdoob device

I'll encourage you considering (2) or (3) :)

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
