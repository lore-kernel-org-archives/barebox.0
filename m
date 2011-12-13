Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaQYL-0003DE-7n
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 11:29:46 +0000
Date: Tue, 13 Dec 2011 12:29:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111213112936.GQ27267@pengutronix.de>
References: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
 <20111213092147.GC27267@pengutronix.de> <87vcpkycbl.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87vcpkycbl.fsf@free.fr>
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

On Tue, Dec 13, 2011 at 11:51:10AM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > I created the nand_oob device mainly for debugging purposes. It can be
> > convenient to be able to see the oob data. As this has no practical
> > use besides debugging it can be easily replaced with an interleaved
> > data/oob device. The oob device is quite inconvenient to use anyway
> > since it requires some calculating to get the oob data for a given
> > page.
> True. What we would need to make it simple :
>  - have arithmetic expressions in hush

Uhh, have you looked at the code? You can hardly even fix a bug
without introducing another one :(

>  - have a "dd" command with options skip,bs,count
>    => that is actually a requirement to flash (as cp uses blocks of 4096, while
>    flash with oob wants block of writesize+oobsize which are seldom multiples of
>    512).

I don't know much about disk-on-chip. Do you really have to write
the images completely with oob data?

However, I don't like the idea that we have to use a special command
to flash an image.

The Nand flashes we support all can have bad blocks. For this we have
the 'bb' devices. So currently what you see in /dev/ is:

crw-------     262144 dev/nand0.barebox.bb
crw-------     131072 dev/nand0.bareboxenv.bb
crw-------    2097152 dev/nand0.kernel.bb
crw-------   64552960 dev/nand0.root.bb
crw-------   64618496 dev/nand0.root
crw-------    2097152 dev/nand0.kernel
crw-------     131072 dev/nand0.bareboxenv
crw-------     262144 dev/nand0.barebox
cr--------    2097152 dev/nand_oob0
crw-------   67108864 dev/nand0

/dev/nand0 is the full raw nand device. /dev/nand0.barebox is an example
for a partition on this device (also raw, with bad blocks).
/dev/nand0.barebox.bb is this partition, but this device automatically
skips bad blocks and this also makes sure that only writesize aligned
accesses go to the underlying layers. This way we can simply do a
'cp image /dev/nand0.kernel.bb' or a 'tftp barebox
/dev/nand0.barebox.bb'

Would that be suitable for disk-on-chip aswell?

> 
> I was thinking that a "dd" command would be handy. Would you accept it in
> barebox ?

If it can do something else than the memcpy command, why not? The memcpy
command is quite flexible and not limited to memory, see here:

http://wiki.barebox.org/doku.php?id=commands:memcpy

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
