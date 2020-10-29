Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYEJJ-0005RV-70
 for barebox@lists.infradead.org; Thu, 29 Oct 2020 20:14:14 +0000
Received: by mail-lf1-x144.google.com with SMTP id l2so4990072lfk.0
 for <barebox@lists.infradead.org>; Thu, 29 Oct 2020 13:14:11 -0700 (PDT)
Date: Thu, 29 Oct 2020 23:13:58 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20201029201357.GA7832@chr>
References: <20201023214522.21130-1-pmamonov@gmail.com>
 <20201028094737.GZ26805@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201028094737.GZ26805@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, rhi@pengutronix.de

Hi, Sascha,

On Wed, Oct 28, 2020 at 10:47:37AM +0100, Sascha Hauer wrote:
> Hi Peter,
> 
> There are a few more things to fix. I just saw I never answered to your
> last mail.

> [...]

> > +    errno = 0;
> > +    wantbytes = (size_t) strtoull_suffix(argv[optind], 0, 0);
> > +    if (errno != 0) {
> > +        printf("failed to parse memory argument");
> > +        return COMMAND_ERROR_USAGE;
> > +    }
> 
> strtoull_suffix() doesn't set errno. There is currently no way to detect
> an error from strtoull_suffix().

errno is checked throughout the original code, including this slightly modified 
piece. Should I remove those checks or keep them for the sake of future errno 
support?

> [...]

> > +        printf("  %-20s: ", "Stuck Address");
> > +        console_flush();
> 
> Why did you add all these console_flush() throughout the code?


I've merely replaced `fflush(stdout)` with `console_flush()` (see the original: 
https://github.com/pmamonov/barebox/blob/31fd9d18f37ed58e5e559fe2ad6686066966f86e/commands/memtester/memtester.c#L374).  
I choosed to keep all those (excessive) flushes as is, since most of the output 
is a progress indicator which should be displayed immediately and I wasn't sure 
that some type of barebox console won't cache the output.


PS Will address other comments in the next patch.

Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
