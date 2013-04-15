Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22e.google.com ([2a00:1450:4013:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1URiMx-0000Ym-Nt
 for barebox@lists.infradead.org; Mon, 15 Apr 2013 12:18:48 +0000
Received: by mail-ea0-f174.google.com with SMTP id m14so2131123eaj.5
 for <barebox@lists.infradead.org>; Mon, 15 Apr 2013 05:18:45 -0700 (PDT)
Date: Mon, 15 Apr 2013 14:20:44 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130415122043.GA3750@x61s.campuswlan.hs-rm.de>
References: <1365679699-4475-1-git-send-email-j.weitzel@phytec.de>
 <20130412150353.GR1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130412150353.GR1906@pengutronix.de>
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
Subject: Re: [RFC] omap4-fb: use uncached screen_base
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On Fri, Apr 12, 2013 at 05:03:53PM +0200, Sascha Hauer wrote:
> Hi Jan,
> 
> On Thu, Apr 11, 2013 at 01:28:19PM +0200, Jan Weitzel wrote:
> > If the buffer is cached the image on the LCD is broken. Only some small
> > lines on the last rows. Flushing the cache "repairs" the image.
> > 
> > Is remap_range the right way to get a non cached buffer?
> 
> I think using this is ok for now, at least when the driver is ARM
> specific, which the omap fb driver is. We do not have a propert API
> for this kind of stuff and I currently have no idea how such an API
> would look like.
> 
> You should make sure though that pdata->screen->start and the screen
> size are page aligned.
> 
> > This patch only covers prealloc_screen, not dynamic
> > If the buffer is dynamic, is the use of dma_alloc_coherent right?
> 
> correct.
> 
> > Or should
> > the buffer remaped again if freed?
> 
> ideally it should, at least when the screen is passed via platform data.
> Anyway, when you pass it via platform_data then you normally do it to
> preserve the screen during kernel start, so I wouldn't free it in this
> case.
> 
maybe we check the page table flags on freeing a resource and restore
them to the "defaults"..., but we need to do this in an api which works
for all architectures.

Regards
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
