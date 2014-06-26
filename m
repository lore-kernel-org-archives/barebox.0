Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x22d.google.com ([2607:f8b0:4002:c01::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X066e-000814-SO
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 09:36:37 +0000
Received: by mail-yh0-f45.google.com with SMTP id t59so1949831yho.32
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 02:36:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
References: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
Date: Thu, 26 Jun 2014 11:36:15 +0200
Message-ID: <CAOpc7mEXX4GQh2oxGO1y7Y8bNsgf=DZzOwc9aBZwToftk=vv8w@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Some random annotations. Please comment, after feedback I'll provide a
bunch of patches for this. I don't do the patches right away, because
you may still work currently in that area, so it would only produce
conflicts.


User manuel "2. System setup" should be in an appendix. Nothing here
is really related to barebox itself. It contains just helpful hints.

I would capitalize some headlines, e.g. in the user manual "3.
Barebox", "4. Networking", "6. Memory areas" etc   The same for the
two headlines starting in lower-case in the main index.html. Maybe "3.
barebox" can stay lowercase, because barebox is an "Eigenname", dunno.
It looks however a bit ugly when it's lowercase.

After getting barebox there should be a brief mention of the branches,
e.g. difference between next & master.

Configuration: at "make menuconfig" also "make xconfig" should be mentioned.

"3.3. Compilation", shouldn't it be "make ARCH=xxx" ?  Ha, maybe it's
just an old habit of me ...

"3.4 Starting Barebox" could get a link to the i.MX USB downloader.
Very fine tool!

"4.2. Network filesystems": hinting on automount for tftp-file system
is a bit moot. Because at the "mount -t tftp AAA BBB" nothing happens,
tftp is, so to say, an automount by itself. I haven't yet used NFS
from barebox, but I guess it is the same there. So I'd remove the
automount reference from this place completely.

"5. Automount", the same, better use sdcard as an example,. not tftp.

"7.2. Device parameters": Better write "HINT: barebox has ..." (e.g.
with a colon). The same applies to the "NOTE" annotations.

"8.1 Hush features" should "let X=$A/2" be there?  Many people (ok, it
was just me) look there if they need to calculate in the shell after
finding out that X=$(($A/2)) doesn't work ...

"10. Configuration variable": this should be neared the device
parameters. I'd add a hint that with "devinfo global" one can see all
defined global variables.

several places: the "barebox@Genesi Efika MX Smartbook:/" should be
reduced to "barebox:/", as it is usually irrelevant if that example
was done on an Efika board or not.

"11. Updating barebox", it says that a board can register an update
handler, but doesn't have an example or a link to where / how this
could be done. Or even a link directly to the git tree with a working
example.

"13. Prebootloader": the sentence "Use the barebox-flash-image link
which always points to the correct image" doesn't sound like proper
english.


Abbreviation should be capizalized as well, therefore headline "ram
filesystem" -> "RAM filesystem"

I think that in english one should write "file systems", not
"filesystems". But i may be wrong. But I'm quite sure that the word
"filesystemtype" (in the RAM file system chapter) is too long for any
englishman :-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
