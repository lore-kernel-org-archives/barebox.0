Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp10.mail.ru ([94.100.176.152])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TUAg5-0007fj-QC
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 06:24:27 +0000
Date: Fri, 2 Nov 2012 10:24:19 +0400
From: Alexander Shiyan <shc_work@mail.ru>
Message-Id: <20121102102419.52e6cc0269ae07ef1b3ff26d@mail.ru>
In-Reply-To: <20121101073251.GS1641@pengutronix.de>
References: <1351613312-4506-1-git-send-email-shc_work@mail.ru>
 <20121031213608.GR1641@pengutronix.de>
 <20121101092038.0b71630228ecac770b8b1128@mail.ru>
 <20121101073251.GS1641@pengutronix.de>
Mime-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 1/3] ARM: Add CLPS711X architecture
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 1 Nov 2012 08:32:51 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Nov 01, 2012 at 09:20:38AM +0400, Alexander Shiyan wrote:
> > On Wed, 31 Oct 2012 22:36:08 +0100
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > 
> > ...
> > > > +
> > > > +	asm("mov pc, #0");
> > > 
> > > Or is it because you do not have a real reset function and have to jump
> > > through zero instead? Still common_reset() shouldn't be necessary. What
> > Yes.
> > > you may have to do here is to make sure the MMU is disabled and caches
> > > are flushed.
> > Yes. This call was be added for do it.
> > I may replace entrie function by calling start(). Is it a better way()?
> 
> arch_shutdown() should do it.
Well, if there are no more comments for this series, I will create a v4 with
one more forgotten fix for serial driver (IS_ERR clock check).

-- 
Alexander Shiyan <shc_work@mail.ru>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
