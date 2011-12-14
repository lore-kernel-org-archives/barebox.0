Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Raph2-0005LN-SX
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 14:20:26 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
 <20111213092147.GC27267@pengutronix.de> <87vcpkycbl.fsf@free.fr>
 <20111213112936.GQ27267@pengutronix.de> <87r508y7gz.fsf@free.fr>
 <20111213185847.GY27267@pengutronix.de> <87borbxyi1.fsf@free.fr>
 <20111214110235.GD27267@pengutronix.de>
Date: Wed, 14 Dec 2011 15:20:13 +0100
In-Reply-To: <20111214110235.GD27267@pengutronix.de> (Sascha Hauer's message
 of "Wed, 14 Dec 2011 12:02:35 +0100")
Message-ID: <877h1zxmjm.fsf@free.fr>
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

> On Wed, Dec 14, 2011 at 11:01:58AM +0100, Robert Jarzmik wrote:
>>  - I think it's cleaner to do a "cp file | dd bs=528 of=/dev/mtdoob"
>
> With this approach (apart from | which we don't have in barebox) how do
> you handle bad blocks?
> will they be silently skipped (that is the file
> position is silently increased by one block by the device driver) or
> will dd fail in this case?
For the lack of piped command, that's an issue I hadn't thought of. I thought
that "struct pipe" in hush.c implied piped execution ... silly me.

> How is lseek handled? Will it position the
> file pointer to the physical address on the device or will lseek
> skip bad blocks?
No skip of bad blocks, simple physical positionning.

> Do you really need partial writes if you have one partition for the IPL
> and one for the SPL?
> BTW I have some work in progress to overcome this no lseek limitation.
No I don't need them ATM.

> Don't mind. If you find it useful I will accept a patch for it. A
> command which can be switched off costs nothing. And once I find
> a usecase for that I'll be happy that it's there.
Cool.

> The mtdoob device still does not feel very good to me. What about
> partitions? If you partition a mtd device the partitions are normally
> 512b * numpages. On the mtdoob device they are 528b * numpages which
> means that when you have something like this in your environment:
>
> addpart nand0 128k(barebox),128k(env)
>
> The corresponding partition on a mtd+oob device would be:
>
> addpart nand0mtdoob 135168(barebox),135168(env)
>
> There is no easy way in the environment to keep this in sync.
True, the "135168" does look ugly indeed :)

> I get the feeling that what we really want is to resemble the nand_write
> mtd utility for barebox. It could do everything you want without
> changing the current mtd layer and it would also be possible for other
> people to turn it off without overhead.
Yes, sounds good to shift the complexity in a nand dedicated command.
Let's call it option (4).

The tradeoff is that you won't be able to "TFTP" directly into a partition, as
there is no "tfp | nandwrite -o /dev/mtd0" possible.
Note: that doesn't bother me much, because for security I'd rather have the
update process in 2 steps :
 - first from TFTP to local file (in RAM or on SDCard)
 - then from RAM/SDCard onto the MTD device

> (Another idea I have (though I'm unsure if it's good), is: the bb
> partitions are currently created with the 'nand -a' command. This
> command with different parameters could also create other partition
> types:
>
>  -b	create a oob only device
>  -c	create a mtd+oob device
Yep, that's option (5).

As this discussion goes on, I shifted a bit my mind now. I prefer the
"nandwrite" command (with --autoplace, --noecc, --oob, --raw, --start,
--length), and the complementary "nandread", which should handle all nand
specific write needs (and my beloved dd of course :))
I was even thinking of having a unique "nand" command :
 - nand -a <dev> (legacy)
 - nand -d <dev> (legacy)
 - nand -b <ofs> <dev> (legacy)
 - nand --write [--autoplace] [--noecc] [--oob] [--skipbad] [--raw]
   [--start ofs] [--length lg] <dev> <srcfile>
 - nand --read [--noecc] [--oob] [--start ofs] [--length lg] <dev> <dstfile>

The mtd+oob device would not be necessary with this command, and offsets and
sizes could benefit the "128k" notation.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
