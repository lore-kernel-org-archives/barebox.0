Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YH8Lj-0002k8-D4
 for barebox@lists.infradead.org; Fri, 30 Jan 2015 09:58:52 +0000
Received: from kiwi.hi.pengutronix.de ([2001:67c:670:100:1d::c3] helo=kiwi)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1YH8LM-00085H-8U
 for barebox@lists.infradead.org; Fri, 30 Jan 2015 10:58:28 +0100
Received: from jlu by kiwi with local (Exim 4.84)
 (envelope-from <jlu@pengutronix.de>) id 1YH8LM-0004Z1-06
 for barebox@lists.infradead.org; Fri, 30 Jan 2015 10:58:28 +0100
Message-ID: <1422611907.12367.12.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Fri, 30 Jan 2015 10:58:27 +0100
In-Reply-To: <20150130074017.GP12209@pengutronix.de>
References: <20150129091229.GA424@gmail.com>
 <20150129092151.GE12209@pengutronix.de> <87k305o0cd.fsf@free.fr>
 <20150130074017.GP12209@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: Access to first 0x1000 byte on imx53/imx6
To: barebox@lists.infradead.org

On Fr, 2015-01-30 at 08:40 +0100, Sascha Hauer wrote:
> On Thu, Jan 29, 2015 at 08:25:54PM +0100, Robert Jarzmik wrote:
> > Sascha Hauer <s.hauer@pengutronix.de> writes:
> > 
> > > On Thu, Jan 29, 2015 at 10:12:46AM +0100, Wjatscheslaw Stoljarski
> wrote:
> > >> Hello,
> > >> 
> > >> If I try to read from first 4k RAM on imx53/imx6, with md or from
> code,
> > >> barebox show stacktrace with mesage:
> > >> "unable to handle NULL pointer dereference at address 0x...".
> > >> Is it possible in some way do that?
> > >
> > > The only way I know is to disable CONFIG_MMU in the config.
> > I think the solution in arch/arm/boards/mioa701/board.c (remapping
> the 0x0
> > address) should work here :
> >       docg3_iospace = map_io_sections(0x0, (void *)0xe0000000,
> 0x2000);
> 
> We could create a /dev/zeropage with the code above. That would make
> the zero page generally available. I don't know if this is worth the
> effort though.

Couldn't we special-case the zero page in /dev/mem instead?

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
