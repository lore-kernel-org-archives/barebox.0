Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X0EFV-0006Y6-J9
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 18:18:22 +0000
Date: Thu, 26 Jun 2014 20:17:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626181753.GC14257@pengutronix.de>
References: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
 <CAOpc7mEXX4GQh2oxGO1y7Y8bNsgf=DZzOwc9aBZwToftk=vv8w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mEXX4GQh2oxGO1y7Y8bNsgf=DZzOwc9aBZwToftk=vv8w@mail.gmail.com>
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
Subject: Re: New Documentation for barebox
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Jun 26, 2014 at 11:36:15AM +0200, Holger Schurig wrote:
> Some random annotations. Please comment, after feedback I'll provide a
> bunch of patches for this. I don't do the patches right away, because
> you may still work currently in that area, so it would only produce
> conflicts.
> 
> 
> User manuel "2. System setup" should be in an appendix. Nothing here
> is really related to barebox itself. It contains just helpful hints.

Ok.

> 
> I would capitalize some headlines, e.g. in the user manual "3.
> Barebox", "4. Networking", "6. Memory areas" etc   The same for the
> two headlines starting in lower-case in the main index.html. Maybe "3.
> barebox" can stay lowercase, because barebox is an "Eigenname", dunno.
> It looks however a bit ugly when it's lowercase.

I usually write barebox with a small 'b' even at the beginning of a
sentence, but you're right with the other headlines, they should start
with a capital letter.

> 
> After getting barebox there should be a brief mention of the branches,
> e.g. difference between next & master.

Very good. I thought that aswell, but forgot to write it.

> 
> Configuration: at "make menuconfig" also "make xconfig" should be mentioned.

make nconfig aswell?

> 
> "3.3. Compilation", shouldn't it be "make ARCH=xxx" ?  Ha, maybe it's
> just an old habit of me ...
> 
> "3.4 Starting Barebox" could get a link to the i.MX USB downloader.
> Very fine tool!

This is already in Documentation/boards/imx.rst where I think is a
better place.

> 
> "4.2. Network filesystems": hinting on automount for tftp-file system
> is a bit moot. Because at the "mount -t tftp AAA BBB" nothing happens,
> tftp is, so to say, an automount by itself. I haven't yet used NFS
> from barebox, but I guess it is the same there. So I'd remove the
> automount reference from this place completely.

I never thought about tftp being an automount by itself, but you are
right. NFS is different though, it really does network transfers during
mounting.

> 
> "5. Automount", the same, better use sdcard as an example,. not tftp.

Ok.

> 
> "7.2. Device parameters": Better write "HINT: barebox has ..." (e.g.
> with a colon). The same applies to the "NOTE" annotations.

Have you looked what is rendered with a colon? (I haven't)

> 
> "8.1 Hush features" should "let X=$A/2" be there?  Many people (ok, it
> was just me) look there if they need to calculate in the shell after
> finding out that X=$(($A/2)) doesn't work ...

Sounds good.

> 
> "10. Configuration variable": this should be neared the device
> parameters. I'd add a hint that with "devinfo global" one can see all
> defined global variables.
> 
> several places: the "barebox@Genesi Efika MX Smartbook:/" should be
> reduced to "barebox:/", as it is usually irrelevant if that example
> was done on an Efika board or not.

Agreed. That was just the prompt I copy/pasted, but right, it should be
reduced.

> 
> "11. Updating barebox", it says that a board can register an update
> handler, but doesn't have an example or a link to where / how this
> could be done. Or even a link directly to the git tree with a working
> example.

That would be something for a developer manual, but ok, a git link
should do it for now.

> 
> "13. Prebootloader": the sentence "Use the barebox-flash-image link
> which always points to the correct image" doesn't sound like proper
> english.

I am open for better suggestions. I tend to stand in my own way when I
think about a sentence for too long ;)

> 
> 
> Abbreviation should be capizalized as well, therefore headline "ram
> filesystem" -> "RAM filesystem"

Yes.

> 
> I think that in english one should write "file systems", not
> "filesystems". But i may be wrong. But I'm quite sure that the word
> "filesystemtype" (in the RAM file system chapter) is too long for any
> englishman :-)

You're probably right ;)

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
