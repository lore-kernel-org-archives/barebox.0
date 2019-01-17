Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkFnn-0005SN-6q
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 22:06:20 +0000
Date: Thu, 17 Jan 2019 23:06:16 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190117220616.GB12259@ravnborg.org>
References: <20190117063840.13674-1-andrew.smirnov@gmail.com>
 <20190117063840.13674-9-andrew.smirnov@gmail.com>
 <20190117212339.GA4532@ravnborg.org>
 <CAHQ1cqEuppxED3KNjw08eg5QzBG5tjnPk6uAk-L2QYresOdHmg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqEuppxED3KNjw08eg5QzBG5tjnPk6uAk-L2QYresOdHmg@mail.gmail.com>
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
Subject: Re: [PATCH 08/12] ARM: mmu: Share code for dma_alloc_coherent()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 17, 2019 at 01:54:46PM -0800, Andrey Smirnov wrote:
> On Thu, Jan 17, 2019 at 1:23 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> >
> > Hi Andrey.
> >
> > On Wed, Jan 16, 2019 at 10:38:36PM -0800, Andrey Smirnov wrote:
> > > Both ARM and ARM64 implement almost identical algorithms in
> > > dma_alloc_coherent(). Move the code to mmu-common.c, so it can be
> > > shared.
> > >
> > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > > ---
> > >  arch/arm/cpu/mmu-common.c | 21 +++++++++++++++++++++
> > >  arch/arm/cpu/mmu-common.h |  7 +++++++
> > We already have rch/arm/cpu/mmu.h, wait is the benefit of the extra header file?
> 
> Arch/arm/cpu/mmu.h is a 32-bit specific file that is not used on
> AArch64, which has its own counterpart in arch/arm/cpu/mmu_64.h.
> Mmu-common.h contains the bits that are shared between the two
> architectures.

I have only looked at 32bit so far, so missed that mmu.h was only 32bit.
With this in mind mmu-common.h makes good sense.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
