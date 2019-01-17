Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkFoR-0005YQ-2X
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 22:07:00 +0000
Date: Thu, 17 Jan 2019 23:06:56 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190117220656.GC12259@ravnborg.org>
References: <20190117063840.13674-1-andrew.smirnov@gmail.com>
 <20190117214039.GA17261@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190117214039.GA17261@ravnborg.org>
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
Subject: Re: [PATCH 00/12] ARM/ARM64 MMU code consolidation, zeroing of DMA
 coherent memory
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 17, 2019 at 10:40:39PM +0100, Sam Ravnborg wrote:
> Hi Andrey.
> 
> > Everyone:
> > 
> > This series is a result of my attempt at changing the behaviour of
> > dma_alloc_coherent() to guarantee that memory it returns is zeroed
> > out. Mostly to avoid having to do that explicitly in driver code, but
> > also to match behaviour that that function has in Linux. While working
> > on that I noticed that there was a fair bit of MMU/DMA related code
> > between ARM/ARM64 that can be shared, so I created a number of patches
> > to do just that.
> > 
> > Feedback is welcome!
> 
> I read all the patches, and due to the nice small incremental patches
> you do (well done!) I could follow them all.
> A few comments and for the rest you can add my "Reviewed-by:" tag.
You can extend this to all patches now.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
