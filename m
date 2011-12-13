Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaRaX-0002i7-IG
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 12:36:06 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
 <20111213092147.GC27267@pengutronix.de> <87vcpkycbl.fsf@free.fr>
 <20111213112936.GQ27267@pengutronix.de>
Date: Tue, 13 Dec 2011 13:35:56 +0100
In-Reply-To: <20111213112936.GQ27267@pengutronix.de> (Sascha Hauer's message
 of "Tue, 13 Dec 2011 12:29:36 +0100")
Message-ID: <87r508y7gz.fsf@free.fr>
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

> On Tue, Dec 13, 2011 at 11:51:10AM +0100, Robert Jarzmik wrote:
>> Sascha Hauer <s.hauer@pengutronix.de> writes:
>> 
>> > I created the nand_oob device mainly for debugging purposes. It can be
>> > convenient to be able to see the oob data. As this has no practical
>> > use besides debugging it can be easily replaced with an interleaved
>> > data/oob device. The oob device is quite inconvenient to use anyway
>> > since it requires some calculating to get the oob data for a given
>> > page.
>> True. What we would need to make it simple :
>>  - have arithmetic expressions in hush
>
> Uhh, have you looked at the code? You can hardly even fix a bug
> without introducing another one :(
Ah, a pity.

>>  - have a "dd" command with options skip,bs,count
>>    => that is actually a requirement to flash (as cp uses blocks of 4096, while
>>    flash with oob wants block of writesize+oobsize which are seldom multiples of
>>    512).
>
> I don't know much about disk-on-chip. Do you really have to write
> the images completely with oob data?
For the SPL, yes. The disk-on-chip IPL finds the SPL by checking the OOB of each
block : if it begins with "BIPO000, BIPO001, .. BIPO00<N>", then it's taken as
the Nth block of the SPL. The OOB part is crucial to load the SPL.

I think this is done that way so that even if there is a worn out block in the
middle (ie. a block that cannot be fixed anymore by ECC), it is skipped as it
has no more the "BIPOxxx" signature.

> However, I don't like the idea that we have to use a special command
> to flash an image.
...zip...
>
> /dev/nand0 is the full raw nand device. /dev/nand0.barebox is an example
> for a partition on this device (also raw, with bad blocks).
> /dev/nand0.barebox.bb is this partition, but this device automatically
> skips bad blocks and this also makes sure that only writesize aligned
> accesses go to the underlying layers. This way we can simply do a
> 'cp image /dev/nand0.kernel.bb' or a 'tftp barebox
> /dev/nand0.barebox.bb'
This relies on the fact that you assume your device writesize is a multiple of
512. If you write OOB as well, you're almost sure you won't have chunks of 512
bytes.

And when you say "/dev/nand0" is the full raw nand device, I think you mean the
"full raw *data* device without the OOB". The full raw device would be all
programmable flash memory, which encompasses data and OOB.

Now imagine this usecase : a new wonderfull flash filesystem is developped
... let's call it WFFS (wonderful filesystem). You don't want to have its
support to barebox (lack of time, resources), but you'd like to flash a
pre-prepared partition so that the linux kernel can use it as it's root
partition. How do you do it from your bootloader ?
If you had the /dev/mtdoob0 device, whatever filesystem structure is thought of,
the flashing method will always work.

> Would that be suitable for disk-on-chip aswell?
No, I don't think so, as the OOB has to be written as well, and therefore
multiples of 528 bytes should be possible. Note that if "cp" had a parameter for
the size of its buffer (currently 4096), then the "dd" would not be needed
anymore. A "cp -bs=528 image /dev/nand0.kernel" or "cp -bs=4224" would be
enough.

>> I was thinking that a "dd" command would be handy. Would you accept it in
>> barebox ?
>
> If it can do something else than the memcpy command, why not? The memcpy
> command is quite flexible and not limited to memory, see here:
But it suffers the same problem as cp, its buffer size of 4096, which is not a
multiple of 528 (in my case). So no, IMO it doesn't solve the problem.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
