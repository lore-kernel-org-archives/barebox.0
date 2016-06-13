Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x230.google.com ([2607:f8b0:4001:c0b::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCaVS-0002Xn-TB
 for barebox@lists.infradead.org; Mon, 13 Jun 2016 22:38:55 +0000
Received: by mail-it0-x230.google.com with SMTP id e5so54112323ith.0
 for <barebox@lists.infradead.org>; Mon, 13 Jun 2016 15:38:32 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 13 Jun 2016 18:38:31 -0400
Message-ID: <CAO6XYUuv_VTv6trEFhjzZ=ey+2addAGBRsdqKQwFgbobaHLi-w@mail.gmail.com>
From: "Michael D. Burkey" <mdburkey@gmail.com>
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
Subject: Boot iMX6 from IRAM on new Variscite SOM
To: barebox@lists.infradead.org

I have already spoken with Sascha about this a bit, but figured I'd
throw it out here in case anyone had any suggestions.

Specifically, I'm updating the support for the Variscite SOM to handle
the newest version of their SOM -- which now includes an EEPROM that
contains a "DCD-like" script for configuring the DDR3 timing
parameters.

Essentially this means that I have to follow a boot procedure similar
to that used by the current Wandboard setup, which loads part of
barebox into IRAM/OCRAM on the iMX6, read/configures the DDR3 timings,
then reloads barebox into DDR3 and starts it.

I think I have gotten things more or less setup at this point and have
copied the setup from the Wandboard, but am having trouble getting
things to actually start from the internal RAM on the board.

For now, I have a correct DCD already built-in that preconfigures DDR3
"just in case" and if I set the load address to be DDR3, then
everything starts up as normal -- which in and of itself points to a
problem.

My suspicion is that the boot ROM is still trying to load the full
image rather than just part of it -- which means that, when I point it
to the IRAM/OCRAM, it is writing to the aliased memory regions of the
built in RAM and overwriting itself in the process.

What/where actually controls the length of the code that gets
automatically loaded by the iMX6 internal boot ROM and what needs to
be updated?

Any additional suggestions/tips on how to get things working would be
greatly appreciated. I feel like I'm close, but simply missing
something somewhere.

Thanks!
Michael Burkey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
