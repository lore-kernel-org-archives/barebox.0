Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkFct-0000fN-O4
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 21:55:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id d15so2670446wmb.3
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 13:54:59 -0800 (PST)
MIME-Version: 1.0
References: <20190117063840.13674-1-andrew.smirnov@gmail.com>
 <20190117063840.13674-9-andrew.smirnov@gmail.com>
 <20190117212339.GA4532@ravnborg.org>
In-Reply-To: <20190117212339.GA4532@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 13:54:46 -0800
Message-ID: <CAHQ1cqEuppxED3KNjw08eg5QzBG5tjnPk6uAk-L2QYresOdHmg@mail.gmail.com>
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
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 17, 2019 at 1:23 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Andrey.
>
> On Wed, Jan 16, 2019 at 10:38:36PM -0800, Andrey Smirnov wrote:
> > Both ARM and ARM64 implement almost identical algorithms in
> > dma_alloc_coherent(). Move the code to mmu-common.c, so it can be
> > shared.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/cpu/mmu-common.c | 21 +++++++++++++++++++++
> >  arch/arm/cpu/mmu-common.h |  7 +++++++
> We already have rch/arm/cpu/mmu.h, wait is the benefit of the extra header file?

Arch/arm/cpu/mmu.h is a 32-bit specific file that is not used on
AArch64, which has its own counterpart in arch/arm/cpu/mmu_64.h.
Mmu-common.h contains the bits that are shared between the two
architectures.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
