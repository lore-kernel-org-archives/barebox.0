Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkFsj-00076V-Bc
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 22:11:26 +0000
Date: Thu, 17 Jan 2019 23:11:20 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190117221120.GA18189@ravnborg.org>
References: <20190117063840.13674-1-andrew.smirnov@gmail.com>
 <20190117063840.13674-13-andrew.smirnov@gmail.com>
 <20190117213648.GC4532@ravnborg.org>
 <CAHQ1cqGXQEzxNZu-ndwVidD+7-mNywknXiUQ9A2=zBMxZ0Mo_A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGXQEzxNZu-ndwVidD+7-mNywknXiUQ9A2=zBMxZ0Mo_A@mail.gmail.com>
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
Subject: Re: [PATCH 12/12] ARM: mmu: Make sure DMA coherent memory is zeroed
 out
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

> > > +     unsigned long end = start + size - 1;
> > > +
> > > +     v8_flush_dcache_range(start, end);
> > > +}
> > We should use the existing indirection with struct cache_fns
> > here, then we could share the code.
> 
> AArch64 used to use struct cache_fns, but that approach was decided
> against in 4b57aae26c0ada3139ccb1011bdcbd88dc7e1a91 ("ARM: Create own
> cache.c file for aarch64") by Sascha. My interpretation of it is that
> adding struct cache_fns back would not be particularly welcome, but I
> am more that happy to do it if told otherwise.
To be clear - my comments was based on the wrogn assumption
that we had cache_fns for 64 bit.
As long as we do not see a v9 (do not follow ARM) then I see no
reason for adding the extra indirection / complexity.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
