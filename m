Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYQnS-0002SD-Ep
 for barebox@lists.infradead.org; Fri, 30 Oct 2020 09:34:12 +0000
Date: Fri, 30 Oct 2020 10:34:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201030093406.GK26805@pengutronix.de>
References: <20201023214522.21130-1-pmamonov@gmail.com>
 <20201028094737.GZ26805@pengutronix.de> <20201029201357.GA7832@chr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201029201357.GA7832@chr>
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
Subject: Re: [PATCH v2] commands: import memtester 4.3.0 from Debian GNU/Linux
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org, rhi@pengutronix.de

On Thu, Oct 29, 2020 at 11:13:58PM +0300, Peter Mamonov wrote:
> Hi, Sascha,
> 
> On Wed, Oct 28, 2020 at 10:47:37AM +0100, Sascha Hauer wrote:
> > Hi Peter,
> > 
> > There are a few more things to fix. I just saw I never answered to your
> > last mail.
> 
> > [...]
> 
> > > +    errno = 0;
> > > +    wantbytes = (size_t) strtoull_suffix(argv[optind], 0, 0);
> > > +    if (errno != 0) {
> > > +        printf("failed to parse memory argument");
> > > +        return COMMAND_ERROR_USAGE;
> > > +    }
> > 
> > strtoull_suffix() doesn't set errno. There is currently no way to detect
> > an error from strtoull_suffix().
> 
> errno is checked throughout the original code, including this slightly modified 
> piece. Should I remove those checks or keep them for the sake of future errno 
> support?

I'd say it's not worth it to keep compatibility to the original code in
this file. There are many small things that could/should be done
differently, so just drop errno from the code, use kstrtoul where
appropriate (unlike simple_strtoul kstrto* return an error).

> 
> > [...]
> 
> > > +        printf("  %-20s: ", "Stuck Address");
> > > +        console_flush();
> > 
> > Why did you add all these console_flush() throughout the code?
> 
> 
> I've merely replaced `fflush(stdout)` with `console_flush()` (see the original: 
> https://github.com/pmamonov/barebox/blob/31fd9d18f37ed58e5e559fe2ad6686066966f86e/commands/memtester/memtester.c#L374).  
> I choosed to keep all those (excessive) flushes as is, since most of the output 
> is a progress indicator which should be displayed immediately and I wasn't sure 
> that some type of barebox console won't cache the output.

barebox doesn't cache anything in the console layer. Only the UART
drivers do in their FIFOs, so console_flush() merely waits until the
hardware FIFOs are drained. Normally there is no reason to use
console_flush(), it's mainly useful to call it right before resetting
the board, before booting Linux, or before switching the baudrate.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
