Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YH6C0-0006Ub-03
 for barebox@lists.infradead.org; Fri, 30 Jan 2015 07:40:41 +0000
Date: Fri, 30 Jan 2015 08:40:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150130074017.GP12209@pengutronix.de>
References: <20150129091229.GA424@gmail.com>
 <20150129092151.GE12209@pengutronix.de> <87k305o0cd.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87k305o0cd.fsf@free.fr>
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
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Thu, Jan 29, 2015 at 08:25:54PM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > On Thu, Jan 29, 2015 at 10:12:46AM +0100, Wjatscheslaw Stoljarski wrote:
> >> Hello,
> >> 
> >> If I try to read from first 4k RAM on imx53/imx6, with md or from code,
> >> barebox show stacktrace with mesage:
> >> "unable to handle NULL pointer dereference at address 0x...".
> >> Is it possible in some way do that?
> >
> > The only way I know is to disable CONFIG_MMU in the config.
> I think the solution in arch/arm/boards/mioa701/board.c (remapping the 0x0
> address) should work here :
> 	docg3_iospace = map_io_sections(0x0, (void *)0xe0000000, 0x2000);

We could create a /dev/zeropage with the code above. That would make the
zero page generally available. I don't know if this is worth the effort
though.

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
