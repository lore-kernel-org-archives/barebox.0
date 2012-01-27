Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqjKL-0004eq-Ik
 for barebox@lists.infradead.org; Fri, 27 Jan 2012 10:46:44 +0000
Date: Fri, 27 Jan 2012 11:46:31 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120127104631.GX6305@pengutronix.de>
References: <CALQ+5adUr7Sy2z-irN=1eeGGFPu=L9bqBMtmU7JtYJh_tK1NAg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALQ+5adUr7Sy2z-irN=1eeGGFPu=L9bqBMtmU7JtYJh_tK1NAg@mail.gmail.com>
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
Subject: Re: Booting linux on a custom iMX27 board
To: Igor <igt1972@gmail.com>
Cc: barebox@lists.infradead.org

Hello,

On Thu, Jan 26, 2012 at 09:23:32PM +0100, Igor wrote:
> Hi,
> =

> I 'm trying to port Barebox (2012.01.0) and make it successfully booting
> Linux
> on a custom board based on iMX27.
> I could successfully configure, compile and use Barebox on my MX27ADS boa=
rd,
> making it work both as a second stage bootloader (after Redboot)
> and as the first stage bootloader (booting the system from flash).
> =

> I modified the sources to adapt the low level init functions to my HW
> that has half the ram of the ev.board and a different flash
> (a Spansion S29GLxxx, same size of the one in the eva board).
> With my customized version of Barebox I can:
> - boot Linux (zImage, 2.6.32.3) using Barebox as a second stage bootloader
> (after Redboot)
> - start from Flash as a first stage bootloader, correctly initializing the
> system.
> =

> In the second case, indeed, the system seems to be fully working:
> I can read and write the flash partitions, I can complete successfully
> the ram test with "mtest", but... I cannot boot Linux!
> =

> I just get:
> "uncompressing linux... done booting the kernel"
> and then it's silence...
> =

> architecture_type is 846 (it's the one of the mx27ads).
> It should be right  considering that I used both for the kernel and for t=
he
> bootloader
> the configuration for imx27ads.
> =

> I also tryed to make it boot a more recent kernel version;
> I compiled a 3.0.8 with early_printk anabled to get more info about
> the initial crash/problem  but... Nothing!
> I didn't get nothing after "... done booting the kernel" also with the 3.=
0.8
> with low level debug and early_printk enabled.
Do you have configured the right output port for low level debug? Did
you pass the earlyprintk kernel parameter?

Do you have a jtag debugger?
 =

> What's the reason for the boot failure?
Probably not a bootloader problem.

Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
