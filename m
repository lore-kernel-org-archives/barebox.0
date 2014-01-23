Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6GK8-0001gD-Ld
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 09:11:45 +0000
Date: Thu, 23 Jan 2014 10:11:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140123091109.GG16215@pengutronix.de>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
 <20140122111558.GA24917@pengutronix.de>
 <20140123013529.b2e75ff11bcbe9492a743726@gmail.com>
 <20140123070218.GF16215@pengutronix.de>
 <20140123115911.cd00a64f6beef7790adb5f90@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140123115911.cd00a64f6beef7790adb5f90@gmail.com>
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
Subject: Re: [PATCH 00/13] MIPS: add initial Loongson-based boards support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 23, 2014 at 11:59:11AM +0400, Antony Pavlov wrote:
> On Thu, 23 Jan 2014 08:02:19 +0100
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Thu, Jan 23, 2014 at 01:35:29AM +0400, Antony Pavlov wrote:
> > > On Wed, 22 Jan 2014 12:15:58 +0100
> > > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > 
> > > > On Sat, Jan 18, 2014 at 07:12:50PM +0400, Antony Pavlov wrote:
> > > > make: *** Waiting for unfinished jobs....
> > > > arch/mips/boards/loongson-ls1b/serial.c:5:28: error: mach/loongson1.h: No such file or directory
> > > > arch/mips/boards/loongson-ls1b/serial.c: In function 'console_init':
> > > > arch/mips/boards/loongson-ls1b/serial.c:17: warning: implicit declaration of function 'KSEG1ADDR'
> > > > arch/mips/boards/loongson-ls1b/serial.c:17: error: 'LS1X_UART2_BASE' undeclared (first use in this function)
> > > > arch/mips/boards/loongson-ls1b/serial.c:17: error: (Each undeclared identifier is reported only once
> > > > arch/mips/boards/loongson-ls1b/serial.c:17: error: for each function it appears in.)
> > > > 
> > > > arch/mips/mach-loongson/include/mach/loongson1.h and
> > > > arch/mips/mach-loongson/Makefile seem to be missing. Could you respin with the missing files?
> > > 
> > > The missing files are from "[PATCH 04/13] MIPS: add initial Loongson-1X SoC stuff".
> > > 
> > > The missed patch is registered in maillist: see http://lists.infradead.org/pipermail/barebox/2014-January/017521.html
> > 
> > Indeed. For some reason I didn't receive that mail. I picked it from the
> > ml archive now.
> > 
> 
> May be some other mails affected. Please check this trivial patch too:
>   http://lists.infradead.org/pipermail/barebox/2013-December/017226.html

That one was not missing in my inbox, it was my own failure of not
applying it. Did that now.

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
