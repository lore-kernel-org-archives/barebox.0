Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x230.google.com ([2a00:1450:400c:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zr82e-00054k-4P
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 17:28:12 +0000
Received: by wicfx6 with SMTP id fx6so169848568wic.1
 for <barebox@lists.infradead.org>; Tue, 27 Oct 2015 10:27:50 -0700 (PDT)
Date: Tue, 27 Oct 2015 18:27:43 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20151027172742.GA8942@omega>
References: <1445934602-25903-1-git-send-email-s.hauer@pengutronix.de>
 <20151027165459.GA4592@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151027165459.GA4592@omega>
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

On Tue, Oct 27, 2015 at 05:54:59PM +0100, Alexander Aring wrote:
> On Tue, Oct 27, 2015 at 09:29:53AM +0100, Sascha Hauer wrote:
> > This series has some updates for the memory test. The output and the
> > code are made more compact and some additional options are added. Also
> > the remap_range function is reworked.
> > 
> 
...
> 
> What means 0xdeadbeef here?

okay, I it's guess the pattern argument which doesn't exist anymore.

I run memtest now with:

memtest -t -u

on the RPi and it seems the first progressbar range of "0/3" - "1/3" runs
faster than the last range of "1/3" - "3/3".

This sounds like that remap_range does not full manipulate the range
of page tables (the range at the start address). Okay we can't full use
the range, because we need to be PAGE_ALIGN, but the whole first range of
"0/3" - "1/3" sounds not correct for me (it's bigger than PAGE_ALIGN).

Maybe everything is correct and the first address room is always a
little bit faster than the others, but I don't think that.

I haven't tried to debug this issue. Can somebody confirm that on an
other arm board?

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
