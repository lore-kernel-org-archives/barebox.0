Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZPBD-0007h5-ON
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 20:40:05 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 26 Feb 2016 20:39:37 +0000
Message-ID: <1456519213.25961.46.camel@rtred1test09.kymeta.local>
References: <3814032.giLfJ2gLGN@dabox>	 <20160218161449.GB4207@pengutronix.de>
 <2696845.OufSg50XfY@dabox>	 <1751869.VnkfJctKHi@dabox>
 <20160226072506.GN3939@pengutronix.de>
In-Reply-To: <20160226072506.GN3939@pengutronix.de>
Content-Language: en-US
Content-ID: <EA04E76242B0A74BB721B7669AB922C3@kymetacorp.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v7] Terasic DE0-Nano-SoC: add support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>, Tim Sander <tim@krieglstein.org>

On Fri, 2016-02-26 at 08:25 +0100, Sascha Hauer wrote:
> BTW I noticed the xload defconfig does not build anymore with this patch
> applied because the image gets too big. I searched for the reason at got
> a step closer. The SDRAM sequencer code is compiled into the image
> multiple times, one time for each board. The intention was that the
> linker throws away the unused copies via -ffunction-section and
> --gc-sections. Unfortunately this does not work because the functions in
> the different copies all end up with the same name. So for example we
> have mem_precharge_and_activate() three times in the image. Only one
> version is used, but the others can't be thrown away because they are in
> the same section.

There are two possible optimization here.

As you say, if the two copies where in different sections, then all but
one could be GCed by the linker, as only one will be in the call tree
starting from the entry function for the board specific pbl being
linked.

But it's also the case that text of all the copies of
mem_precharge_and_activate() is exactly the same.  And so they could
also be merged as identical, i.e. via ICF.

I have an xloader that supports four socfpga board variants by
exploiting the fact that most of the "board specific" sequencer, scan
chain, pinmux, etc. data is in fact identical among all the board
variants.  I can't use GC for this, as all the board data is referenced
in the single xload image which supports all the boards.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
