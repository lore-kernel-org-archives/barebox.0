Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1XDZ-0002pc-30
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 08:13:25 +0000
Date: Fri, 10 Jan 2014 09:13:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140110081302.GV6750@pengutronix.de>
References: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
 <20131212080359.GE24559@pengutronix.de>
 <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
 <20131212195806.GL24559@pengutronix.de>
 <CAJyuEecPnTHU2rTgJzkvkv3p56f32jqaS1aQykn91TNGvcUawg@mail.gmail.com>
 <CAJyuEeejqixPzCez0EZU9hhQkO3f8yvpARLGLwPgQUfGBASZug@mail.gmail.com>
 <CAJyuEee+jyV6DTs3ZGYTercny4FNnxjj_PwWxNmjAEhe2eqeBg@mail.gmail.com>
 <20131219080917.GW24559@pengutronix.de>
 <CAJyuEedJxNN9mPJzAvE6d6kNHCaEqcF-BED0L+r2VCv7e6=T6A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJyuEedJxNN9mPJzAvE6d6kNHCaEqcF-BED0L+r2VCv7e6=T6A@mail.gmail.com>
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
Subject: Re: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Michael Burkey <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 09, 2014 at 02:20:33AM -0500, Michael Burkey wrote:
> A few more comments & questions regarding getting the Variscite SOM up
> and working (and it's pretty close to fully working at this point):
> 
> First off, what works:
> 
> 1) Booting from NAND, SD, etc to barebox
> 2) Nand programming under barebox
> 3) GPIO
> 4) I2C
> 5) USB
> 6) RS232
> etc.
> 
> Basically, things are working pretty well....up to the point of
> starting the Linux Kernel.
> 
> Whenever I try to do a "bootm" of pretty much any image type, I run
> into issues. I *think* I have everything setup properly on the Linux
> command line in the way of bootargs (but I'm still checking a couple
> of things). It doesn't matter whether I am launching the kernel from a
> partition (NAND), USB, memory, etc. The result is the same regardless.
> It *does* decode the kernel header properly, display the version, the
> correct load address, etc -- so that's not the issue.
> 
> One thing is that I am using an older kernel that is not setup for
> devicetree -- which is hopefully not a major problem. Basically,
> everything is specified "the old way" in the kernel platform/board
> files (and it works fine from u-boot). And, at least for now, moving
> to a newer kernel isn't an option.
> 
> Under barebox, I either get a "launching kernel with devicetree" and
> then it hangs,

Ok, this is expected since your kernel does not have devicetree support

> or, if I do an "oftree -f" and then do a bootm,

That's the correct thing to do. With this it should work.

> I get
> an "unable to dereference NULL pointer" and a restart.

You could enable:

[*] enable arm exception handling support
[*]   enable stack unwinding support

and

[*] kallsyms

With this barebox prints a backtrace giving a clue where the NULL
pointer deref happens.

> 
> Any quick guesses, suggestions as to what I may be doing wrong?
> Is there a proper way to tell barebox (when started with devicetree)
> to NOT try to send the devicetree on to the kernel?
> 
> Also, for the moment, I am using Kobs-NG under Linux to actually
> program barebox itself into NAND. Once there, it works fine and I can
> use barebox itself to program the other NAND partitions. Is adding
> support for writing out the FCB/DBBT to the first NAND blocks anywhere
> in the current (near-term) to do list for barebox? I noticed that it
> looked like you had something similar to this already in barebox for a
> couple of the other, earlier iMX cores.
> 
> 
> Lastly, once I do get this semi-final issue fixed, what is the best
> way to submit the code for the Variscite SOM to the main barebox tree
> for everyone else to have access to?

Just post the patches to the list. I'll include them then.

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
