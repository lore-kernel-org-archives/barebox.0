Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZrK3u-0006Zt-Bo
 for barebox@lists.infradead.org; Wed, 28 Oct 2015 06:18:19 +0000
Date: Wed, 28 Oct 2015 07:17:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151028061755.GP25308@pengutronix.de>
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
To: Alexander Aring <alex.aring@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Oct 27, 2015 at 05:55:04PM +0100, Alexander Aring wrote:
> On Tue, Oct 27, 2015 at 09:29:53AM +0100, Sascha Hauer wrote:
> > This series has some updates for the memory test. The output and the
> > code are made more compact and some additional options are added. Also
> > the remap_range function is reworked.
> > 
> 
> I currently try to build next with memtest, I got the following issue:
> 
> commands/memtest.c: In function 'do_test_one_area':
> commands/memtest.c:50:2: error: implicit declaration of function 'mem_test_moving_inversions_pattern' [-Werror=implicit-function-declaration]
>   ret = mem_test_moving_inversions_pattern(r->r->start, r->r->end, 0xdeadbeef);
> 
> after running grep I realized and there is no
> "mem_test_moving_inversions_pattern" function. :-(
> 
> Then:
> 
> after cutting some words from this function and running grep again, then
> I found a "mem_test_moving_inversions" function. :-)
> 
> It seems it's a different function and you passed a "0xdeadbeef" there,
> otherwise the function fits.
> 
> What means 0xdeadbeef here?

For a customer I need a moving inversions test with a fixed pattern
instead of the own address written to the address. That's a leftover
here.

I already fixed that one up.

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
