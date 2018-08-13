Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpDeX-0006vI-Uz
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 14:17:07 +0000
Received: by mail-it0-x243.google.com with SMTP id 72-v6so13303305itw.3
 for <barebox@lists.infradead.org>; Mon, 13 Aug 2018 07:16:51 -0700 (PDT)
MIME-Version: 1.0
References: <20180810185201.7677-1-andrew.smirnov@gmail.com>
 <20180813064144.7ocirutuvzltrrmn@pengutronix.de>
In-Reply-To: <20180813064144.7ocirutuvzltrrmn@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 13 Aug 2018 07:16:38 -0700
Message-ID: <CAHQ1cqGxbA5jpdSDznAFBeUpcdESnkxMabY9XQKMkXDGc+F5=g@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: lib64: Properly handle unaligned addresses in string
 functions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Aug 12, 2018 at 11:41 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Fri, Aug 10, 2018 at 11:52:01AM -0700, Andrey Smirnov wrote:
> > Together FEC driver and parts of IP stack might end up trying to
> > memcpy() small chunks of memory from uncached (that is Device memory)
> > addresses that are not properly aligned, leading to data abort.
> >
> > To prevent such cases, add code to guard unaligned accesses and
> > redirect them to byte-wise implementations which do not have the above
> > problem.
>
> Please no. IMO this problem only shows that the FEC driver shouldn't use
> dma_alloc_coherent() to allocate its receive buffers, but instead should
> use dma_alloc + dma_sync_*.

OK, will work on that approach in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
