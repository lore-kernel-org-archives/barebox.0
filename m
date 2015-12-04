Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a4vur-0006E5-Ax
 for barebox@lists.infradead.org; Fri, 04 Dec 2015 19:21:13 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 4 Dec 2015 19:19:41 +0000
Message-ID: <1449256786.26955.19.camel@rtred1test09.kymeta.local>
References: <1449105900.26955.1.camel@rtred1test09.kymeta.local>
 <1449196125.26955.13.camel@rtred1test09.kymeta.local>
 <20151204073048.GV11966@pengutronix.de>
In-Reply-To: <20151204073048.GV11966@pengutronix.de>
Content-Language: en-US
Content-ID: <87C7C5135DA9D2479A2CA3ABCEC5BA0E@kymetacorp.com>
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
Subject: Re: [PATCH] ARM: Remove kernel booting call for thumb2 mode
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Fri, 2015-12-04 at 08:30 +0100, Sascha Hauer wrote:
> On Fri, Dec 04, 2015 at 02:28:40AM +0000, Trent Piepho wrote:
> > 
> > This doesn't seem necessary for the same reason as the code in
> > start_linux.  THUMB2 selects AEABI, which in turn turns on the aapcs
> > abi, which requires interworking safe indirect calls.  And again, the
> > bootstrap code doesn't use a special call sequence so if it didn't work
> > that would be broken too.
> > 

> 
> This is a bug. We want to shift argv[] by one, not by two. I must
> accidently have done this twice.
> As you note the thumb2 execution code is unnecessary anyway, we can
> remove the bug by removing the code.

Ok, I'll send a patch for it.  I thought maybe there was some sort of
gcc bug or deficiency back in 2011 that made this necessary.  Though I
did search for bug with thumb interworking or "mov pc, reg" and didn't
find any that looked like they would be relevant.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
