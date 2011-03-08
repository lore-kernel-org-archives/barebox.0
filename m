Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwvR6-0001jJ-BC
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 11:50:45 +0000
Date: Tue, 8 Mar 2011 12:50:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110308115042.GV29521@pengutronix.de>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01165@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01165@SRV-VS06.TELEVIC.COM>
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
Subject: Re: test app
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Mar 07, 2011 at 02:05:32PM +0100, Vanalme Filip wrote:
> We would like to have a kind of small test application, that can be
> started from the barebox prompt, to do some basic tests on some
> hardware components. What's the best way to do that ? E.g. can I add
> that test application to the environment and would this be good
> practice ? Or do I better extend the barebox commands with my own
> command to start the tests ? Maybe there's an example on how to do it
> ?

Besides what Baruch already pointed out you can of course create your
own command. Maybe you don't want to have this command in your
production bootloader, then you could also build a barebox for
development only and start this as a second stage loader (tftp
barebox.bin /dev/ram0; go /dev/ram0).

Another possibility would be to use modules. barebox supports modules
similar to the kernel. When you build your own command as a module
you can do a 'tftp mycommand.ko; insmod mycommand.ko' and can use
your command then. Anyway, this feature is a bit experimental and
I can't really recommend this unless you know exactly what you
are doing.

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
