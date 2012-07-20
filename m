Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsEhw-0005yz-It
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 15:01:55 +0000
Date: Fri, 20 Jul 2012 17:01:06 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20120720150106.GA20593@sig21.net>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
 <1342685582-13244-10-git-send-email-s.hauer@pengutronix.de>
 <20120719170845.GA3303@sig21.net>
 <20120719174125.GC30009@pengutronix.de>
 <20120719183238.GA3721@sig21.net>
 <20120719204212.GH30009@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120719204212.GH30009@pengutronix.de>
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
Subject: Re: [PATCH 9/9] Add compressed image support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 19, 2012 at 10:42:12PM +0200, Sascha Hauer wrote:
> On Thu, Jul 19, 2012 at 08:32:38PM +0200, Johannes Stezenbach wrote:
> > > > ...
> > > >   LD      barebox
> > > > arm-linux-ld -EL  -Map barebox.map -static --gc-sections -o barebox \
> > > >                 -T arch/arm/lib/barebox-compressed.lds  \
> > > >                 --start-group  common/built-in.o  drivers/built-in.o  commands/built-in.o  lib/built-in.o  crypto/built-in.o  net/built-in.o  fs/built-in.o  arch/arm/boards/foo/built-in.o  arch/arm/mach-foo/built-in.o  arch/arm/lib/built-in.o  arch/arm/cpu/built-in.o piggy.lzo.o --end-group
> > > > 
> > > > 
> > > > It shouldn't link all the -built-in.o into the uncompressor, should it?
> > > > Or is it supposed to work via --gc-sections trick?
> > > 
> > > Yes, it works using --gc-sections. Are you building a defconfig or a
> > > custom one? If the error above is correct start_barebox is referenced
> > > from the decompressor code. This should not happen.
> > 
> > I'm building a custom one (unpublished code).  It has some SPI flash
> > boot assembly code, I guess that might cause the issue wrt the new section
> > annotations.  I'll look at it tomorrow.  However, I still wonder
> > about the empty $(barebox-compressed)?
> 
> It's empty here aswell, so this shouldn't be a problem. Though I should
> probably simpy remove it.

OK, got it to work now.  I had a "b start" in my SPI flash boot code
to skip low level init when it was loaded into RAM via JTAG.
That needed to be changed to "b compressed_start".  It seems
there is no real support in ld to debug this, I added --cref
to LDFLAGS_barebox but I still couldn't see why stuff from
common/built-in.o gets pulled into the uncompressor.

BTW, I briefly tried the lzo update from
http://lkml.org/lkml/2012/7/16/355
(don't have much time to do real benchmarks, just tried
"time uncompress somefile.lzo somefile"),
but it seems to be slower on ARM926 than the old version
(504ms vs 362ms).


Thanks,
Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
