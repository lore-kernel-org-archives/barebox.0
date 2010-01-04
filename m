Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [217.70.178.89] (helo=slow3-v.mail.gandi.net)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NRt3S-0007rO-VH
	for barebox@lists.infradead.org; Mon, 04 Jan 2010 19:57:35 +0000
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by slow3-v.mail.gandi.net (Postfix) with ESMTP id 6311037EEC
	for <barebox@lists.infradead.org>; Mon,  4 Jan 2010 20:26:40 +0100 (CET)
Date: Mon, 4 Jan 2010 20:21:53 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100104192153.GA30824@darwin>
References: <20100101194822.GR5093@darwin> <4B3E5CCD.60400@eukrea.com>
	<20100101214826.GS5093@darwin>
	<20100104120758.GC4976@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100104120758.GC4976@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: confusion about relocation (ARM)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

hi sascha,

El Mon, Jan 04, 2010 at 01:07:58PM +0100 Sascha Hauer ha dit:

> On Fri, Jan 01, 2010 at 10:48:26PM +0100, Matthias Kaehlcke wrote:
> > El Fri, Jan 01, 2010 at 09:36:29PM +0100 Eric B=E9nard ha dit:
> > =

> > > Le 01/01/2010 20:48, Matthias Kaehlcke a =E9crit :
> > >> a comment in start_barebox() says 'We are running from RAM now', so i
> > >> deduced SDRAM must work. but after having a look at start-arm.S i'm a
> > >> little bit confused. as far as i understand the barebox code is copi=
ed
> > >> to RAM in copy_loop(). what i don't see is where the program counter
> > >> is set to the address in RAM?
> > >>
> > > in arch/arm/cpu/start-arm.S @ line 245 :
> > >         ldr     pc, _start_armboot
> > =

> > i saw this line, but i don't understand how it comes that
> > the address at _start_armboot points to RAM and not to the flash.
> =

> When your barebox image is linked to RAM (that is 0x05700000 in your
> case) _start_armboot is in RAM, too.
> =

> > =

> > another question: how does ARCH_TEXT_BASE fit in here? i defined it as
> > 0x05700000, but in the barebox image _TEXT_BASE is 0x00000000
> =

> Have a look at barebox.S, it should look like:
> =

> barebox:     file format elf32-littlearm
> =

> =

> Disassembly of section .text:
> =

> 87f00000 <_start>:
> ...

thanks for your reply!

finally i figured out what was going wrong: after getting compiler errors
when using a config file created from scratch, i took a defconfig of
another ARM board as starting point. this board defines
CONFIG_TEXT_BASE as 0x00000000, in consequence ARCH_TEXT_BASE
(0x05700000) of the edb93xx board wasn't used.

after setting CONFIG_TEST_BASE to the correct value i got a barebox
prompt :)

-- =

Matthias Kaehlcke
Embedded Linux Developer
Barcelona

      Debugging is like alien abduction. Large blocks of time disappear,
                    for which you have no explanation
                                                                 .''`.
    using free software / Debian GNU/Linux | http://debian.org  : :'  :
                                                                `. `'`
gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
