Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZrMln-00056T-Nn
 for barebox@lists.infradead.org; Wed, 28 Oct 2015 09:11:48 +0000
Received: by wicfv8 with SMTP id fv8so4526524wic.0
 for <barebox@lists.infradead.org>; Wed, 28 Oct 2015 02:11:25 -0700 (PDT)
Date: Wed, 28 Oct 2015 10:11:19 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20151028091118.GA7119@omega>
References: <1445934602-25903-1-git-send-email-s.hauer@pengutronix.de>
 <20151027165459.GA4592@omega>
 <20151028061755.GP25308@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151028061755.GP25308@pengutronix.de>
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
Subject: Re: memtest updates
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi,

On Wed, Oct 28, 2015 at 07:17:55AM +0100, Sascha Hauer wrote:
> On Tue, Oct 27, 2015 at 05:55:04PM +0100, Alexander Aring wrote:
> > On Tue, Oct 27, 2015 at 09:29:53AM +0100, Sascha Hauer wrote:
> > > This series has some updates for the memory test. The output and the
> > > code are made more compact and some additional options are added. Also
> > > the remap_range function is reworked.
> > > 
> > 
> > I currently try to build next with memtest, I got the following issue:
> > 
> > commands/memtest.c: In function 'do_test_one_area':
> > commands/memtest.c:50:2: error: implicit declaration of function 'mem_test_moving_inversions_pattern' [-Werror=implicit-function-declaration]
> >   ret = mem_test_moving_inversions_pattern(r->r->start, r->r->end, 0xdeadbeef);
> > 
> > after running grep I realized and there is no
> > "mem_test_moving_inversions_pattern" function. :-(
> > 
> > Then:
> > 
> > after cutting some words from this function and running grep again, then
> > I found a "mem_test_moving_inversions" function. :-)
> > 
> > It seems it's a different function and you passed a "0xdeadbeef" there,
> > otherwise the function fits.
> > 
> > What means 0xdeadbeef here?
> 
> For a customer I need a moving inversions test with a fixed pattern
> instead of the own address written to the address. That's a leftover
> here.
> 
> I already fixed that one up.
> 

ok, thanks.

I also have some idea to creating a small barebox which do a full
memtest on banks, if the architecture supports it.

E.g. omap which boots from sd card. We have some MLO image. We could
have some switch inside the barebox to build a MLO image which
automatically starts the memtest after setup memory.

I don't know how possible that is and if MLO have the necessary things
inside like "memory bank registration", etc. to make a memory test possible.
Also if everything fits then in the MLO with the memtest command.

Over Kconfig there exists then some switch to enable this behaviour and
also setup the arguments for memtest which should automatically started
inside the MLO. A MLO for memory-testing, something like that.


Just an idea for somebody which wants a "full" memory test.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
