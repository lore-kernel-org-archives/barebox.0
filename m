Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYuA0-0004Fu-2I
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 07:46:52 +0000
Date: Thu, 15 Nov 2012 08:46:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121115074650.GT10369@pengutronix.de>
References: <4801591.VRVUpK1jDH@linux-xmcx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4801591.VRVUpK1jDH@linux-xmcx>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: TX53-8030 Memory Speed
To: =?iso-8859-15?Q?G=FCnter?= Gebhardt <guenter.gebhardt@freenet.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 15, 2012 at 07:59:22AM +0100, G=FCnter Gebhardt wrote:
> Hello,
> =

> we integrated KARO TX53-8030 support into our barebox 2012.07.0 some mont=
h =

> ago.
> =

> We measured the performance of memcpy() and found that the throughput is =
only =

> 19MB/s. We expected it to be something like 10 times faster.
> =

> We saw that there is support for the TX-53 in general within the head of =

> barebox.
> =

> Within the file arch/arm/boards/karo-tx53/flash_header.c it =

> is stated that it only supports TX53 1011 (i.e. 1GB RAM).

Support for the TX53-8030 is currently in the -next branch, but
unfortunately it doesn't seem to work properly, see this thread:

http://lists.infradead.org/pipermail/barebox/2012-November/010983.html

> =

> Do You have settings applicable to our device? =

> =

> What throughput do You expect from this device? =


Just rechecked on my 1011 board (I can't find the 8030 board atm,
otherwise I would have fixed the support already), it's about
230MB/s using memcpy on the commandline. Probably you don't have
the MMU turned on which means you're running without data chaches.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
